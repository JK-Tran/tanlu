import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';

@lazySingleton
class SocketService {
  io.Socket? _socket;
  final SharedPreferences _prefs;

  SocketService(this._prefs);

  void connect(String url) {
    if (_socket != null) {
      if (_socket!.connected) return;
      _socket!.disconnect();
      _socket!.dispose();
    }

    final token = _prefs.getString(StorageKeys.authToken);

    _socket = io.io(
      url,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .enableForceNew()
          .setAuth({'token': token})
          .build(),
    );

    _socket!.connect();

    _socket!.onConnect((_) {
      appLogger.i('Connected to chat server via socket');
    });

    _socket!.onDisconnect((_) {
      appLogger.i('Disconnected from chat server');
    });

    _socket!.onError((data) {
      appLogger.e('Socket Error: $data');
    });
  }

  void disconnect() {
    _socket?.disconnect();
    _socket?.dispose();
    _socket = null;
  }

  void joinConversation(int conversationId) {
    _socket?.emit('join_conversation', conversationId);
    appLogger.i('Joined conversation: $conversationId via socket');
  }

  void leaveConversation(int conversationId) {
    _socket?.emit('leave_conversation', conversationId);
    appLogger.i('Left conversation: $conversationId via socket');
  }

  void sendMessage(Map<String, dynamic> data, Function(dynamic) onAck) {
    _socket?.emitWithAck('send_message', data, ack: onAck);
  }

  void onNewMessage(Function(dynamic) callback) {
    _socket?.on('new_message', callback);
  }

  void offNewMessage([Function(dynamic)? callback]) {
    if (callback != null) {
      _socket?.off('new_message', callback);
    } else {
      _socket?.off('new_message');
    }
  }

  void markRead(int conversationId) {
    _socket?.emit('mark_read', {'conversationId': conversationId});
    appLogger.i('Marked conversation $conversationId as read via socket');
  }

  void onMessagesRead(Function(dynamic) callback) {
    _socket?.on('messages_read', callback);
  }

  void offMessagesRead([Function(dynamic)? callback]) {
    if (callback != null) {
      _socket?.off('messages_read', callback);
    } else {
      _socket?.off('messages_read');
    }
  }

  void onUserOnline(Function(dynamic) callback) {
    _socket?.on('user_online', callback);
  }

  void offUserOnline([Function(dynamic)? callback]) {
    if (callback != null) {
      _socket?.off('user_online', callback);
    } else {
      _socket?.off('user_online');
    }
  }

  void onUserOffline(Function(dynamic) callback) {
    _socket?.on('user_offline', callback);
  }

  void offUserOffline([Function(dynamic)? callback]) {
    if (callback != null) {
      _socket?.off('user_offline', callback);
    } else {
      _socket?.off('user_offline');
    }
  }
}
