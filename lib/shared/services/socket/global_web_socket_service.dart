import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const String _baseWsUrl = 'wss://tanlu-api.lvthanh-work.workers.dev/ws/app';

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
  String toString() {
    return 'AppWebSocketEvent(channel: $channel, event: $event, data: $data)';
  }
}

@lazySingleton
class GlobalWebSocketService {
  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _subscription;

  final _eventController = StreamController<AppWebSocketEvent>.broadcast();

  /// Broadcast stream of realtime events for the UI layer to listen to.
  Stream<AppWebSocketEvent> get events => _eventController.stream;

  bool _isConnected = false;
  bool get isConnected => _isConnected;

  void connect(String token) {
    if (_isConnected) return;

    final uri = Uri.parse('$_baseWsUrl?token=$token');

    try {
      _channel = WebSocketChannel.connect(uri);
      _isConnected = true;

      _subscription = _channel!.stream.listen(
        _onMessage,
        onError: _onError,
        onDone: _onDone,
        cancelOnError: false,
      );

      debugPrint('[GlobalWebSocket] ✅ Connected to app socket');
    } catch (e) {
      debugPrint('[GlobalWebSocket] ❌ Connection error: $e');
      _isConnected = false;
    }
  }

  void _onMessage(dynamic rawMessage) {
    try {
      final json = jsonDecode(rawMessage as String) as Map<String, dynamic>;
      final channel = json['channel'] as String? ?? '';
      final eventStr = json['event'] as String? ?? '';
      final data = (json['data'] as Map<String, dynamic>?) ?? {};

      if (channel.isNotEmpty && eventStr.isNotEmpty) {
        _eventController.add(
          AppWebSocketEvent(channel: channel, event: eventStr, data: data),
        );
      }
    } catch (e) {
      debugPrint('[GlobalWebSocket] ⚠️ Parse error: $e, message: $rawMessage');
    }
  }

  void _onError(Object error) {
    debugPrint('[GlobalWebSocket] ⚠️ Socket error: $error');
    _isConnected = false;
  }

  void _onDone() {
    debugPrint('[GlobalWebSocket] 🔌 Socket closed');
    _isConnected = false;
  }

  void subscribe(String channelName) {
    if (!_isConnected || _channel == null) return;
    try {
      _channel!.sink.add(
        jsonEncode({
          "action": "subscribe",
          "channel": channelName,
        }),
      );
      debugPrint('[GlobalWebSocket] 📡 Subscribed to channel: $channelName');
    } catch (e) {
      debugPrint('[GlobalWebSocket] ⚠️ Subscribe error: $e');
    }
  }

  void unsubscribe(String channelName) {
    if (!_isConnected || _channel == null) return;
    try {
      _channel!.sink.add(
        jsonEncode({
          "action": "unsubscribe",
          "channel": channelName,
        }),
      );
      debugPrint('[GlobalWebSocket] 🔇 Unsubscribed from channel: $channelName');
    } catch (e) {
      debugPrint('[GlobalWebSocket] ⚠️ Unsubscribe error: $e');
    }
  }

  void disconnect() {
    if (!_isConnected) return;
    _subscription?.cancel();
    _channel?.sink.close();
    _channel = null;
    _isConnected = false;
    debugPrint('[GlobalWebSocket] 🔌 Disconnected');
  }

  void dispose() {
    disconnect();
    _eventController.close();
  }
}
