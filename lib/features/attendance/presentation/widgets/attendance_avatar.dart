import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class AttendanceAvatar extends StatelessWidget {
  const AttendanceAvatar({
    super.key,
    required this.nickname,
    this.imageUrl,
    this.size = 44,
  });

  final String nickname;
  final String? imageUrl;
  final double size;

  static const List<Color> _colors = [
    Color(0xFF6C5CE7),
    Color(0xFF00B894),
    Color(0xFF0984E3),
    Color(0xFFE17055),
    Color(0xFFFFAA00),
    Color(0xFFD63031),
    Color(0xFF00CEC9),
    Color(0xFFE84393),
  ];

  Color get _bg =>
      _colors[nickname.isEmpty ? 0 : nickname.codeUnitAt(0) % _colors.length]
          .withValues(alpha: 0.18);
  Color get _fg =>
      _colors[nickname.isEmpty ? 0 : nickname.codeUnitAt(0) % _colors.length];

  String? get _resolvedImageUrl {
    final url = imageUrl?.trim();
    if (url == null || url.isEmpty) return null;
    return url;
  }

  @override
  Widget build(BuildContext context) {
    final url = _resolvedImageUrl;
    if (url != null) {
      return ClipOval(
        child: SizedBox(
          width: size.w,
          height: size.w,
          child: url.startsWith('assets/')
              ? Image.asset(
                  url,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => _letterAvatar(),
                )
              : Image.network(
                  url,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => _letterAvatar(),
                ),
        ),
      );
    }

    return _letterAvatar();
  }

  Widget _letterAvatar() {
    return Container(
      width: size.w,
      height: size.w,
      decoration: BoxDecoration(color: _bg, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: AppText.h2(
        nickname.isNotEmpty ? nickname[0].toUpperCase() : '?',
        color: _fg,
        fontSize: (size * 0.44).sp,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
