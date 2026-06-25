import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_push_opener.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_navigation_payload.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';

/// Điều hướng khi user nhấn push notification.
abstract final class PushNavigationHelper {
  static GoRouter? _router;
  static bool _isAuthenticated = false;
  static PushNavigationPayload? _pending;

  static set router(GoRouter? value) {
    _router = value;
    _tryNavigatePending();
  }

  /// Gọi khi [AppBloc] chuyển sang authenticated / unauthenticated.
  static void setAuthenticated(bool value) {
    _isAuthenticated = value;
    if (!value) _pending = null;
    _tryNavigatePending();
  }

  static void navigateFromFcmData(Map<String, dynamic> data) {
    navigate(PushNavigationPayload.fromFcmData(data));
  }

  static void navigateFromPayload(String? payload) {
    final intent = PushNavigationPayload.decode(payload);
    if (intent != null) navigate(intent);
  }

  static void navigate(PushNavigationPayload payload) {
    if (_router == null || !_isAuthenticated) {
      _pending = payload;
      appLogger.i(
        'Push navigation deferred (${payload.type.value}) — '
        'router=${_router != null}, auth=$_isAuthenticated',
      );
      return;
    }
    _performNavigate(payload);
  }

  static void _tryNavigatePending() {
    final payload = _pending;
    if (payload == null || _router == null || !_isAuthenticated) return;
    _pending = null;
    _performNavigate(payload);
  }

  static void _performNavigate(PushNavigationPayload payload) {
    final router = _router;
    if (router == null) return;

    switch (payload.type) {
      case PushNotificationType.leaveRequest:
        _navigateToLeaveRequest(router);
      case PushNotificationType.chatMessage:
        _navigateToChatMessage(router, payload.conversationId);
      case PushNotificationType.feedPost:
        router.go(AppRouter.feed);
      case PushNotificationType.general:
        break;
    }
  }

  static void openChatConversation(String conversationId) {
    navigate(
      PushNavigationPayload.fromDisplay(
        type: PushNotificationType.chatMessage,
        conversationId: conversationId,
      ),
    );
  }

  static void _navigateToChatMessage(
    GoRouter router,
    String? conversationId,
  ) {
    final current = router.state.matchedLocation;
    appLogger.i('Push navigate → chat (conversationId=$conversationId)');

    if (current == AppRouter.root || current == AppRouter.login) {
      router.go(AppRouter.overview);
    }

    if (current != AppRouter.message) {
      router.go(AppRouter.message);
    }

    if (conversationId != null && conversationId.isNotEmpty) {
      sl<ChatPushOpener>().openConversation(conversationId);
    }
  }

  static void _navigateToLeaveRequest(GoRouter router) {
    const target = '${AppRouter.attendance}?tab=leave';
    final current = router.state.matchedLocation;
    appLogger.i('Push navigate → $target (current=$current)');

    if (current == AppRouter.attendance) {
      router.go(target);
      return;
    }

    if (current == AppRouter.root || current == AppRouter.login) {
      router.go(AppRouter.overview);
    }

    router.push(target);
  }
}
