import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/l10n/l10n.dart';

enum AppNotificationType { info, warning, error, success }

class AppNotificationDialog extends StatelessWidget {
  const AppNotificationDialog({
    super.key,
    required this.title,
    required this.content,
    this.buttonText,
    this.type = AppNotificationType.info,
  });

  final String title;
  final String content;
  final String? buttonText;
  final AppNotificationType type;

  IconData get _icon => switch (type) {
    AppNotificationType.info => Icons.info_rounded,
    AppNotificationType.warning => Icons.warning_amber_rounded,
    AppNotificationType.error => Icons.error_outline_rounded,
    AppNotificationType.success => Icons.check_circle_outline_rounded,
  };

  Color get _iconColor => switch (type) {
    AppNotificationType.info => AppColors.info,
    AppNotificationType.warning => AppColors.warning,
    AppNotificationType.error => AppColors.error,
    AppNotificationType.success => AppColors.success,
  };

  Color get _buttonColor => switch (type) {
    AppNotificationType.error || AppNotificationType.warning => AppColors.error,
    AppNotificationType.info ||
    AppNotificationType.success => AppColors.primary,
  };

  static Future<void> show(
    BuildContext context, {
    required String title,
    required String content,
    String? buttonText,
    AppNotificationType type = AppNotificationType.info,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // Cho phép bấm ra ngoài để đóng
      builder: (context) => AppNotificationDialog(
        title: title,
        content: content,
        buttonText: buttonText,
        type: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      insetPadding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Padding(
        padding: EdgeInsets.fromLTRB(24, 24, 24, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon Area with Confetti
            SizedBox(
              width: 110.w,
              height: 110.h,
              child: CustomPaint(
                painter: type == AppNotificationType.success
                    ? _ConfettiPainter()
                    : null,
                child: Center(
                  child: Container(
                    width: 76.w,
                    height: 76.h,
                    decoration: BoxDecoration(
                      color: _iconColor.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                        width: 44.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                          color: _iconColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: _iconColor.withValues(alpha: 0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Icon(_icon, color: Colors.white, size: 28),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            // Title
            Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
                color: Color(0xFF1E293B), // Dark blue/slate
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.h),
            // Content
            Text(
              content,
              style: TextStyle(
                fontSize: 12.sp,
                color: Color(0xFF64748B), // Slate gray
                height: 1.5.h,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            // Full-width Button (Pill shape)
            Container(
              width: double.infinity,
              height: 46.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.r),
                boxShadow: [
                  BoxShadow(
                    color: _buttonColor.withValues(alpha: 0.25),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _buttonColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r), // Pill shape
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  buttonText ?? context.l10n.close,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ConfettiPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    final center = Offset(size.width / 2, size.height / 2);

    void drawSquare(Offset offset, Color color, double sz, double angle) {
      canvas.save();
      canvas.translate(center.dx + offset.dx, center.dy + offset.dy);
      canvas.rotate(angle);
      paint.color = color;
      canvas.drawRect(
        Rect.fromCenter(center: Offset.zero, width: sz, height: sz),
        paint,
      );
      canvas.restore();
    }

    void drawCircle(Offset offset, Color color, double radius) {
      paint.color = color;
      canvas.drawCircle(center + offset, radius, paint);
    }

    // Define soft colors for confetti
    final cLightPurple = const Color(0xFFC7D2FE);
    final cLightGreen = const Color(0xFF86EFAC);
    final cYellow = const Color(0xFFFDE047);

    // Draw particles around the center
    drawSquare(const Offset(-45, -50), cLightGreen, 8, 0.5);
    drawSquare(const Offset(35, -60), cLightPurple, 6, -0.3);
    drawCircle(const Offset(-60, -10), cLightPurple, 4);
    drawCircle(const Offset(50, -25), cYellow, 3);
    drawSquare(const Offset(45, 30), cLightGreen, 10, 0.8);
    drawSquare(const Offset(-30, 45), cYellow, 5, 0.2);
    drawSquare(const Offset(-15, -65), cYellow, 6, 0.8);
    drawCircle(const Offset(-55, 30), const Color(0xFFE2E8F0), 3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
