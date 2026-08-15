import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';
import 'package:tanlu_management/shared/services/socket/socket_event.dart';
import 'package:tanlu_management/shared/services/socket/enums/socket_status.dart';
import 'package:tanlu_management/shared/utils/log_utils.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// const String _baseWsUrl = 'wss://tanlu-api.lvthanh-work.workers.dev/ws/app';
const String _baseWsUrl = 'ws://172.16.0.119:8787/ws/app';
const int _initialReconnectDelaySecs = 2;
const int _maxReconnectDelaySecs = 30;

@lazySingleton
class GlobalWebSocketService {
  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _subscription;
  Timer? _reconnectTimer;

  SocketStatus _status = SocketStatus.disconnected;
  bool _destroyed = false;

  /// Reconnect attempt count — used for exponential backoff.
  int _reconnectAttempt = 0;

  /// Tracks active channels so they are re-subscribed after reconnect.
  final Set<String> _activeChannels = {};

  final _eventController = StreamController<AppWebSocketEvent>.broadcast();

  // ── Public getters ───────────────────────────────────────────────────────────

  /// Broadcast stream of realtime events for the UI layer to listen to.
  Stream<AppWebSocketEvent> get events => _eventController.stream;

  SocketStatus get status => _status;

  bool get isConnected => _status == SocketStatus.connected;

  void connect(String token) {
    _destroyed = false;
    if (_status != SocketStatus.disconnected) return;
    _doConnect(token);
  }

  void subscribe(String channelName) {
    _activeChannels.add(channelName);
    if (!isConnected || _channel == null) return;
    _sendRaw({'action': 'subscribe', 'channel': channelName});
    Log.d('[GlobalWebSocket] 📡 Subscribed to channel: $channelName');
  }

  void unsubscribe(String channelName) {
    _activeChannels.remove(channelName);
    if (!isConnected || _channel == null) return;
    _sendRaw({'action': 'unsubscribe', 'channel': channelName});
    Log.d('[GlobalWebSocket] 🔇 Unsubscribed from channel: $channelName');
  }

  void disconnect() {
    _destroyed = true;
    _cancelReconnect();
    _activeChannels.clear();
    _subscription?.cancel();
    _channel?.sink.close();
    _channel = null;
    _status = SocketStatus.disconnected;
    Log.d('[GlobalWebSocket] 🔌 Disconnected');
  }

  void dispose() {
    disconnect();
    _eventController.close();
  }

  Future<void> _doConnect([String? initialToken]) async {
    if (_destroyed) return;

    _status = SocketStatus.connecting;

    // Luôn lấy token mới nhất từ local storage để phòng trường hợp token cũ đã hết hạn
    final token = initialToken ?? await sl<AppPreferences>().accessToken;
    if (token.isEmpty) {
      _status = SocketStatus.disconnected;
      return;
    }

    final uri = Uri.parse('$_baseWsUrl?token=$token');

    try {
      _channel = WebSocketChannel.connect(uri);

      // Đợi kết nối (handshake) hoàn tất trước khi set connected và subscribe
      await _channel!.ready;

      _subscription = _channel!.stream.listen(
        _onMessage,
        onError: _onError,
        onDone: _onDone,
        cancelOnError: false,
      );

      _status = SocketStatus.connected;
      _reconnectAttempt = 0;
      Log.d('[GlobalWebSocket] ✅ Connected to app socket');

      _resubscribeAll();
    } catch (e) {
      Log.d('[GlobalWebSocket] ❌ Connection error: $e');
      _status = SocketStatus.disconnected;
      _scheduleReconnect();
    }
  }

  /// Re-send subscribe for every remembered channel after a reconnect.
  void _resubscribeAll() {
    if (_activeChannels.isEmpty) return;
    Log.d('[GlobalWebSocket] 🔄 Re-subscribing to channels: $_activeChannels');
    for (final ch in _activeChannels) {
      _sendRaw({'action': 'subscribe', 'channel': ch});
    }
  }

  // ── Internal: Event Handlers ─────────────────────────────────────────────────

  void _onMessage(dynamic rawMessage) {
    try {
      final json = jsonDecode(rawMessage as String) as Map<String, dynamic>;

      if (kDebugMode) {
        const encoder = JsonEncoder.withIndent('  ');
        Log.d('[GlobalWebSocket] 📥 Received:\n${encoder.convert(json)}');
      }

      final channel = json['channel'] as String? ?? '';
      final eventStr = json['event'] as String? ?? '';
      final data = (json['data'] as Map<String, dynamic>?) ?? {};

      if (channel.isNotEmpty && eventStr.isNotEmpty) {
        _eventController.add(
          AppWebSocketEvent(channel: channel, event: eventStr, data: data),
        );
      }
    } catch (e) {
      Log.d('[GlobalWebSocket] ⚠️ Parse error: $e');
    }
  }

  void _onError(Object error) {
    Log.d('[GlobalWebSocket] ⚠️ Socket error: $error');
    _status = SocketStatus.disconnected;
  }

  void _onDone() {
    Log.d('[GlobalWebSocket] 🔌 Socket closed');
    _status = SocketStatus.disconnected;
    _scheduleReconnect();
  }

  void _scheduleReconnect() {
    if (_destroyed) return;

    _cancelReconnect(); // Ensure no duplicate timers

    final delaySecs = _exponentialDelay(_reconnectAttempt);
    _reconnectAttempt++;

    Log.d(
      '[GlobalWebSocket] 🔄 Reconnecting in ${delaySecs}s '
      '(attempt $_reconnectAttempt)…',
    );

    _reconnectTimer = Timer(Duration(seconds: delaySecs), () {
      if (!_destroyed && !isConnected) {
        _doConnect();
      }
    });
  }

  void _cancelReconnect() {
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
  }

  /// Returns delay in seconds: 2 → 4 → 8 → 16 → 30 → 30 → …
  int _exponentialDelay(int attempt) {
    final delay = _initialReconnectDelaySecs * (1 << attempt.clamp(0, 4));
    return delay.clamp(_initialReconnectDelaySecs, _maxReconnectDelaySecs);
  }

  // ── Internal: Send ───────────────────────────────────────────────────────────

  void _sendRaw(Map<String, dynamic> payload) {
    try {
      _channel!.sink.add(jsonEncode(payload));
    } catch (e) {
      Log.d('[GlobalWebSocket] ⚠️ Send error: $e');
    }
  }
}
