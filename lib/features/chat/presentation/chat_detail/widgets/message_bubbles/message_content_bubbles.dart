import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_media_grid.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/image_viewer_page.dart';

class RevokedMessageBubble extends StatelessWidget {
  const RevokedMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return AppText.b2(
      'Tin nhắn đã bị thu hồi',
      color: AppColors.grayMedium,
      fontStyle: FontStyle.italic,
    );
  }
}

class GroupedImageBubble extends StatelessWidget {
  const GroupedImageBubble({super.key, required this.groupedMessages});
  final List<ChatMessage> groupedMessages;

  @override
  Widget build(BuildContext context) {
    final urls = groupedMessages.reversed.map((m) => m.fileUrl).toList();
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: SizedBox(
        width: 250.w,
        child: FeedMediaGrid(images: urls),
      ),
    );
  }
}

class SingleImageBubble extends StatelessWidget {
  const SingleImageBubble({super.key, required this.fileUrl});
  final String fileUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ImageViewerPage.open(context, images: [fileUrl], initialIndex: 0);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Image.network(
          fileUrl,
          width: 200.w,
          fit: BoxFit.cover,
          loadingBuilder: (_, child, progress) {
            if (progress == null) return child;
            return SizedBox(
              width: 200.w,
              height: 150.h,
              child: const Center(child: CircularProgressIndicator()),
            );
          },
          errorBuilder: (_, _, _) => SizedBox(
            width: 200.w,
            height: 100.h,
            child: const Center(child: Icon(Icons.broken_image_outlined)),
          ),
        ),
      ),
    );
  }
}

class FileMessageBubble extends StatelessWidget {
  const FileMessageBubble({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.attach_file, size: 16),
        SizedBox(width: 4.w),
        Flexible(child: AppText.b2(content, color: AppColors.grayDark)),
      ],
    );
  }
}

class TextMessageBubble extends StatelessWidget {
  const TextMessageBubble({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return AppText.b2(content, color: AppColors.grayDark);
  }
}
