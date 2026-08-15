import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

enum JumpStatus { idle, loading, positioning, highlighting }

class ChatJumpController extends ChangeNotifier {
  JumpStatus _status = JumpStatus.idle;
  int? _targetMessageId;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  JumpStatus get status => _status;
  bool get isJumping => _status != JumpStatus.idle;
  int? get pendingMessageId =>
      _status == JumpStatus.loading ? _targetMessageId : null;
  int? get highlightedMessageId =>
      _status == JumpStatus.highlighting ? _targetMessageId : null;

  void startJump(int messageId) {
    if (_status == JumpStatus.loading && _targetMessageId == messageId) return;

    _status = JumpStatus.loading;
    _targetMessageId = messageId;
    notifyListeners();
  }

  void onMessagesLoaded(int groupIndex, int messageId) {
    if (_status != JumpStatus.loading || _targetMessageId != messageId) return;

    _executeJump(groupIndex, messageId, jump: true);
  }

  void jumpToLoadedMessage(int groupIndex, int messageId) {
    if (_status == JumpStatus.positioning && _targetMessageId == messageId) {
      return;
    }

    _executeJump(groupIndex, messageId, jump: false);
  }

  void _executeJump(int groupIndex, int messageId, {required bool jump}) {
    _status = JumpStatus.positioning;
    _targetMessageId = messageId;
    notifyListeners();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (itemScrollController.isAttached) {
        if (jump) {
          itemScrollController.jumpTo(index: groupIndex);
          _onScrollFinished(messageId);
        } else {
          itemScrollController
              .scrollTo(
                index: groupIndex,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              )
              .then((_) {
                _onScrollFinished(messageId);
              });
        }
      } else {
        _status = JumpStatus.idle;
        _targetMessageId = null;
        notifyListeners();
      }
    });
  }

  void _onScrollFinished(int messageId) {
    // Nêu user đã click jump sang tin nhắn khác trong lúc đang scroll thì bỏ qua
    if (_status != JumpStatus.positioning || _targetMessageId != messageId) {
      return;
    }

    _status = JumpStatus.highlighting;
    notifyListeners();

    Future.delayed(const Duration(seconds: 2), () {
      if (_status == JumpStatus.highlighting && _targetMessageId == messageId) {
        _status = JumpStatus.idle;
        _targetMessageId = null;
        notifyListeners();
      }
    });
  }

  void cancelJump() {
    _status = JumpStatus.idle;
    _targetMessageId = null;
    notifyListeners();
  }
}
