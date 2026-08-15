class AppWebSocketEvent {
  const AppWebSocketEvent({
    required this.channel,
    required this.event,
    required this.data,
  });

  final String channel;
  final String event;
  final Map<String, dynamic> data;

  @override
  String toString() =>
      'AppWebSocketEvent(channel: $channel, event: $event, data: $data)';
}
