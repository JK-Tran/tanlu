import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    required this.name,
    this.imageUrl,
    this.size = 44,
  });

  final String name;
  final String? imageUrl;
  final double size;

  static const _colors = [
    Color(0xFF6C5CE7),
    Color(0xFF00B894),
    Color(0xFF0984E3),
    Color(0xFFE17055),
    Color(0xFFFFAA00),
    Color(0xFFD63031),
    Color(0xFF00CEC9),
    Color(0xFFE84393),
  ];

  @override
  Widget build(BuildContext context) {
    final url = imageUrl?.trim();
    if (url != null && url.isNotEmpty) {
      return ClipOval(
        child: SizedBox(
          width: size.w,
          height: size.w,
          child: url.startsWith('assets/')
              ? Image.asset(
                  url,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => _letterAvatar(),
                )
              : Image.network(
                  url,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => _letterAvatar(),
                ),
        ),
      );
    }
    return _letterAvatar();
  }

  Widget _letterAvatar() {
    final color =
        _colors[name.isEmpty ? 0 : name.codeUnitAt(0) % _colors.length];
    return Container(
      width: size.w,
      height: size.w,
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.9),
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: AppText.h2(
        name.isNotEmpty ? name[0].toUpperCase() : '?',
        color: AppColors.white,
        fontSize: (size * 0.44).sp,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
