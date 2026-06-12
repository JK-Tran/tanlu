import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:intl/intl.dart';

class ImageGroupBubble extends StatelessWidget {
  final List<Message> messages;
  final bool isMe;

  const ImageGroupBubble({
    super.key,
    required this.messages,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    final timeStr = DateFormat('HH:mm').format(
      messages.last.createdAt ?? DateTime.now(),
    );
    final urls = messages
        .where((m) => m.fileUrl != null && m.fileUrl!.isNotEmpty)
        .map((m) => m.fileUrl!)
        .toList();

    final isRead = messages.last.isRead;

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 16.h,
          left: isMe ? 60.w : 0,
          right: isMe ? 0 : 60.w,
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: _buildImageGrid(urls, context),
            ),
            SizedBox(height: 4.h),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.b2(
                  timeStr,
                  color: AppColors.grayMedium,
                  fontSize: 11.sp,
                ),
                if (isMe) ...[
                  SizedBox(width: 4.w),
                  Icon(
                    isRead ? Icons.done_all : Icons.check,
                    color: isRead ? AppColors.primary : AppColors.grayMedium,
                    size: 14.sp,
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageGrid(List<String> urls, BuildContext context) {
    final count = urls.length;
    // Max width cho image group
    final maxW = 220.w;

    if (count == 1) {
      return _buildSingleImage(urls[0], maxW);
    } else if (count == 2) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSquareImage(urls[0], maxW / 2 - 1),
          SizedBox(width: 2.w),
          _buildSquareImage(urls[1], maxW / 2 - 1),
        ],
      );
    } else if (count == 3) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSquareImage(urls[0], maxW * 0.55),
          SizedBox(width: 2.w),
          Column(
            children: [
              _buildSquareImage(urls[1], maxW * 0.45 - 1, height: maxW * 0.55 / 2 - 1),
              SizedBox(height: 2.h),
              _buildSquareImage(urls[2], maxW * 0.45 - 1, height: maxW * 0.55 / 2 - 1),
            ],
          ),
        ],
      );
    } else {
      // 4+ images: 2x2 grid with +N overlay on last
      final displayUrls = urls.take(4).toList();
      final remaining = count - 4;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSquareImage(displayUrls[0], maxW / 2 - 1),
              SizedBox(width: 2.w),
              _buildSquareImage(displayUrls[1], maxW / 2 - 1),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildSquareImage(displayUrls[2], maxW / 2 - 1),
              SizedBox(width: 2.w),
              _buildSquareImageWithOverlay(
                displayUrls[3],
                maxW / 2 - 1,
                remaining > 0 ? '+$remaining' : null,
              ),
            ],
          ),
        ],
      );
    }
  }

  Widget _buildSingleImage(String url, double maxW) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxW, maxHeight: maxW * 1.5),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _errorPlaceholder(maxW, maxW),
      ),
    );
  }

  Widget _buildSquareImage(String url, double size, {double? height}) {
    return SizedBox(
      width: size,
      height: height ?? size,
      child: Image.network(
        url,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _errorPlaceholder(size, height ?? size),
      ),
    );
  }

  Widget _buildSquareImageWithOverlay(String url, double size, String? label) {
    return Stack(
      children: [
        _buildSquareImage(url, size),
        if (label != null)
          Positioned.fill(
            child: Container(
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _errorPlaceholder(double w, double h) {
    return Container(
      width: w,
      height: h,
      color: AppColors.grayLight,
      alignment: Alignment.center,
      child: const Icon(Icons.broken_image, color: AppColors.grayMedium),
    );
  }
}
