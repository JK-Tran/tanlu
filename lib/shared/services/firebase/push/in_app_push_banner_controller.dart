import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/services/firebase/push/in_app_push_banner_data.dart';

/// Điều khiển banner in-app (foreground). Widget overlay lắng nghe [stream].
@lazySingleton
class InAppPushBannerController {
  static const _displayDuration = Duration(seconds: 4);
  static const _dedupeWindow = Duration(seconds: 3);

  final _controller = StreamController<InAppPushBannerData?>.broadcast();
  Timer? _hideTimer;
  String? _lastDedupeKey;
  DateTime? _lastShownAt;

  Stream<InAppPushBannerData?> get stream => _controller.stream;

  void show(InAppPushBannerData data, {String? dedupeKey}) {
    final key = dedupeKey ?? '${data.conversationId}_${data.body}';
    final now = DateTime.now();
    if (key == _lastDedupeKey &&
        _lastShownAt != null &&
        now.difference(_lastShownAt!) < _dedupeWindow) {
      return;
    }
    _lastDedupeKey = key;
    _lastShownAt = now;

    _hideTimer?.cancel();
    _controller.add(data);

    _hideTimer = Timer(_displayDuration, hide);
  }

  void hide() {
    _hideTimer?.cancel();
    _controller.add(null);
  }

  void dispose() {
    _hideTimer?.cancel();
    _controller.close();
  }
}
