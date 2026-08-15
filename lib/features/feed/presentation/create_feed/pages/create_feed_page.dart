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
import 'package:tanlu_management/core/widgets/main_app_bar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

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
        authorId: user?.id ?? 0,
        fullName: user?.fullName ?? '',
        avatar: user?.avatarUrl ?? '',
        role: user?.role ?? '',
        classId: user?.classId ?? 0,
        centerId: user?.centerId ?? 0,
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
            '${context.l10n.feedOnlyMaxImagesAnd(AppMediaLimit.maxImagesPerPost)}'
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
                appBar: MainAppBar(
                  showBack: true,
                  backEnabled: !state.isSubmitting,
                  title: context.l10n.feedCreatePost,
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
