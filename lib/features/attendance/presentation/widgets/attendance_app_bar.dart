import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// AppBar thu gọn khi scroll — dùng trong [NestedScrollView.headerSliverBuilder].
class AttendanceSliverAppBar extends StatelessWidget {
  const AttendanceSliverAppBar({
    super.key,
    required this.onBack,
    this.className = 'Lớp Mầm 2 - SUNFLOWER',
  });

  final VoidCallback onBack;
  final String className;

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;
    const detailsHeight = 48.0;

    return SliverAppBar(
      expandedHeight: top + kToolbarHeight + detailsHeight.h,
      collapsedHeight: top + kToolbarHeight,
      toolbarHeight: kToolbarHeight,
      pinned: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.primary,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: _AttendanceFlexibleHeader(
        onBack: onBack,
        topPadding: top,
        detailsHeight: detailsHeight.h,
        className: className,
      ),
    );
  }
}

class _AttendanceFlexibleHeader extends StatelessWidget {
  const _AttendanceFlexibleHeader({
    required this.onBack,
    required this.topPadding,
    required this.detailsHeight,
    required this.className,
  });

  final VoidCallback onBack;
  final double topPadding;
  final double detailsHeight;
  final String className;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final collapsedHeight = topPadding + kToolbarHeight;
        final expandedHeight = topPadding + kToolbarHeight + detailsHeight;
        final range = expandedHeight - collapsedHeight;
        final t = range <= 0
            ? 0.0
            : ((constraints.maxHeight - collapsedHeight) / range).clamp(
                0.0,
                1.0,
              );

        final slotHeight = (constraints.maxHeight - collapsedHeight).clamp(
          0.0,
          detailsHeight,
        );

        return ColoredBox(
          color: AppColors.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: topPadding),
              _ToolbarRow(onBack: onBack),
              if (slotHeight > 0)
                SizedBox(
                  height: slotHeight,
                  child: ClipRect(
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Opacity(
                        opacity: t,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 6.h),
                            child: _ContextInfoCard(className: className),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

/// Thẻ ngữ cảnh: lớp đang điểm danh (chỉ hiện khi chưa scroll).
class _ContextInfoCard extends StatelessWidget {
  const _ContextInfoCard({required this.className});

  final String className;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - 32.w,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
          ),
          child: _InfoLine(
            icon: Icons.school_outlined,
            label: 'Lớp',
            value: className,
          ),
        ),
      ),
    );
  }
}

class _InfoLine extends StatelessWidget {
  const _InfoLine({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 12.w, color: Colors.white.withValues(alpha: 0.85)),
        SizedBox(width: 6.w),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '$label · ',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.65),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
                TextSpan(
                  text: value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ToolbarRow extends StatelessWidget {
  const _ToolbarRow({required this.onBack});

  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _HeaderIconButton(
                  icon: Icons.arrow_back_ios_new_rounded,
                  onTap: onBack,
                ),
              ],
            ),
            IgnorePointer(
              child: AppText.b1(
                'Điểm danh',
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  const _HeaderIconButton({
    required this.icon,
    required this.onTap,
    this.circular = false,
  });

  final IconData icon;
  final VoidCallback onTap;
  final bool circular;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: circular
          ? const CircleBorder()
          : RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      child: InkWell(
        onTap: onTap,
        customBorder: circular
            ? const CircleBorder()
            : RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        child: SizedBox(
          width: 36.w,
          height: 36.w,
          child: Icon(icon, size: 16.w, color: AppColors.grayDark),
        ),
      ),
    );
  }
}
