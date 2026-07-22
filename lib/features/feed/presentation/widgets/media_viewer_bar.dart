import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// Thanh trên cố định cho màn xem ảnh / video full màn.
class MediaViewerBar extends StatelessWidget {
  const MediaViewerBar({
    super.key,
    required this.onClose,
    this.counterLabel,
    this.onDownload,
    this.isDownloading = false,
  });

  final VoidCallback onClose;
  final String? counterLabel;
  final VoidCallback? onDownload;
  final bool isDownloading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      child: Row(
        children: [
          IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close_rounded, color: AppColors.white),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.black.withValues(alpha: 0.5),
            ),
          ),
          const Spacer(),
          if (counterLabel != null)
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                child: AppText.b2(
                  counterLabel!,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          if (onDownload != null) ...[
            SizedBox(width: 8.w),
            IconButton(
              onPressed: isDownloading ? null : onDownload,
              icon: isDownloading
                  ? SizedBox(
                      width: 20.w,
                      height: 20.w,
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                        color: AppColors.white,
                      ),
                    )
                  : const Icon(Icons.download_rounded, color: AppColors.white),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.black.withValues(alpha: 0.5),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
