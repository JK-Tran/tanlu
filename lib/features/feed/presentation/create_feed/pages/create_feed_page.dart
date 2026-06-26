import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/loading_overlay.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/bloc/create_feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/pages/media_picker_page.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/widgets/create_feed_body.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/widgets/create_feed_submit_bar.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';

class CreateFeedPage extends StatefulWidget {
  const CreateFeedPage({super.key});

  @override
  State<CreateFeedPage> createState() => _CreateFeedPageState();
}

class _CreateFeedPageState
    extends BasePageState<CreateFeedPage, CreateFeedBloc> {
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();

    final user = context.read<AppBloc>().currentUser;
    bloc.add(
      CreateFeedStarted(
        authorId: user?.id ?? '',
        fullName: user?.fullName ?? '',
        avatar: user?.avatar ?? '',
        role: user?.role ?? '',
        classId: user?.classId ?? '',
        centerId: user?.centerId ?? '',
      ),
    );
  }

  @override
  void dispose() {
    _contentController.dispose();
    bloc.close();
    super.dispose();
  }

  int _imageCount(CreateFeedState state) =>
      state.localMedia.where((item) => !item.isVideo).length;

  int _videoCount(CreateFeedState state) =>
      state.localMedia.where((item) => item.isVideo).length;

  Future<void> _openMediaLibrary() async {
    if (bloc.state.isSubmitting) return;

    final state = bloc.state;
    final remainingImages = AppMediaLimit.maxImagesPerPost - _imageCount(state);
    final remainingVideos = AppMediaLimit.maxVideosPerPost - _videoCount(state);

    if (remainingImages <= 0 && remainingVideos <= 0) {
      AppSnackbar.show(
        context,
        message:
            'Đã đủ ${AppMediaLimit.maxImagesPerPost} ảnh và '
            '${AppMediaLimit.maxVideosPerPost} video',
        type: AppSnackbarType.warning,
      );
      return;
    }

    final items = await MediaPickerPage.open(
      context,
      maxImages: remainingImages,
      maxVideos: remainingVideos,
    );

    if (items == null || items.isEmpty || !mounted) return;

    bloc.add(CreateFeedMediaPicked(items: items));
  }

  void _submit() {
    bloc.add(const CreateFeedSubmitted());
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<CreateFeedBloc, CreateFeedState>(
      listenWhen: (prev, curr) =>
          (prev.onPageError != curr.onPageError &&
              curr.onPageError.isNotEmpty) ||
          prev.submitSuccess != curr.submitSuccess,
      listener: (context, state) {
        if (state.onPageError.isNotEmpty) {
          AppSnackbar.show(
            context,
            message: state.onPageError,
            type: AppSnackbarType.error,
          );
        }
        if (state.submitSuccess == true) {
          context.pop(state.isPublic);
        }
      },
      builder: (context, state) {
        final canSubmit = state.isSubmitButtonEnabled && !state.isSubmitting;

        return PopScope(
          canPop: !state.isSubmitting,
          child: Stack(
            children: [
              Scaffold(
                backgroundColor: AppColors.grayBg,
                appBar: FeedAppBar(
                  showBack: true,
                  backEnabled: !state.isSubmitting,
                  title: 'Tạo bài viết',
                ),
                body: Column(
                  children: [
                    Expanded(
                      child: CreateFeedBody(
                        state: state,
                        contentController: _contentController,
                        onContentChanged: (value) =>
                            bloc.add(CreateFeedContentChanged(content: value)),
                        onOpenMediaLibrary: _openMediaLibrary,
                        onRemoveMedia: (index) =>
                            bloc.add(CreateFeedMediaRemoved(index: index)),
                        onPublicChanged: (value) => bloc.add(
                          CreateFeedIsPublicChanged(isPublic: value),
                        ),
                      ),
                    ),
                    CreateFeedSubmitBar(
                      canSubmit: canSubmit,
                      isSubmitting: state.isSubmitting,
                      onSubmit: _submit,
                    ),
                  ],
                ),
              ),
              if (state.isSubmitting)
                const Positioned.fill(child: LoadingOverlay()),
            ],
          ),
        );
      },
    );
  }
}
