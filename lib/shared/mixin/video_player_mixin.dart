import 'package:flutter/services.dart';

/// Mixin để xử lý fullscreen logic
mixin VideoPlayerMixin {
  bool get isFullscreen;
  void setFullscreen(bool value);

  void enterFullscreen() {
    setFullscreen(true);

    // Ẩn status bar và navigation bar
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );

    // Cho phép xoay tự động theo hướng người dùng
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void exitFullscreen() {
    // Hiện lại status bar và navigation bar
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    // Xoay lại portrait mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    // Đợi orientation transition xong rồi update UI state
    Future.delayed(const Duration(milliseconds: 300), () {
      setFullscreen(false);
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    });
  }

  void restoreOrientationOnDispose() {
    if (isFullscreen) {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }
}
