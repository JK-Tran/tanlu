import 'dart:convert';

import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';

/// Payload điều hướng khi user nhấn push / local notification.
class PushNavigationPayload {
  const PushNavigationPayload({
    required this.type,
    this.requestId,
    this.conversationId,
    this.feedId,
  });

  final PushNotificationType type;
  final String? requestId;
  final String? conversationId;
  final String? feedId;

  factory PushNavigationPayload.fromFcmData(Map<String, dynamic> data) {
    return PushNavigationPayload(
      type: PushNotificationType.fromValue(data['type'] as String?),
      requestId: data['requestId'] as String?,
      conversationId: data['conversationId'] as String?,
      feedId: data['feedId'] as String?,
    );
  }

  factory PushNavigationPayload.fromDisplay({
    required PushNotificationType type,
    String? requestId,
    String? conversationId,
    String? feedId,
  }) {
    return PushNavigationPayload(
      type: type,
      requestId: requestId,
      conversationId: conversationId,
      feedId: feedId,
    );
  }

  static PushNavigationPayload? decode(String? raw) {
    if (raw == null || raw.trim().isEmpty) return null;

    try {
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return null;
      final map = Map<String, dynamic>.from(decoded);
      return PushNavigationPayload(
        type: PushNotificationType.fromValue(map['type'] as String?),
        requestId: map['requestId'] as String?,
        conversationId: map['conversationId'] as String?,
        feedId: (map['feedId'] ?? map['postId']) as String?,
      );
    } catch (_) {
      // Legacy: payload chỉ là requestId.
      return PushNavigationPayload(
        type: PushNotificationType.leaveRequest,
        requestId: raw,
      );
    }
  }

  String encode() {
    return jsonEncode({
      'type': type.value,
      if (requestId != null) 'requestId': requestId,
      if (conversationId != null) 'conversationId': conversationId,
      if (feedId != null) 'feedId': feedId,
    });
  }
}
