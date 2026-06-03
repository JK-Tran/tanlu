import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class ReportDetailAppBar extends StatelessWidget {
  const ReportDetailAppBar({
    super.key,
    required this.report,
    required this.student,
    required this.statusBg,
    required this.statusColor,
    required this.statusIcon,
    required this.monthLabel,
    this.onEdit,
    this.onDelete,
  });

  final Report report;
  final Student student;
  final Color statusBg;
  final Color statusColor;
  final IconData statusIcon;
  final String monthLabel;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  Widget _buildAvatarFallback() {
    return Container(
      color: const Color(0xFF1040A0),
      alignment: Alignment.center,
      child: AppText.h1(
        student.fullName.isNotEmpty ? student.fullName[0].toUpperCase() : '?',
        color: Colors.white,
      ),
    );
  }

  List<Widget> _buildBackgroundDecorations() {
    return [
      // Top-left: ic-book (stack of books)
      Positioned(
        left: 40.w,
        top: 50.h,
        child: Opacity(
          opacity: 0.92,
          child: Transform.rotate(
            angle: 0.1,
            child: Image.asset(
              'assets/icons/ic-book.png',
              width: 70.w,
              errorBuilder: (_, _, _) => SizedBox(),
            ),
          ),
        ),
      ),
      // Top-right: clouds
      Positioned(
        right: 14.w,
        top: 50.h,
        child: Opacity(
          opacity: 0.7,
          child: Image.asset(
            'assets/icons/ic-clouds.png',
            width: 48.w,
            errorBuilder: (_, _, _) => SizedBox(),
          ),
        ),
      ),
      // Right-middle: balloons
      Positioned(
        right: 10.w,
        top: 140.h,
        child: Opacity(
          opacity: 0.95,
          child: Image.asset(
            'assets/icons/ic-balloons.png',
            width: 72.w,
            errorBuilder: (_, _, _) => SizedBox(),
          ),
        ),
      ),
      // Left-middle: clouds
      Positioned(
        left: 8.w,
        top: 140.h,
        child: Opacity(
          opacity: 0.65,
          child: Image.asset(
            'assets/icons/ic-clouds.png',
            width: 85.w,
            errorBuilder: (_, _, _) => SizedBox(),
          ),
        ),
      ),
      // Bottom-right: subtle cloud
      Positioned(
        right: 8.w,
        top: 220.h,
        child: Opacity(
          opacity: 0.35,
          child: Image.asset(
            'assets/icons/ic_cloud.png',
            width: 90.w,
            errorBuilder: (_, _, _) => SizedBox(),
          ),
        ),
      ),
      // Bottom small stars (faded)
      Positioned(
        left: 28.w,
        top: 240.h,
        child: Opacity(
          opacity: 0.3,
          child: Image.asset(
            'assets/icons/ic-stars.png',
            width: 36.w,
            errorBuilder: (_, _, _) => SizedBox(),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250.0,
      collapsedHeight: 180.0,
      pinned: true,
      elevation: 0,
      backgroundColor: AppColors.primary,
      automaticallyImplyLeading: false,
      leading: Center(
        child: Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.8),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black87,
              size: 20,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      actions: [
        Center(
          child: Container(
            margin: EdgeInsets.only(right: 8.w),
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(color: statusColor, width: 1.5.w),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(statusIcon, color: statusColor, size: 14),
                SizedBox(width: 4.w),
                AppText.l1(
                  report.status.label,
                  color: statusColor,
                  fontWeight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(right: 12.w),
            width: 36.w,
            height: 36.h,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              shape: BoxShape.circle,
            ),
            child: PopupMenuButton<String>(
              icon: Icon(
                Icons.more_horiz_rounded,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 20,
              ),
              padding: EdgeInsets.zero,
              offset: const Offset(0, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              color: Colors.white,
              elevation: 10,
              shadowColor: Colors.black.withValues(alpha: 0.1),
              onSelected: (value) {
                if (value == 'edit' && onEdit != null) onEdit!();
                if (value == 'delete' && onDelete != null) onDelete!();
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 'edit',
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFEFF6FF), // Light blue bg
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.edit_rounded,
                          size: 20,
                          color: Color(0xFF2563EB), // Blue icon
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText.b1(
                            'Chỉnh sửa',
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF1E293B),
                          ),
                          SizedBox(height: 2.h),
                          AppText.b2(
                            'Sửa nội dung báo cáo',
                            fontSize: 12.sp,
                            color: const Color(0xFF64748B),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                PopupMenuItem(
                  value: 'delete',
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.w),
                        decoration: BoxDecoration(
                          color: Color(0xFFFEF2F2), // Light red bg
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.delete_outline_rounded,
                          size: 20,
                          color: Color(0xFFDC2626), // Red icon
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText.b1(
                            'Xóa báo cáo',
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFDC2626),
                          ),
                          SizedBox(height: 2.h),
                          AppText.b2(
                            'Xóa báo cáo này',
                            fontSize: 12.sp,
                            color: const Color(0xFF64748B),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final top = constraints.biggest.height;
          final safeArea = MediaQuery.of(context).padding.top;
          // minHeight is where the app bar stops collapsing
          final double minHeight = safeArea + 140.0 + 60.0;

          // Animate during the last 100 pixels of scroll
          double percent = (top - minHeight) / 100.0;
          percent = percent.clamp(0.0, 1.0);

          final double scale = 0.7 + (0.3 * percent); // Scale from 0.7 to 1.0
          final double topPadding =
              10.0 + (50.0 * percent); // 60 when expanded, 10 when collapsed

          return Stack(
            children: [
              // Gradient background
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.primary, AppColors.accent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              ..._buildBackgroundDecorations(),

              // Header Content (Avatar, Name, Subtitle) – scales on scroll
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.only(top: topPadding),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Transform.scale(
                      scale: scale,
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Avatar
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 3.w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withValues(alpha: 0.3),
                                  blurRadius: 24,
                                  spreadRadius: 4,
                                ),
                              ],
                            ),
                            child: Container(
                              width: 110.w,
                              height: 110.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.r),
                                child: student.avatarFileId.isNotEmpty
                                    ? Image.network(
                                        student.avatarFileId,
                                        fit: BoxFit.cover,
                                        errorBuilder: (_, _, _) =>
                                            _buildAvatarFallback(),
                                      )
                                    : _buildAvatarFallback(),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          // Name
                          AppText.h1(
                            student.fullName,
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4.h),
                          // Month label
                          AppText.b2(
                            monthLabel,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withValues(alpha: 0.9),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(32),
        child: Container(
          height: 16.h,
          decoration: BoxDecoration(
            color: Color(0xFFF8F9FA),
            borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
          ),
        ),
      ),
    );
  }
}
