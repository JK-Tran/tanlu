import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/router/push_navigation_helper.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_foreground_context.dart';
import 'package:tanlu_management/shared/services/firebase/push/in_app_push_banner_controller.dart';
import 'package:tanlu_management/shared/services/firebase/push/in_app_push_banner_data.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_navigation_payload.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';
import 'package:tanlu_management/shared/services/notification/notification_preferences.dart';

/// Hiển thị banner tin nhắn đến khi app foreground (Firestore stream).
@lazySingleton
class ChatIncomingBannerService {
  ChatIncomingBannerService(
    this._bannerController,
    this._notificationPreferences,
  );

  final InAppPushBannerController _bannerController;
  final NotificationPreferences _notificationPreferences;

  void showFromConversation({
    required Conversation conversation,
    required String currentUserId,
  }) {
    if (conversation.id.isEmpty) return;
    if (ChatForegroundContext.isViewing(conversation.id)) return;
    if (conversation.lastMessageSenderId == currentUserId) return;
    if (conversation.lastMessageText.trim().isEmpty) return;

    _show(
      conversationId: conversation.id,
      title: _senderName(conversation),
      body: conversation.lastMessageText,
      senderAvatarUrl: _senderAvatar(conversation),
      senderId: conversation.lastMessageSenderId,
    );
  }

  /// FCM foreground — chỉ dùng khi stream chưa chạy; thường bị dedupe với stream.
  void showFromFcm({
    required String conversationId,
    required String title,
    required String body,
    String? senderAvatarUrl,
    String? senderId,
  }) {
    if (conversationId.isEmpty) return;
    if (ChatForegroundContext.isViewing(conversationId)) return;

    _show(
      conversationId: conversationId,
      title: title,
      body: body,
      senderAvatarUrl: senderAvatarUrl,
      senderId: senderId,
    );
  }

  void _show({
    required String conversationId,
    required String title,
    required String body,
    String? senderAvatarUrl,
    String? senderId,
  }) {
    if (!_notificationPreferences.isEnabled) return;

    final dedupeKey =
        '$conversationId|${body.trim()}|${senderId ?? title.trim()}';

    _bannerController.show(
      InAppPushBannerData(
        type: PushNotificationType.chatMessage,
        title: title,
        body: body,
        senderAvatarUrl: senderAvatarUrl,
        conversationId: conversationId,
      ),
      dedupeKey: dedupeKey,
    );
  }

  void onBannerTap(InAppPushBannerData data) {
    _bannerController.hide();

    switch (data.type) {
      case PushNotificationType.chatMessage:
        final conversationId = data.conversationId;
        if (conversationId != null && conversationId.isNotEmpty) {
          PushNavigationHelper.openChatConversation(conversationId);
        }
      case PushNotificationType.leaveRequest:
        PushNavigationHelper.navigate(
          PushNavigationPayload.fromDisplay(
            type: PushNotificationType.leaveRequest,
            requestId: data.requestId,
          ),
        );
      default:
        break;
    }
  }

  String _senderName(Conversation conversation) {
    if (conversation.type == 'group' && conversation.name.isNotEmpty) {
      return conversation.name;
    }

    final senderId = conversation.lastMessageSenderId;
    for (final member in conversation.members) {
      if (member.userId == senderId && member.fullName.isNotEmpty) {
        return member.fullName;
      }
    }

    if (conversation.name.isNotEmpty) return conversation.name;
    return 'Tin nhắn mới';
  }

  String? _senderAvatar(Conversation conversation) {
    final senderId = conversation.lastMessageSenderId;
    for (final member in conversation.members) {
      if (member.userId == senderId && member.avatar.isNotEmpty) {
        return member.avatar;
      }
    }
    return null;
  }
}
