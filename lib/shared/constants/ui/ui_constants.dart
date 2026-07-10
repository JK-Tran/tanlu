import 'package:flutter/services.dart';

class UiConstants {
  const UiConstants._();

  /// shimmer
  static const shimmerItemCount = 10;

  /// material app
  static const materialAppTitle = 'Antoree App';
  static const hotline = '0777 196 498';
  static const hotlineUI = '0777 196 498';
  // static const hotline = '0909636002';
  static const taskMenuMaterialAppColor = Color(0xFF14B24C);

  /// orientation
  static const mobileOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const tabletOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ];

  /// status bar color
  static const systemUiOverlay = SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Color(0xFF14B24C),
  );

  static const textFieldTextStyleHeight = 1.3;
}
