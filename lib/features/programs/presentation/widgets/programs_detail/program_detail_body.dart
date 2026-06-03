import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';

import 'package:tanlu_management/core/config/app_env.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/shared/utils/file_download_helper.dart';
import 'package:tanlu_management/features/report/presentation/widgets/app_video_player.dart';
import 'package:tanlu_management/features/report/presentation/widgets/interactive_image_viewer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProgramDetailBody extends StatelessWidget {
  final Program program;

  const ProgramDetailBody({super.key, required this.program});

  IconData _iconForFile(String name) {
    final ext = name.split('.').last.toLowerCase();
    if (['mp4', 'mov', 'avi'].contains(ext)) return Icons.videocam_rounded;
    if (['jpg', 'jpeg', 'png', 'gif', 'heic'].contains(ext)) {
      return Icons.image_rounded;
    }
    return Icons.insert_drive_file_rounded;
  }

  Color _colorForFile(String name) {
    final ext = name.split('.').last.toLowerCase();
    if (['mp4', 'mov', 'avi'].contains(ext)) return const Color(0xFF8B5CF6);
    if (['jpg', 'jpeg', 'png', 'gif', 'heic'].contains(ext)) {
      return AppColors.primary;
    }
    return AppColors.grayMedium;
  }

  @override
  Widget build(BuildContext context) {
    final catColor = const Color(0xFF7C3AED);

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ─── Header Card ────────────────────────────────────────────
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFFAFAFF), Color(0xFFEBE3FF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(alpha: 0.4),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 20.w,
                  bottom: 0.h,
                  top: 10.h,
                  child: Transform.scale(
                    scale: 1.3,
                    child: Image.asset(
                      'assets/images/img-titile-programs.png',
                      width: 140.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Badge
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 6.h,
                              ),
                              decoration: BoxDecoration(
                                color: catColor.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.auto_awesome_rounded,
                                    size: 14,
                                    color: catColor,
                                  ),
                                  SizedBox(width: 6.w),
                                  AppText.b1(
                                    program.version.isNotEmpty
                                        ? 'Phiên bản ${program.version}'
                                        : 'Giáo trình',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: catColor,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.h),
                            // Title
                            AppText.b1(
                              program.title,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.grayDark80,
                              maxLines: 4,
                            ),
                            SizedBox(height: 20.h),
                            // Date
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Icon(
                                    Icons.calendar_month_rounded,
                                    size: 18,
                                    color: AppColors.white,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText.b1(
                                      'Ngày tạo',
                                      fontSize: 12.sp,
                                      color: AppColors.grayMedium,
                                    ),
                                    SizedBox(height: 2.h),
                                    AppText.b1(
                                      DateTimeUtils.formatDateTimeDateOnlyType2(
                                            program.createdAt,
                                          ) ??
                                          '',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.grayDark80,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 4, child: SizedBox()),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          // ─── Info Card ────────────────────────────────────────────
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: catColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: catColor,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    AppText.b1(
                      'Thông tin chung',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                _buildInfoRow(
                  icon: Icons.class_rounded,
                  label: 'Lớp áp dụng',
                  value: program.classroom?.name ?? 'Chưa xác định',
                ),
                SizedBox(height: 12.h),
                _buildInfoRow(
                  icon: Icons.child_care_rounded,
                  label: 'Độ tuổi',
                  value:
                      '${program.targetAgeFromMonth} - ${program.targetAgeToMonth} tháng tuổi',
                ),
                SizedBox(height: 12.h),
                _buildInfoRow(
                  icon: Icons.toggle_on_rounded,
                  label: 'Trạng thái',
                  value: program.status == 'active'
                      ? 'Đang áp dụng'
                      : 'Không hoạt động',
                  valueColor: program.status == 'active'
                      ? const Color(0xFF10B981)
                      : const Color(0xFF94A3B8),
                ),
                if (program.creator != null &&
                    program.creator!.fullName.isNotEmpty) ...[
                  SizedBox(height: 12.h),
                  _buildInfoRow(
                    icon: Icons.person_outline_rounded,
                    label: 'Người tạo',
                    value: program.creator!.fullName,
                  ),
                ],
              ],
            ),
          ),

          SizedBox(height: 16.h),

          // ─── Description Card ─────────────────────────────────────
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: catColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(
                        Icons.description_rounded,
                        color: catColor,
                        size: 18,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    AppText.b1(
                      'Mô tả chi tiết',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1E293B),
                    ),
                  ],
                ),
                SizedBox(height: 12.h),
                AppText.b1(
                  program.description,
                  fontSize: 14.sp,
                  color: const Color(0xFF475569),
                ),
              ],
            ),
          ),

          // ─── Files Card ───────────────────────────────────────────
          if (program.files.isNotEmpty) ...[
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: catColor.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(
                          Icons.attach_file_rounded,
                          color: catColor,
                          size: 18,
                        ),
                      ),
                      SizedBox(width: 10.w),
                      AppText.b1(
                        'Tài liệu đính kèm (${program.files.length})',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1E293B),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: program.files.length,
                    separatorBuilder: (_, _) => SizedBox(height: 10.h),
                    itemBuilder: (context, index) {
                      final file = program.files[index];
                      return InkWell(
                        onTap: () async {
                          String fullUrl = file.fileUrl;
                          if (fullUrl.startsWith('/')) {
                            fullUrl = '${AppEnv.baseUrl}$fullUrl';
                          }

                          final fileTypeLower = file.fileType.toLowerCase();
                          final ext = file.fileName
                              .split('.')
                              .last
                              .toLowerCase();
                          final isVideo =
                              fileTypeLower == 'video' ||
                              ['mp4', 'mov', 'avi'].contains(ext);
                          final isImage =
                              fileTypeLower == 'image' ||
                              [
                                'jpg',
                                'jpeg',
                                'png',
                                'gif',
                                'heic',
                              ].contains(ext);

                          if (isVideo) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => AppVideoPlayer(
                                  videoUrl: fullUrl,
                                  fileName: '',
                                ),
                              ),
                            );
                          } else if (isImage) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => InteractiveImageViewer(
                                  imageUrl: fullUrl,
                                  heroTag: 'program_file_${file.id}',
                                ),
                              ),
                            );
                          } else {
                            final isDoc = [
                              'pdf',
                              'doc',
                              'docx',
                              'xls',
                              'xlsx',
                              'ppt',
                              'pptx',
                            ].contains(ext);
                            String viewUrl = fullUrl;
                            if (isDoc) {
                              viewUrl =
                                  'https://docs.google.com/gview?embedded=true&url=${Uri.encodeComponent(fullUrl)}';
                            }
                            final uri = Uri.parse(viewUrl);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(
                                uri,
                                mode: LaunchMode.inAppBrowserView,
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Không thể mở tệp này.'),
                                ),
                              );
                            }
                          }
                        },
                        borderRadius: BorderRadius.circular(12.r),
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 14.w,
                            right: 4.w,
                            top: 8.h,
                            bottom: 8.h,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8FAFC),
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(color: const Color(0xFFE9EEF6)),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  color: _colorForFile(
                                    file.fileName,
                                  ).withValues(alpha: 0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  _iconForFile(file.fileName),
                                  color: _colorForFile(file.fileName),
                                  size: 22,
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText.b1(
                                      file.fileName,
                                      maxLines: 1,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF1E293B),
                                    ),
                                    AppText.b1(
                                      'Bấm để xem',
                                      fontSize: 12.sp,
                                      color: const Color(0xFF94A3B8),
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.download_rounded,
                                  color: catColor,
                                  size: 24,
                                ),
                                onPressed: () {
                                  String fullUrl = file.fileUrl;
                                  if (fullUrl.startsWith('/')) {
                                    fullUrl = '${AppEnv.baseUrl}$fullUrl';
                                  }
                                  FileDownloadHelper.downloadFile(
                                    context: context,
                                    url: fullUrl,
                                    fileName: file.fileName,
                                    fileType: file.fileType,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
          SizedBox(height: 40.h),
        ],
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    Color? valueColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: const Color(0xFF94A3B8)),
        SizedBox(width: 8.w),
        SizedBox(
          width: 90.w,
          child: AppText.b1(
            label,
            fontSize: 13.sp,
            color: const Color(0xFF94A3B8),
          ),
        ),
        Expanded(
          child: AppText.b1(
            value,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: valueColor ?? const Color(0xFF1E293B),
          ),
        ),
      ],
    );
  }
}
