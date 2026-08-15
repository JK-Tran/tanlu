import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/bloc/create_feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/pages/ios_feed_media_picker.dart';
import 'package:tanlu_management/core/widgets/main_app_bar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

/// Chọn media khi tạo bài viết.
///
/// - **iOS:** grid thư viện trong app ([IosFeedMediaPicker]).
/// - **Android:** Photo Picker hệ thống + màn preview (tuân thủ Google Play).
class MediaPickerPage extends StatefulWidget {
  const MediaPickerPage({
    super.key,
    required this.maxImages,
    required this.maxVideos,
  });

  final int maxImages;
  final int maxVideos;

  static Future<List<CreateFeedLocalMedia>?> open(
    BuildContext context, {
    required int maxImages,
    required int maxVideos,
  }) {
    return IosFeedMediaPicker.pick(
      context,
      maxImages: maxImages,
      maxVideos: maxVideos,
    );
  }

  @override
  State<MediaPickerPage> createState() => _MediaPickerPageState();
}

class _MediaPickerPageState extends State<MediaPickerPage> {
  static final _picker = ImagePicker();
  final _selected = <CreateFeedLocalMedia>[];

  bool _openingPicker = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _openSystemPicker());
  }

  int get _imageCount => _selected.where((item) => !item.isVideo).length;

  int get _videoCount => _selected.where((item) => item.isVideo).length;

  int get _remainingSlots =>
      (widget.maxImages - _imageCount) + (widget.maxVideos - _videoCount);

  Future<void> _openSystemPicker() async {
    if (_openingPicker || _remainingSlots <= 0) return;

    setState(() => _openingPicker = true);

    try {
      final picked = await _picker.pickMultipleMedia(limit: _remainingSlots);

      if (!mounted) return;

      if (picked.isEmpty) {
        if (_selected.isEmpty && mounted) {
          Navigator.of(context).pop();
        }
        return;
      }

      await _mergePicked(picked);
    } finally {
      if (mounted) setState(() => _openingPicker = false);
    }
  }

  Future<void> _mergePicked(List<XFile> picked) async {
    var skippedOversizedVideos = 0;
    var skippedOverLimit = 0;
    var imageCount = _imageCount;
    var videoCount = _videoCount;
    final toAdd = <CreateFeedLocalMedia>[];

    for (final file in picked) {
      final path = file.path;
      if (path.isEmpty) continue;

      final isVideo = _isVideo(file);
      if (isVideo) {
        if (videoCount >= widget.maxVideos) {
          skippedOverLimit++;
          continue;
        }
        final size = await File(path).length();
        if (size > AppMediaLimit.maxVideoBytes) {
          skippedOversizedVideos++;
          continue;
        }
        videoCount++;
      } else {
        if (imageCount >= widget.maxImages) {
          skippedOverLimit++;
          continue;
        }
        imageCount++;
      }

      if (_selected.any((item) => item.path == path)) continue;
      toAdd.add((path: path, isVideo: isVideo));
    }

    if (toAdd.isNotEmpty) {
      setState(() => _selected.addAll(toAdd));
    }

    if (!mounted) return;

    if (skippedOversizedVideos > 0) {
      AppSnackbar.show(
        context,
        message:
            '${context.l10n.feedSkippedOversizedVideos(skippedOversizedVideos)}'
            '${AppMediaLimit.maxVideoMegabytes} MB',
        type: AppSnackbarType.warning,
      );
    }

    if (skippedOverLimit > 0) {
      AppSnackbar.show(
        context,
        message:
            '${context.l10n.feedOnlyMaxImagesAnd(widget.maxImages)}'
            '${widget.maxVideos} video',
        type: AppSnackbarType.info,
      );
    }
  }

  void _removeAt(int index) {
    setState(() => _selected.removeAt(index));
  }

  void _onConfirm() {
    if (_selected.isEmpty) return;
    Navigator.of(context).pop(_selected);
  }

  static bool _isVideo(XFile file) {
    final mime = file.mimeType?.toLowerCase();
    if (mime != null && mime.startsWith('video/')) return true;

    final lower = file.path.toLowerCase();
    return const {
      '.mp4',
      '.mov',
      '.avi',
      '.mkv',
      '.3gp',
      '.webm',
    }.any(lower.endsWith);
  }

  @override
  Widget build(BuildContext context) {
    final canConfirm = _selected.isNotEmpty && !_openingPicker;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: MainAppBar(
        showBack: true,
        title: context.l10n.feedGallery,
        trailing: SizedBox(
          width: 72.w,
          child: TextButton(
            onPressed: canConfirm ? _onConfirm : null,
            child: AppText.b1(
              _selected.isEmpty ? context.l10n.feedNext : context.l10n.feedNextWithCount(_selected.length),
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: canConfirm ? AppColors.primary : AppColors.grayMedium,
            ),
          ),
        ),
      ),
      body: _openingPicker && _selected.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 8.h),
                  child: AppText.b2(
                    '${context.l10n.feedSelectMaxImagesInfo(widget.maxImages)}'
                    '${widget.maxVideos} video (≤${AppMediaLimit.maxVideoMegabytes} MB). '
                    '${context.l10n.feedAndroidGalleryInfo}',
                    fontSize: 11.sp,
                    color: AppColors.grayMedium,
                  ),
                ),
                if (_selected.isEmpty)
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.photo_library_outlined,
                              size: 48.sp,
                              color: AppColors.grayMedium,
                            ),
                            SizedBox(height: 12.h),
                            AppText.b2(
                              context.l10n.feedSelectMediaFromGallery,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.grayDark,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8.h),
                            AppText.b2(
                              context.l10n.feedAfterSelectInfo,
                              fontSize: 12.sp,
                              color: AppColors.grayMedium,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 16.h),
                            FilledButton.icon(
                              onPressed: _openingPicker
                                  ? null
                                  : _openSystemPicker,
                              style: FilledButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 12.h,
                                ),
                              ),
                              icon: const Icon(
                                Icons.add_photo_alternate_outlined,
                              ),
                              label: Text(
                                _openingPicker
                                    ? context.l10n.feedOpeningGallery
                                    : context.l10n.feedOpenGalleryBtn,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                else
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6.w,
                        mainAxisSpacing: 6.h,
                      ),
                      itemCount: _selected.length,
                      itemBuilder: (context, index) {
                        final item = _selected[index];
                        return _SelectedTile(
                          path: item.path,
                          isVideo: item.isVideo,
                          order: index + 1,
                          onRemove: () => _removeAt(index),
                        );
                      },
                    ),
                  ),
                if (_selected.isNotEmpty && _remainingSlots > 0)
                  Padding(
                    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                    child: OutlinedButton.icon(
                      onPressed: _openingPicker ? null : _openSystemPicker,
                      icon: const Icon(Icons.add_photo_alternate_outlined),
                      label: Text(
                        _openingPicker ? context.l10n.feedOpeningGallery : context.l10n.feedSelectMoreBtn,
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}

class _SelectedTile extends StatelessWidget {
  const _SelectedTile({
    required this.path,
    required this.isVideo,
    required this.order,
    required this.onRemove,
  });

  final String path;
  final bool isVideo;
  final int order;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: isVideo
              ? ColoredBox(
                  color: AppColors.grayVeryLight,
                  child: Icon(
                    Icons.videocam_rounded,
                    color: AppColors.grayMedium,
                  ),
                )
              : Image.file(File(path), fit: BoxFit.cover),
        ),
        Positioned(
          top: 4,
          left: 4,
          child: CircleAvatar(
            radius: 10.r,
            backgroundColor: AppColors.primary,
            child: AppText.b2(
              '$order',
              fontSize: 10.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        if (isVideo)
          const Center(
            child: Icon(
              Icons.play_circle_fill,
              color: Colors.white70,
              size: 32,
            ),
          ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
            onPressed: onRemove,
            icon: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black54,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, color: Colors.white, size: 16),
            ),
          ),
        ),
      ],
    );
  }
}
