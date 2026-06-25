import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/image_viewer_page.dart';

class FeedMediaGrid extends StatelessWidget {
  const FeedMediaGrid({super.key, required this.images});

  final List<String> images;

  void _openViewer(BuildContext context, int index) {
    ImageViewerPage.open(
      context,
      images: images,
      initialIndex: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox.shrink();

    final count = images.length;
    if (count == 1) {
      return _MediaTile(
        url: images[0],
        aspectRatio: 16 / 9,
        onTap: () => _openViewer(context, 0),
      );
    }

    if (count == 2) {
      return Row(
        children: [
          Expanded(
            child: _MediaTile(
              url: images[0],
              aspectRatio: 1,
              onTap: () => _openViewer(context, 0),
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: _MediaTile(
              url: images[1],
              aspectRatio: 1,
              onTap: () => _openViewer(context, 1),
            ),
          ),
        ],
      );
    }

    final extra = count > 3 ? count - 3 : 0;
    return SizedBox(
      height: 180.h,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: _MediaTile(
              url: images[0],
              onTap: () => _openViewer(context, 0),
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: _MediaTile(
                    url: images[1],
                    onTap: () => _openViewer(context, 1),
                  ),
                ),
                SizedBox(height: 4.h),
                Expanded(
                  child: _MediaTile(
                    url: images[2],
                    overlayText: extra > 0 ? '+$extra' : null,
                    onTap: () => _openViewer(context, 2),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MediaTile extends StatelessWidget {
  const _MediaTile({
    required this.url,
    required this.onTap,
    this.overlayText,
    this.aspectRatio,
  });

  final String url;
  final String? overlayText;
  final double? aspectRatio;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tile = Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.network(
                url,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => ColoredBox(
                  color: AppColors.grayVeryLight,
                  child: Icon(Icons.image_outlined, size: 32.w),
                ),
              ),
              if (overlayText != null)
                ColoredBox(
                  color: Colors.black.withValues(alpha: 0.45),
                  child: Center(
                    child: AppText.h1(
                      overlayText!,
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );

    if (aspectRatio == null) return tile;
    return AspectRatio(aspectRatio: aspectRatio!, child: tile);
  }
}
