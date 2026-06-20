/// Hợp đồng `data.type` giữa server (FCM) và client — dùng chung mọi feature.
enum PushNotificationType {
  leaveRequest(
    value: 'leave_request',
    channelId: 'tanlu_leave_request',
    channelName: 'Đơn xin nghỉ phép',
  ),
  chatMessage(
    value: 'chat_message',
    channelId: 'tanlu_chat',
    channelName: 'Tin nhắn',
  ),
  feedPost(
    value: 'feed_post',
    channelId: 'tanlu_feed',
    channelName: 'Bảng tin',
  ),
  general(
    value: 'general',
    channelId: 'tanlu_general',
    channelName: 'Thông báo chung',
  );

  const PushNotificationType({
    required this.value,
    required this.channelId,
    required this.channelName,
  });

  final String value;
  final String channelId;
  final String channelName;

  static PushNotificationType fromValue(String? raw) {
    return PushNotificationType.values.firstWhere(
      (t) => t.value == raw,
      orElse: () => PushNotificationType.general,
    );
  }
}
