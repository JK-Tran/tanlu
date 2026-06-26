import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_surface_card.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/bloc/create_feed_bloc.dart';

class CreateFeedBody extends StatelessWidget {
  const CreateFeedBody({
    super.key,
    required this.state,
    required this.contentController,
    required this.onContentChanged,
    required this.onOpenMediaLibrary,
    required this.onRemoveMedia,
    required this.onPublicChanged,
  });

  final CreateFeedState state;
  final TextEditingController contentController;
  final ValueChanged<String> onContentChanged;
  final VoidCallback onOpenMediaLibrary;
  final ValueChanged<int> onRemoveMedia;
  final ValueChanged<bool> onPublicChanged;

  String get _classLabel {
    if (state.classId.isEmpty) return 'Chưa gán lớp';
    if (state.isLoadingClassName) return 'Đang tải lớp...';
    if (state.className.isNotEmpty) return state.className;
    return 'Lớp của tôi';
  }

  @override
  Widget build(BuildContext context) {
    final enabled = !state.isSubmitting;
    final hasMedia = state.localMedia.isNotEmpty;
    final canAddMore = _canAddMoreMedia(state);

    return ListView(
      padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 12.h),
      children: [
        AppSurfaceCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppText.b1(
                'Đăng cho',
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.grayDark,
              ),
              SizedBox(height: 8.h),
              _TargetSelector(
                classLabel: _classLabel,
                avatar: state.avatar,
                fullName: state.fullName,
              ),
              SizedBox(height: 12.h),
              _BorderedTextField(
                controller: contentController,
                enabled: enabled,
                onChanged: onContentChanged,
              ),
              SizedBox(height: 12.h),
              if (hasMedia)
                _MediaStrip(
                  media: state.localMedia,
                  canAddMore: canAddMore,
                  enabled: enabled,
                  onOpenLibrary: onOpenMediaLibrary,
                  onRemove: onRemoveMedia,
                )
              else
                _LibraryButton(enabled: enabled, onTap: onOpenMediaLibrary),
              SizedBox(height: 12.h),
              Divider(
                height: 1,
                color: AppColors.grayLight.withValues(alpha: 0.6),
              ),
              _SettingSwitch(
                label: 'Công khai trên Khám phá',
                value: state.isPublic,
                enabled: enabled,
                onChanged: onPublicChanged,
              ),
            ],
          ),
        ),
      ],
    );
  }

  bool _canAddMoreMedia(CreateFeedState state) {
    final images = state.localMedia.where((item) => !item.isVideo).length;
    final videos = state.localMedia.where((item) => item.isVideo).length;
    return images < AppMediaLimit.maxImagesPerPost ||
        videos < AppMediaLimit.maxVideosPerPost;
  }
}

class _TargetSelector extends StatelessWidget {
  const _TargetSelector({
    required this.classLabel,
    required this.avatar,
    required this.fullName,
  });

  final String classLabel;
  final String avatar;
  final String fullName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.grayLight.withValues(alpha: 0.8)),
      ),
      child: Row(
        children: [
          AttendanceAvatar(
            nickname: fullName,
            imageUrl: avatar.isEmpty ? null : avatar,
            size: 28,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: AppText.b1(
              classLabel,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grayDark,
              maxLines: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _BorderedTextField extends StatelessWidget {
  const _BorderedTextField({
    required this.controller,
    required this.enabled,
    required this.onChanged,
  });

  final TextEditingController controller;
  final bool enabled;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.grayLight.withValues(alpha: 0.8)),
      ),
      child: TextField(
        controller: controller,
        maxLines: 15,
        minLines: 12,
        enabled: enabled,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Bạn đang nghĩ gì?',
          hintStyle: TextStyle(color: AppColors.grayMedium, fontSize: 12.sp),
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8.h),
        ),
        style: TextStyle(
          color: AppColors.grayDark,
          fontSize: 12.sp,
          height: 1.45,
        ),
      ),
    );
  }
}

class _LibraryButton extends StatelessWidget {
  const _LibraryButton({required this.enabled, required this.onTap});

  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppSurfaceCard.decoration(
        backgroundColor: enabled ? AppColors.white : AppColors.grayVeryLight,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(8.r),
          splashColor: AppColors.primary.withValues(alpha: 0.12),
          highlightColor: AppColors.grayVeryLight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.photo_on_rectangle,
                  size: 18.w,
                  color: enabled ? AppColors.success : AppColors.grayLight,
                ),
                SizedBox(width: 6.w),
                AppText.b2(
                  'Thư viện ảnh',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: enabled ? AppColors.grayDark : AppColors.grayMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MediaStrip extends StatelessWidget {
  const _MediaStrip({
    required this.media,
    required this.canAddMore,
    required this.enabled,
    required this.onOpenLibrary,
    required this.onRemove,
  });

  final List<CreateFeedLocalMedia> media;
  final bool canAddMore;
  final bool enabled;
  final VoidCallback onOpenLibrary;
  final ValueChanged<int> onRemove;

  @override
  Widget build(BuildContext context) {
    final itemCount = media.length + (canAddMore ? 1 : 0);

    return SizedBox(
      height: 72.w,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        separatorBuilder: (context, _) => SizedBox(width: 8.w),
        itemBuilder: (context, index) {
          if (canAddMore && index == itemCount - 1) {
            return _AddMediaTile(enabled: enabled, onTap: onOpenLibrary);
          }

          final item = media[index];
          return _MediaThumb(
            path: item.path,
            isVideo: item.isVideo,
            onRemove: () => onRemove(index),
          );
        },
      ),
    );
  }
}

class _MediaThumb extends StatelessWidget {
  const _MediaThumb({
    required this.path,
    required this.isVideo,
    required this.onRemove,
  });

  final String path;
  final bool isVideo;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.w,
      height: 72.w,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: isVideo
                ? ColoredBox(
                    color: AppColors.mediaVideoLight,
                    child: Icon(
                      Icons.play_circle_outline_rounded,
                      size: 28.w,
                      color: AppColors.mediaVideo,
                    ),
                  )
                : Image.file(File(path), fit: BoxFit.cover),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: Material(
              color: AppColors.black.withValues(alpha: 0.6),
              shape: const CircleBorder(),
              child: InkWell(
                onTap: onRemove,
                customBorder: const CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Icon(Icons.close, size: 12.w, color: AppColors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AddMediaTile extends StatelessWidget {
  const _AddMediaTile({required this.enabled, required this.onTap});

  final bool enabled;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.w,
      height: 72.w,
      child: Material(
        color: AppColors.grayVeryLight,
        borderRadius: BorderRadius.circular(8.r),
        child: InkWell(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(8.r),
          splashColor: AppColors.primary.withValues(alpha: 0.1),
          highlightColor: AppColors.primary.withValues(alpha: 0.06),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 22.w,
                color: enabled ? AppColors.grayMedium : AppColors.grayLight,
              ),
              AppText.b2('Thêm', fontSize: 10.sp, color: AppColors.grayMedium),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingSwitch extends StatelessWidget {
  const _SettingSwitch({
    required this.label,
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  final String label;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      contentPadding: EdgeInsets.zero,
      value: value,
      onChanged: enabled ? onChanged : null,
      activeThumbColor: AppColors.success,
      activeTrackColor: AppColors.success.withValues(alpha: 0.35),
      title: AppText.b1(
        label,
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: AppColors.grayDark80,
      ),
    );
  }
}
