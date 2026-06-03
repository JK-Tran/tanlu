import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/dark_theme.dart';
import 'package:tanlu_management/core/themes/light_theme.dart';

/// Điểm vào theme: light / dark theo [ThemeMode].
abstract final class AppTheme {
  AppTheme._();

  static ThemeData light() => LightTheme.data;
  static ThemeData dark() => DarkTheme.data;
}
