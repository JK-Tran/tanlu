import 'package:tanlu_management/core/notification/notification_type.dart';

class NotificationPayload {
  final NotificationType type;
  final String? title;
  final String? body;
  final String? postId;
  final String? commentId;
  final int? notificationId;
  final Map<String, dynamic> rawData;

  NotificationPayload({
    required this.type,
    this.title,
    this.body,
    this.postId,
    this.commentId,
    this.notificationId,
    required this.rawData,
  });

  factory NotificationPayload.fromData(Map<String, dynamic> data, {String? defaultTitle, String? defaultBody}) {
    final type = NotificationType.fromString(data['type']?.toString());
    final notificationId = int.tryParse(data['notificationId']?.toString() ?? '');
    
    return NotificationPayload(
      type: type,
      title: data['title']?.toString() ?? defaultTitle,
      body: data['body']?.toString() ?? defaultBody,
      postId: data['postId']?.toString(),
      commentId: data['commentId']?.toString(),
      notificationId: notificationId,
      rawData: data,
    );
  }
}
