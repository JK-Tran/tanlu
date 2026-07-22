import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/bloc/feed_detail_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_detail_action_sheet.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_detail_body.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_input_bar.dart';
import 'package:tanlu_management/shared/di/di.dart';

class FeedDetailPage extends StatefulWidget {
  const FeedDetailPage({
    super.key,
    this.feed,
    this.postId,
    this.openComments = false,
    this.highlightCommentId,
  });

  final FeedPost? feed;
  final int? postId;
  final bool openComments;
  final int? highlightCommentId;

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  late final FeedDetailBloc _bloc;
  final _scrollController = ScrollController();
  final _commentController = TextEditingController();
  final _focusNode = FocusNode();
  FeedComment? _replyToComment;

  @override
  void initState() {
    super.initState();
    _bloc = sl<FeedDetailBloc>();
    final user = context.read<AppBloc>().currentUser;

    _bloc.add(
      FeedDetailStarted(
        feed: widget.feed,
        postId: widget.postId,
        viewerUserId: user?.id ?? 0,
        viewerFullName: user?.fullName ?? '',
        viewerAvatar: user?.avatarUrl ?? '',
        viewerRole: user?.role ?? '',
        openComments: widget.openComments,
        highlightCommentId: widget.highlightCommentId,
      ),
    );
  }

  Future<void> _confirmDeleteFeed() async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Xóa bài viết',
      content: 'Bài viết sẽ bị xóa và không hiển thị trên bảng tin.',
      confirmLabel: 'Xóa',
      type: AppConfirmDialogType.warning,
    );
    if (confirmed != true || !mounted) return;

    _bloc.add(const FeedDetailDeleteFeed());
  }

  void _showFeedActions() {
    FeedDetailActionSheet.show(context, onDelete: _confirmDeleteFeed);
  }

  void _cancelReply() {
    setState(() {
      _replyToComment = null;
    });
  }

  void _submitComment() {
    final text = _commentController.text.trim();
    if (text.isEmpty) return;

    _bloc.add(
      FeedDetailSubmitComment(content: text, parentId: _replyToComment?.id),
    );
    _commentController.clear();
    _cancelReply();
    _focusNode.unfocus();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _commentController.dispose();
    _focusNode.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppBloc>().currentUser;

    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<FeedDetailBloc, FeedDetailState>(
        listenWhen: (prev, curr) =>
            (prev.errorMessage != curr.errorMessage &&
                curr.errorMessage.isNotEmpty) ||
            (!prev.feedDeleted && curr.feedDeleted) ||
            // Sau khi submit comment xong → scroll xuống cuối
            (prev.isSubmittingComment && !curr.isSubmittingComment),
        listener: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            AppSnackbar.show(
              context,
              message: state.errorMessage,
              type: AppSnackbarType.error,
            );
          }

          if (state.feedDeleted) {
            context.pop(true);
            return;
          }

          // Scroll xuống cuối sau khi comment được gửi thành công
          if (!state.isSubmittingComment && _scrollController.hasClients) {
            Future.delayed(const Duration(milliseconds: 300), () {
              if (mounted && _scrollController.hasClients) {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOut,
                );
              }
            });
          }
        },
        builder: (context, state) {
          final feed = state.feed ?? widget.feed;
          final isFeedAuthor = feed != null
              ? user?.id == feed.author?.id
              : false;

          return Scaffold(
            backgroundColor: AppColors.grayBg,
            appBar: FeedAppBar(
              showBack: true,
              onBack: () => context.pop(state.feed),
              title: 'Chi tiết bài viết',
              trailing: isFeedAuthor
                  ? AppIconButton(
                      icon: Icons.more_horiz_rounded,
                      iconColor: AppColors.grayDark,
                      backgroundColor: AppColors.grayVeryLight,
                      size: 40,
                      borderRadius: 12,
                      onPressed: _showFeedActions,
                    )
                  : null,
            ),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                children: [
                  Expanded(
                    child: state.isLoadingFeed
                        ? const Center(child: CircularProgressIndicator())
                        : feed == null
                            ? const Center(child: Text('Không tìm thấy bài viết'))
                            : FeedDetailBody(
                                scrollController: _scrollController,
                                feed: feed,
                                highlightCommentId: widget.highlightCommentId,
                                onMoreTap: isFeedAuthor ? _showFeedActions : null,
                                onCommentTap: () => _focusNode.requestFocus(),
                                onReplyTap: (comment) {
                                  setState(() {
                                    _replyToComment = comment;
                                    _focusNode.requestFocus();
                                  });
                                },
                              ),
                  ),
                  CommentInputBar(
                    controller: _commentController,
                    focusNode: _focusNode,
                    avatarName: state.viewerFullName,
                    avatarUrl: state.viewerAvatar,
                    isSubmitting: state.isSubmittingComment,
                    replyToName: _replyToComment?.author?.fullName,
                    replyToContent: _replyToComment?.content,
                    onCancelReply: _cancelReply,
                    onSubmit: _submitComment,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
