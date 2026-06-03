import 'package:flutter/material.dart';

/// Hằng số padding lề 2 bên dùng chung cho toàn app.
/// Tất cả Page/Widget đều phải dùng giá trị này thay vì hardcode.
class AppSpacing {
  const AppSpacing._();

  /// Padding lề ngang chuẩn cho tất cả Page — 16px.
  static const double pageHorizontal = 18;

  /// Dùng trực tiếp như EdgeInsets
  static EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: pageHorizontal,
  );
  static EdgeInsets pageHPadding = EdgeInsets.symmetric(
    horizontal: pageHorizontal,
  );

  // Spacing thang 4pt
  static const double s4 = 4;
  static const double s8 = 8;
  static const double s12 = 12;
  static const double s16 = 16;
  static const double s20 = 20;
  static const double s24 = 24;
}
