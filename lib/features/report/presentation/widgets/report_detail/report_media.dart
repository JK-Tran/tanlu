import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/entity/file.dart';
import 'package:tanlu_management/features/report/presentation/widgets/interactive_image_viewer.dart';
import 'package:tanlu_management/features/report/presentation/widgets/app_video_player.dart';
import 'package:tanlu_management/shared/utils/file_download_helper.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

class ReportMedia extends StatelessWidget {
  const ReportMedia({super.key, required this.report});

  final Report report;

  @override
  Widget build(BuildContext context) {
    final imagesAndVideos = report.files.where((file) {
      final fileTypeLower = file.fileType.toLowerCase();
      final ext = file.fileName.split('.').last.toLowerCase();
      return fileTypeLower == 'image' ||
          fileTypeLower == 'video' ||
          [
            'jpg',
            'jpeg',
            'png',
            'gif',
            'heic',
            'heif',
            'mp4',
            'mov',
            'avi',
            'mkv',
            '3gp',
          ].contains(ext);
    }).toList();

    final otherFiles = report.files
        .where((file) => !imagesAndVideos.contains(file))
        .toList();

    if (imagesAndVideos.isEmpty && otherFiles.isEmpty) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: const Color(0xFFE9E9EF), width: 1.w),
        ),
        child: Column(
          children: [
            Icon(
              Icons.folder_open_rounded,
              color: AppColors.grayMedium.withValues(alpha: 0.5),
              size: 40,
            ),
            SizedBox(height: 8.h),
            AppText.b2(
              'Chưa có hình ảnh, video hoặc tài liệu nào.',
              color: AppColors.grayMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (imagesAndVideos.isNotEmpty) ...[
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: imagesAndVideos.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final file = imagesAndVideos[index];
              return _MediaGridItem(
                file: file,
                heroTag: 'report-file-${file.id}-$index',
              );
            },
          ),
          SizedBox(height: 16.h),
        ],
        if (otherFiles.isNotEmpty) ...[
          _buildSectionLabel(
            'Tài liệu khác (${otherFiles.length})',
            Icons.insert_drive_file_outlined,
          ),

          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: otherFiles.length,
            separatorBuilder: (_, index) => SizedBox(height: 4.h),
            itemBuilder: (context, index) {
              final file = otherFiles[index];
              return _OtherFileItem(file: file);
            },
          ),
        ],
      ],
    );
  }

  Widget _buildSectionLabel(String title, IconData icon, {int count = 0}) {
    return Row(
      children: [
        Icon(icon, color: AppColors.grayDark80, size: 18),
        SizedBox(width: 8.w),
        AppText.l0(
          count > 0 ? '$title ($count)' : title,
          color: AppColors.grayDark80,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}

class _MediaGridItem extends StatelessWidget {
  const _MediaGridItem({required this.file, required this.heroTag});

  final File file;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    final fileTypeLower = file.fileType.toLowerCase();
    final ext = file.fileName.split('.').last.toLowerCase();
    final isImage =
        fileTypeLower == 'image' ||
        ['jpg', 'jpeg', 'png', 'gif', 'heic', 'heif'].contains(ext);

    return GestureDetector(
      onTap: () {
        if (isImage) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => InteractiveImageViewer(
                imageUrl: file.fileUrl,
                heroTag: heroTag,
              ),
            ),
          );
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AppVideoPlayer(
                videoUrl: file.fileUrl,
                fileName: file.fileName,
              ),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: const Color(0xFFE9E9EF), width: 1.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.02),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.all(6.w),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F8FC),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (isImage && file.fileUrl.isNotEmpty)
                      Hero(
                        tag: heroTag,
                        child: Image.network(
                          file.fileUrl,
                          fit: BoxFit.contain,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Shimmer.fromColors(
                              baseColor: AppColors.grayLight,
                              highlightColor: AppColors.grayBg,
                              child: Container(color: Colors.white),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              _buildVideoOrFilePlaceholder(
                                file.fileName,
                                false,
                              ),
                        ),
                      )
                    else
                      _buildVideoOrFilePlaceholder(file.fileName, true),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Icon(
                  isImage
                      ? Icons.image_outlined
                      : Icons.play_circle_outline_rounded,
                  color: isImage
                      ? AppColors.grayMedium
                      : const Color(0xFF34C759),
                  size: 16,
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: AppText.b2(
                    file.fileName.isNotEmpty
                        ? file.fileName
                        : (isImage ? 'Ảnh can thiệp' : 'Video can thiệp'),
                    color: AppColors.grayDark,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoOrFilePlaceholder(String name, bool isVideo) {
    if (isVideo) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEEF2FF), Color(0xFFE0E7FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: Color(0xFFEAF9EE),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.play_arrow_rounded,
              color: Color(0xFF34C759),
              size: 28,
            ),
          ),
        ),
      );
    }

    return Container(
      color: const Color(0xFFF8F8FC),
      child: Center(
        child: Icon(
          Icons.insert_drive_file_rounded,
          color: AppColors.primary,
          size: 42,
        ),
      ),
    );
  }
}

class _OtherFileItem extends StatelessWidget {
  const _OtherFileItem({required this.file});

  final File file;

  IconData _getFileIconData(String filename) {
    final ext = filename.split('.').last.toLowerCase();
    if (ext == 'pdf') return Icons.picture_as_pdf_rounded;
    if (['doc', 'docx'].contains(ext)) return Icons.description_rounded;
    if (['xls', 'xlsx'].contains(ext)) return Icons.table_chart_rounded;
    return Icons.insert_drive_file_rounded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.grayLight.withValues(alpha: 0.5)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              _getFileIconData(file.fileName),
              color: AppColors.primary,
              size: 20,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b2(
                  file.fileName,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayDark,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
                if (file.fileSize > 0) ...[
                  SizedBox(height: 2.h),
                  AppText.b2(
                    StringUtils.sizeLabel(file.fileSize),
                    fontSize: 10.sp,
                    color: AppColors.grayMedium,
                  ),
                ],
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.cloud_download_outlined,
              color: AppColors.primary,
              size: 20,
            ),
            onPressed: () {
              FileDownloadHelper.downloadFile(
                context: context,
                url: file.fileUrl,
                fileName: file.fileName,
                fileType: file.fileType,
              );
            },
          ),
        ],
      ),
    );
  }
}
