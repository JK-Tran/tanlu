import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/data/model/chat_message_data.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_message_mapper.dart';
import 'package:tanlu_management/features/chat/domain/entity/enums/message_status.dart';
import 'package:tanlu_management/features/chat/domain/entity/enums/message_type.dart';
import 'package:tanlu_management/core/notification/notification_type.dart';
import 'package:tanlu_management/features/chat/domain/usecases/create_chat_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_contacts_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_conversations_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_messages_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_message_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_reaction_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_revoke_usecase.dart';
import 'package:tanlu_management/features/chat/domain/usecases/update_message_read_status_usecase.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_reaction.dart';
import 'package:tanlu_management/shared/services/socket/global_web_socket_service.dart';
import 'package:tanlu_management/shared/services/socket/socket_event.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@lazySingleton
class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc(
    this._getConversationsUseCase,
    this._getMessagesUseCase,
    this._submitMessageUseCase,
    this._submitReactionUseCase,
    this._submitRevokeUseCase,
    this._updateMessageReadStatusUseCase,
    this._getContactsUseCase,
    this._createChatUseCase,
    this._globalWebSocketService,
    this._chatMessageMapper,
  ) : super(const ChatState()) {
    on<LoadConversations>(_onLoadConversations);
    on<SelectConversation>(_onSelectConversation);
    on<ClearCurrentConversation>(_onClearCurrentConversation);
    on<LoadMessages>(_onLoadMessages);
    on<LoadBeforeMessages>(_onLoadBeforeMessages);
    on<LoadAfterMessages>(_onLoadAfterMessages);
    on<JumpToMessage>(_onJumpToMessage);
    on<SendMessage>(_onSendMessage);
    on<MessageReceived>(_onMessageReceived);
    on<MessageRead>(_onMessageRead);
    on<WsMessageRead>(_onWsMessageRead);
    on<LoadContacts>(_onLoadContacts);
    on<InitConversation>(_onInitConversation);
    on<SearchConversations>(_onSearchConversations);
    on<RevokeMessage>(_onRevokeMessage);
    on<ReactMessage>(_onReactMessage);
    on<WsMessageRevoked>(_onWsMessageRevoked);
    on<WsMessageReacted>(_onWsMessageReacted);
    on<SyncOnlineUsers>(_onSyncOnlineUsers);
    on<UserOnline>(_onUserOnline);
    on<UserOffline>(_onUserOffline);

    // Listen to global socket service
    _socketSubscription = _globalWebSocketService.events.listen((wsEvent) {
      if (wsEvent.event == NotificationType.newMessage.value &&
          wsEvent.data.isNotEmpty) {
        final messageData = ChatMessageData.fromJson(wsEvent.data);
        final message = _chatMessageMapper.mapToEntity(messageData);

        // Theo docs:
        // - channel user_<id>: chỉ cập nhật inbox (inboxOnly = true)
        // - channel conversation_<id>: cập nhật inbox + thêm vào chat detail
        final isFromPersonalChannel = wsEvent.channel.startsWith('user_');
        add(
          ChatEvent.messageReceived(message, inboxOnly: isFromPersonalChannel),
        );
      } else if (wsEvent.event == _kSocketEventMessageRead &&
          wsEvent.data.isNotEmpty) {
        // payload: { messageId: int, userId: int }
        final messageId = wsEvent.data['messageId'] as int?;
        final userId = wsEvent.data['userId'] as int?;
        if (messageId != null && userId != null) {
          add(ChatEvent.wsMessageRead(messageId: messageId, userId: userId));
        }
      } else if (wsEvent.event == 'MESSAGE_REVOKED' &&
          wsEvent.data.isNotEmpty) {
        final messageId = wsEvent.data['messageId'] as int?;
        final conversationId = wsEvent.data['conversationId'] as int?;
        if (messageId != null && conversationId != null) {
          add(
            ChatEvent.wsMessageRevoked(
              messageId: messageId,
              conversationId: conversationId,
            ),
          );
        }
      } else if (wsEvent.event == 'MESSAGE_REACTED' &&
          wsEvent.data.isNotEmpty) {
        final messageId = wsEvent.data['messageId'] as int?;
        final userId = wsEvent.data['userId'] as int?;
        final reactionType = wsEvent.data['reactionType'] as int?;
        final conversationId = wsEvent.data['conversationId'] as int?;
        if (messageId != null &&
            userId != null &&
            reactionType != null &&
            conversationId != null) {
          add(
            ChatEvent.wsMessageReacted(
              messageId: messageId,
              userId: userId,
              reactionType: reactionType,
              conversationId: conversationId,
            ),
          );
        }
      } else if (wsEvent.event == 'SYNC_ONLINE_USERS' &&
          wsEvent.data.isNotEmpty) {
        final onlineUsers = List<int>.from(wsEvent.data['onlineUsers'] ?? []);
        add(ChatEvent.syncOnlineUsers(onlineUsers));
      } else if (wsEvent.event == 'USER_ONLINE' && wsEvent.data.isNotEmpty) {
        final userId = wsEvent.data['userId'] as int?;
        if (userId != null) add(ChatEvent.userOnline(userId));
      } else if (wsEvent.event == 'USER_OFFLINE' && wsEvent.data.isNotEmpty) {
        final userId = wsEvent.data['userId'] as int?;
        if (userId != null) add(ChatEvent.userOffline(userId));
      }
    });
  }

  final GetConversationsUseCase _getConversationsUseCase;
  final GetMessagesUseCase _getMessagesUseCase;
  final SubmitMessageUseCase _submitMessageUseCase;
  final SubmitReactionUseCase _submitReactionUseCase;
  final SubmitRevokeUseCase _submitRevokeUseCase;
  final UpdateMessageReadStatusUseCase _updateMessageReadStatusUseCase;
  final GetContactsUseCase _getContactsUseCase;
  final CreateChatUseCase _createChatUseCase;
  final GlobalWebSocketService _globalWebSocketService;
  final ChatMessageMapper _chatMessageMapper;

  StreamSubscription<AppWebSocketEvent>? _socketSubscription;
  static const int _limit = 20;
  static const String _kSocketEventMessageRead = 'MESSAGE_READ';

  @override
  Future<void> close() {
    _socketSubscription?.cancel();
    // Do NOT disconnect global socket service here, as it might be used by other parts of the app.
    if (state.currentConversationId != null) {
      _globalWebSocketService.unsubscribe(
        'conversation_${state.currentConversationId}',
      );
    }
    return super.close();
  }

  Future<void> _onLoadConversations(
    LoadConversations event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isLoadingConversations) return;
    if (state.hasReachedMaxConversations && !event.isRefresh) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final isFirstPage = event.isRefresh || state.conversationsPage == 1;
        if (isFirstPage) {
          emit(state.copyWith(isLoadingConversations: true, onPageError: ''));
        }

        final page = isFirstPage ? 1 : state.conversationsPage;
        final output = await _getConversationsUseCase.execute(
          GetConversationsInput(page: page, limit: _limit),
        );

        final newConversations = output.data.data;
        final hasReachedMax = newConversations.length < _limit;

        emit(
          state.copyWith(
            conversations: isFirstPage
                ? newConversations
                : [...state.conversations, ...newConversations],
            hasReachedMaxConversations: hasReachedMax,
            conversationsPage: page + 1,
            isLoadingConversations: false,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoadingConversations: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  void _onSelectConversation(
    SelectConversation event,
    Emitter<ChatState> emit,
  ) {
    if (state.currentConversationId != null) {
      _globalWebSocketService.unsubscribe(
        'conversation_${state.currentConversationId}',
      );
    }
    _globalWebSocketService.subscribe('conversation_${event.conversationId}');
    emit(state.copyWith(currentConversationId: event.conversationId));

    // Reset unreadCount về 0 cho conversation này trong inbox

    final updatedConversations = state.conversations.map((c) {
      if (c.id == event.conversationId) {
        return c.copyWith(unreadCount: 0);
      }
      return c;
    }).toList();

    emit(
      state.copyWith(
        currentConversationId: event.conversationId,
        conversations: updatedConversations,
        messages: [],
      ),
    );
    add(ChatEvent.loadMessages(conversationId: event.conversationId));
  }

  Future<void> _onLoadMessages(
    LoadMessages event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingMessages: true, onPageError: ''));

        final output = await _getMessagesUseCase.execute(
          GetMessagesInput(
            conversationId: event.conversationId,
            limit: _limit,
          ),
        );

        final newMessages = output.data.messages.reversed.toList();

        emit(
          state.copyWith(
            messages: newMessages,
            beforeCursor: output.data.pagination?.beforeCursor,
            afterCursor: output.data.pagination?.afterCursor,
            hasMoreBefore: output.data.pagination?.hasMoreBefore ?? false,
            hasMoreAfter: output.data.pagination?.hasMoreAfter ?? false,
            isLoadingMessages: false,
          ),
        );

        if (newMessages.isNotEmpty && newMessages.first.id != 0) {
          add(ChatEvent.messageRead(event.conversationId, newMessages.first.id));
        }
      },
      doOnError: (e) {
        emit(state.copyWith(
          isLoadingMessages: false,
          onPageError: ErrorMapper.getMessage(e),
        ));
      },
    );
  }

  Future<void> _onLoadBeforeMessages(
    LoadBeforeMessages event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isLoadingBefore || !state.hasMoreBefore || state.isLoadingMessages) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingBefore: true, onPageError: ''));

        final output = await _getMessagesUseCase.execute(
          GetMessagesInput(
            conversationId: event.conversationId,
            limit: _limit,
            before: state.beforeCursor,
          ),
        );

        final newMessages = output.data.messages.reversed.toList();

        emit(
          state.copyWith(
            messages: [...state.messages, ...newMessages], // Append list for older messages (reverse view)
            beforeCursor: output.data.pagination?.beforeCursor,
            hasMoreBefore: output.data.pagination?.hasMoreBefore ?? false,
            isLoadingBefore: false,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(
          isLoadingBefore: false,
          onPageError: ErrorMapper.getMessage(e),
        ));
      },
    );
  }

  Future<void> _onLoadAfterMessages(
    LoadAfterMessages event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isLoadingAfter || !state.hasMoreAfter || state.isLoadingMessages) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingAfter: true, onPageError: ''));

        final output = await _getMessagesUseCase.execute(
          GetMessagesInput(
            conversationId: event.conversationId,
            limit: _limit,
            after: state.afterCursor,
          ),
        );

        final newMessages = output.data.messages.reversed.toList();

        emit(
          state.copyWith(
            messages: [...newMessages, ...state.messages], // Prepend list for newer messages (reverse view)
            afterCursor: output.data.pagination?.afterCursor,
            hasMoreAfter: output.data.pagination?.hasMoreAfter ?? false,
            isLoadingAfter: false,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(
          isLoadingAfter: false,
          onPageError: ErrorMapper.getMessage(e),
        ));
      },
    );
  }

  Future<void> _onJumpToMessage(
    JumpToMessage event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingMessages: true, onPageError: ''));

        final output = await _getMessagesUseCase.execute(
          GetMessagesInput(
            conversationId: event.conversationId,
            targetMessageId: event.targetMessageId,
            limit: _limit,
          ),
        );

        final newMessages = output.data.messages.reversed.toList();

        emit(
          state.copyWith(
            messages: newMessages,
            beforeCursor: output.data.pagination?.beforeCursor,
            afterCursor: output.data.pagination?.afterCursor,
            hasMoreBefore: output.data.pagination?.hasMoreBefore ?? false,
            hasMoreAfter: output.data.pagination?.hasMoreAfter ?? false,
            isLoadingMessages: false,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(
          isLoadingMessages: false,
          onPageError: ErrorMapper.getMessage(e),
        ));
      },
    );
  }

  Future<void> _onSendMessage(
    SendMessage event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSendingMessage: true, onPageError: ''));

        await _submitMessageUseCase.execute(
          SubmitMessageInput(
            conversationId: event.conversationId,
            content: event.content,
            type: event.type,
            fileUrl: event.fileUrl,
            replyToId: event.replyToId,
          ),
        );

        // Không tự thêm message vào list — BE sẽ broadcast NEW_MESSAGE qua WS
        // và _onMessageReceived sẽ xử lý tập trung.
        emit(state.copyWith(isSendingMessage: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSendingMessage: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  void _onMessageReceived(MessageReceived event, Emitter<ChatState> emit) {
    final isCurrentConv =
        state.currentConversationId == event.message.conversationId;

    final index = state.conversations.indexWhere(
      (c) => c.id == event.message.conversationId,
    );
    if (index == -1) {
      // If the conversation is not in the list (e.g. a new conversation), reload the conversations list.
      add(const ChatEvent.loadConversations(isRefresh: true));
    }

    final updatedConversations = _updateConversationsWithNewMessage(
      state.conversations,
      event.message,
      isCurrentConv: isCurrentConv,
    );

    if (isCurrentConv) {
      // Tránh duplicate tin nhắn nếu nhận từ cả 2 channel (user_<id> và conversation_<id>)
      final isDuplicate = state.messages.any((m) => m.id == event.message.id);

      if (!isDuplicate) {
        emit(
          state.copyWith(
            messages: [event.message, ...state.messages],
            conversations: updatedConversations,
          ),
        );
      } else {
        emit(state.copyWith(conversations: updatedConversations));
      }

      // Tự động đánh dấu đã đọc khi đang trong conversation
      if (event.message.id != 0) {
        add(
          ChatEvent.messageRead(event.message.conversationId, event.message.id),
        );
      }
    } else {
      emit(state.copyWith(conversations: updatedConversations));
    }
  }

  void _onClearCurrentConversation(
    ClearCurrentConversation event,
    Emitter<ChatState> emit,
  ) {
    if (state.currentConversationId != null) {
      _globalWebSocketService.unsubscribe(
        'conversation_${state.currentConversationId}',
      );
      emit(state.copyWith(currentConversationId: null));
    }
  }

  /// Xử lý MESSAGE_READ nhận từ WS — cập nhật status "read" cho tin của mình
  void _onWsMessageRead(WsMessageRead event, Emitter<ChatState> emit) {
    final updatedMessages = state.messages.map((m) {
      if (m.id <= event.messageId && m.status != MessageStatus.read) {
        return m.copyWith(status: MessageStatus.read);
      }
      return m;
    }).toList();
    emit(state.copyWith(messages: updatedMessages));
  }

  List<ChatConversation> _updateConversationsWithNewMessage(
    List<ChatConversation> currentConversations,
    ChatMessage message, {
    required bool isCurrentConv,
  }) {
    final conversations = List<ChatConversation>.from(currentConversations);
    final index = conversations.indexWhere(
      (c) => c.id == message.conversationId,
    );

    if (index != -1) {
      final existing = conversations[index];
      // Tăng unreadCount chỉ khi: tin từ người khác VÀ không đang trong chat đó
      final shouldIncrementUnread = !isCurrentConv;
      final newUnreadCount = shouldIncrementUnread
          ? existing.unreadCount + 1
          : existing.unreadCount;

      final updatedConv = existing.copyWith(
        lastMessage: message.type == MessageType.image.value
            ? '[Hình ảnh]'
            : (message.content),
        lastMessageType: message.type,
        isLastMessageRevoked: false,
        lastMessageTimestamp: message.createdAt,
        lastMessageSenderId: message.senderId,
        unreadCount: newUnreadCount,
      );
      conversations.removeAt(index);
      conversations.insert(0, updatedConv);
    }
    return conversations;
  }

  Future<void> _onMessageRead(
    MessageRead event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _updateMessageReadStatusUseCase.execute(
          UpdateMessageReadStatusInput(
            conversationId: event.conversationId,
            messageId: event.messageId,
          ),
        );
      },
    );
  }

  Future<void> _onLoadContacts(
    LoadContacts event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isLoadingContacts) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingContacts: true, onPageError: ''));
        final output = await _getContactsUseCase.execute(
          const GetContactsInput(),
        );
        emit(
          state.copyWith(contacts: output.contacts, isLoadingContacts: false),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoadingContacts: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onInitConversation(
    InitConversation event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isInitializingChat: true, onPageError: ''));
        final output = await _createChatUseCase.execute(
          CreateChatInput(targetUserId: event.targetUserId),
        );
        emit(state.copyWith(isInitializingChat: false));
        event.onSuccess(output.conversationId);
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isInitializingChat: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  void _onSearchConversations(
    SearchConversations event,
    Emitter<ChatState> emit,
  ) {
    emit(state.copyWith(searchQuery: event.query));
  }

  Future<void> _onRevokeMessage(
    RevokeMessage event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _submitRevokeUseCase.execute(
          SubmitRevokeInput(
            conversationId: event.conversationId,
            messageId: event.messageId,
          ),
        );
      },
    );
  }

  Future<void> _onReactMessage(
    ReactMessage event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _submitReactionUseCase.execute(
          SubmitReactionInput(
            conversationId: event.conversationId,
            messageId: event.messageId,
            reactionType: event.reactionType,
          ),
        );
      },
    );
  }

  void _onWsMessageRevoked(WsMessageRevoked event, Emitter<ChatState> emit) {
    bool isLastMessage = false;
    List<ChatMessage> updatedMessages = state.messages;

    if (state.currentConversationId == event.conversationId) {
      updatedMessages = state.messages.map((m) {
        if (m.id == event.messageId) {
          return m.copyWith(isRevoked: true);
        }
        return m;
      }).toList();

      if (updatedMessages.isNotEmpty &&
          updatedMessages.first.id == event.messageId) {
        isLastMessage = true;
      }
    }

    final updatedConversations = state.conversations.map((c) {
      if (c.id == event.conversationId) {
        if (isLastMessage) {
          return c.copyWith(isLastMessageRevoked: true);
        }
      }
      return c;
    }).toList();

    emit(
      state.copyWith(
        messages: updatedMessages,
        conversations: updatedConversations,
      ),
    );

    // Reload conversations to ensure it's fully synced if it was revoked from outside the active chat
    add(const ChatEvent.loadConversations(isRefresh: true));
  }

  void _onWsMessageReacted(WsMessageReacted event, Emitter<ChatState> emit) {
    if (state.currentConversationId != event.conversationId) return;

    final updatedMessages = state.messages.map((m) {
      if (m.id == event.messageId) {
        final existingReactions = List<ChatReaction>.from(m.reactions);
        existingReactions.removeWhere((r) => r.userId == event.userId);
        if (event.reactionType > 0) {
          existingReactions.add(
            ChatReaction(
              userId: event.userId,
              reactionType: event.reactionType,
            ),
          );
        }
        return m.copyWith(reactions: existingReactions);
      }
      return m;
    }).toList();

    emit(state.copyWith(messages: updatedMessages));
  }

  void _onSyncOnlineUsers(SyncOnlineUsers event, Emitter<ChatState> emit) {
    emit(state.copyWith(onlineUserIds: event.userIds));
  }

  void _onUserOnline(UserOnline event, Emitter<ChatState> emit) {
    if (!state.onlineUserIds.contains(event.userId)) {
      emit(
        state.copyWith(onlineUserIds: [...state.onlineUserIds, event.userId]),
      );
    }
  }

  void _onUserOffline(UserOffline event, Emitter<ChatState> emit) {
    if (state.onlineUserIds.contains(event.userId)) {
      final updatedList = List<int>.from(state.onlineUserIds)
        ..remove(event.userId);
      emit(state.copyWith(onlineUserIds: updatedList));
    }
  }
}
