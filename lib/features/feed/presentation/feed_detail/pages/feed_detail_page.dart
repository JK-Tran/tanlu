import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/bloc/feed_detail_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_actions_sheet.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_comment_input_bar.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_detail_body.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';

class FeedDetailPage extends StatefulWidget {
  const FeedDetailPage({
    super.key,
    required this.feed,
    this.openComments = false,
  });

  final Feed feed;
  final bool openComments;

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  late final FeedDetailBloc _bloc;
  final _commentsKey = GlobalKey();
  final _scrollController = ScrollController();
  final _commentController = TextEditingController();
  final _commentFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _bloc = sl<FeedDetailBloc>();
    final user = context.read<AppBloc>().currentUser;

    _bloc.add(
      FeedDetailStarted(
        feed: widget.feed,
        viewerUserId: user?.id ?? '',
        fullName: user?.fullName ?? '',
        avatar: user?.avatar ?? '',
        role: user?.role ?? '',
        openComments: widget.openComments,
      ),
    );

    if (widget.openComments) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollToComments();
        _commentFocusNode.requestFocus();
      });
    }
  }

  void _scrollToComments() {
    final target = _commentsKey.currentContext;
    if (target == null) return;

    Scrollable.ensureVisible(
      target,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _submitInput() {
    final content = _commentController.text;
    if (content.trim().isEmpty) return;

    final state = _bloc.state;
    if (state.editingCommentId != null) {
      _bloc.add(FeedDetailUpdateComment(content: content));
    } else {
      _bloc.add(FeedDetailSubmitComment(content: content));
    }

    _commentController.clear();
    _commentFocusNode.requestFocus();
  }

  void _focusCommentInput() {
    _scrollToComments();
    _commentFocusNode.requestFocus();
  }

  Comment? _findComment(List<Comment> comments, String id) {
    for (final comment in comments) {
      if (comment.id == id) return comment;
      final nested = _findComment(comment.replies, id);
      if (nested != null) return nested;
    }
    return null;
  }

  Future<void> _confirmDeleteComment(Comment comment) async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Xóa bình luận',
      content: 'Bạn có chắc muốn xóa bình luận này?',
      confirmLabel: 'Xóa',
      type: AppConfirmDialogType.warning,
    );
    if (confirmed != true || !mounted) return;

    _bloc.add(FeedDetailDeleteComment(commentId: comment.id));
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
    FeedActionsSheet.show(context, onDelete: _confirmDeleteFeed);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _commentController.dispose();
    _commentFocusNode.dispose();
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppBloc>().currentUser;
    final canInteract = user != null;

    return BlocProvider.value(
      value: _bloc,
      child: BlocConsumer<FeedDetailBloc, FeedDetailState>(
        listenWhen: (prev, curr) =>
            (prev.errorMessage != curr.errorMessage &&
                curr.errorMessage.isNotEmpty) ||
            prev.editingCommentId != curr.editingCommentId ||
            (!prev.feedDeleted && curr.feedDeleted),
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

          final editingId = state.editingCommentId;
          if (editingId != null) {
            final comment = _findComment(state.comments, editingId);
            if (comment != null) {
              _commentController.text = comment.content;
              _scrollToComments();
              _commentFocusNode.requestFocus();
            }
          } else if (_commentController.text.isNotEmpty) {
            _commentController.clear();
          }
        },
        builder: (context, state) {
          final feed = state.feed ?? widget.feed;
          final allowComments = feed.allowComments;
          final inputEnabled = canInteract && allowComments;
          final isEditing = state.editingCommentId != null;
          final isFeedAuthor = user?.id == feed.author.id;

          return Scaffold(
            backgroundColor: AppColors.grayBg,
            appBar: FeedAppBar(
              showBack: true,
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
            body: FeedDetailBody(
              scrollController: _scrollController,
              commentsKey: _commentsKey,
              feed: feed,
              comments: state.comments,
              viewerUserId: user?.id ?? '',
              isLoadingComments: state.isLoadingComments,
              canInteract: canInteract,
              onLikeTap: canInteract
                  ? () => _bloc.add(const FeedDetailToggleLike())
                  : null,
              onCommentTap: _focusCommentInput,
              onMoreTap: isFeedAuthor ? _showFeedActions : null,
              onReply: inputEnabled
                  ? (comment) {
                      _bloc.add(
                        FeedDetailReplyToComment(
                          commentId: comment.id,
                          authorName: comment.author.fullName,
                          commentContent: comment.content,
                        ),
                      );
                      _commentFocusNode.requestFocus();
                    }
                  : null,
              onCommentLike: canInteract
                  ? (comment) => _bloc.add(
                      FeedDetailToggleCommentLike(commentId: comment.id),
                    )
                  : null,
              onCommentEdit: canInteract
                  ? (comment) => _bloc.add(
                      FeedDetailStartEditComment(commentId: comment.id),
                    )
                  : null,
              onCommentDelete: canInteract ? _confirmDeleteComment : null,
            ),
            bottomNavigationBar: FeedCommentInputBar(
              controller: _commentController,
              focusNode: _commentFocusNode,
              avatarName: user?.fullName ?? 'Bạn',
              avatarUrl: user?.avatar,
              replyToName: isEditing || state.replyToName.isEmpty
                  ? null
                  : state.replyToName,
              replyToContent: isEditing || state.replyToContent.isEmpty
                  ? null
                  : state.replyToContent,
              editingLabel: isEditing ? 'Sửa bình luận' : null,
              enabled: inputEnabled,
              isSubmitting: state.isSubmittingComment,
              hintText: !allowComments
                  ? 'Bài viết đã tắt bình luận'
                  : isEditing
                  ? 'Sửa nội dung...'
                  : 'Viết bình luận...',
              onCancelReply: state.replyParentId == null
                  ? null
                  : () => _bloc.add(const FeedDetailCancelReply()),
              onCancelEdit: isEditing
                  ? () => _bloc.add(const FeedDetailCancelEditComment())
                  : null,
              onSubmit: inputEnabled ? _submitInput : null,
            ),
          );
        },
      ),
    );
  }
}
