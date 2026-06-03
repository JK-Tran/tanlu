import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ReportInfoCard extends StatelessWidget {
  const ReportInfoCard({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.content,
    this.trailingIcon,
    this.bottomRightDecoration,
    this.watermarkAsset,
  });

  final IconData icon;
  final Color iconColor;
  final Color iconBg;
  final String title;
  final String content;
  final Widget? trailingIcon;
  final Widget? bottomRightDecoration;
  final String? watermarkAsset;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: const Color(0xFFF1F5F9), width: 1.5.w),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Watermark (if any)
              if (watermarkAsset != null)
                Positioned(
                  right: -8,
                  bottom: -8,
                  child: Image.asset(
                    watermarkAsset!,
                    width: 50.w,
                    height: 50.h,
                    color: const Color(0xFFF1F5F9).withValues(alpha: 0.8),
                    colorBlendMode: BlendMode.srcIn,
                    errorBuilder: (_, _, _) => SizedBox(),
                  ),
                ),

              // Content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section header
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: iconBg,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Icon(icon, color: iconColor, size: 16),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: AppText.t2(
                          title,
                          color: const Color(0xFF1E1E2D),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      ?trailingIcon,
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // Content text
                  AppText.b0(
                    content,
                    color: const Color(0xFF3D3D4E),
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Bottom right decoration (if any)
        if (bottomRightDecoration != null)
          Positioned(right: -30, bottom: -20, child: bottomRightDecoration!),
      ],
    );
  }
}
