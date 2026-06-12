import 'dart:async';
import 'package:collection/collection.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_user.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/features/chat/data/mapper/message_data_mapper.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_conversations_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_contacts_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_messages_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/send_message_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/create_conversation_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/mark_messages_as_read_use_case.dart';
import 'package:tanlu_management/shared/services/socket_io/socket.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@lazySingleton
class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc(
    this._getConversationsUseCase,
    this._getContactsUseCase,
    this._getMessagesUseCase,
    this._sendMessageUseCase,
    this._createConversationUseCase,
    this._markMessagesAsReadUseCase,
    this._socketService,
    this._messageDataMapper,
  ) : super(const ChatState()) {
    on<ChatStarted>(_onStarted);
    on<ClearChat>(_onClearChat);
    on<FetchContacts>(_onFetchContacts);
    on<FetchConversations>(_onFetchConversations);
    on<SelectConversation>(_onSelectConversation);
    on<FetchMessages>(_onFetchMessages);
    on<SendChatMessage>(_onSendMessage);
    on<ReceiveMessage>(_onReceiveMessage);
    on<CreateChatConversation>(_onCreateConversation);
    on<ChatUserOnline>(_onChatUserOnline);
    on<ChatUserOffline>(_onChatUserOffline);
    on<MessagesRead>(_onMessagesRead);
  }

  final GetConversationsUseCase _getConversationsUseCase;
  final GetContactsUseCase _getContactsUseCase;
  final GetMessagesUseCase _getMessagesUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final CreateConversationUseCase _createConversationUseCase;
  final MarkMessagesAsReadUseCase _markMessagesAsReadUseCase;
  final SocketService _socketService;
  final MessageDataMapper _messageDataMapper;

  Future<void> _onStarted(ChatStarted event, Emitter<ChatState> emit) async {
    add(const FetchContacts());
    add(const FetchConversations());

    _socketService.offNewMessage();
    _socketService.onNewMessage((data) {
      appLogger.i('💬 [Socket] Received new message data: $data');
      if (data != null && data is Map<String, dynamic>) {
        try {
          final messageData = MessageData.fromJson(data);
          final message = _messageDataMapper.mapToEntity(messageData);
          add(ReceiveMessage(message));
        } catch (e) {
          // Bỏ qua nếu có lỗi parse dữ liệu socket
        }
      }
    });

    _socketService.onUserOnline((data) {
      if (data != null && data['userId'] != null) {
        add(ChatUserOnline(data['userId'] as int));
      }
    });

    _socketService.onUserOffline((data) {
      if (data != null && data['userId'] != null) {
        add(ChatUserOffline(data['userId'] as int));
      }
    });

    _socketService.onMessagesRead((data) {
      if (data != null &&
          data['conversationId'] != null &&
          data['readBy'] != null) {
        add(
          MessagesRead(
            conversationId: data['conversationId'] as int,
            readBy: data['readBy'] as int,
          ),
        );
      }
    });
  }

  Future<void> _onClearChat(ClearChat event, Emitter<ChatState> emit) async {
    _socketService.offNewMessage();
    emit(const ChatState());
  }

  Future<void> _onFetchContacts(
    FetchContacts event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, pageError: ''));
        final output = await _getContactsUseCase.execute(
          const GetContactsInput(),
        );
        emit(state.copyWith(isLoading: false, contacts: output.contacts));
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onFetchConversations(
    FetchConversations event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, pageError: ''));
        final output = await _getConversationsUseCase.execute(
          const GetConversationsInput(),
        );

        // Tự động join socket vào tất cả các phòng chat để có thể nhận tin nhắn ở màn hình danh sách
        for (var conv in output.conversations) {
          _socketService.joinConversation(conv.id);
        }

        emit(
          state.copyWith(isLoading: false, conversations: output.conversations),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onSelectConversation(
    SelectConversation event,
    Emitter<ChatState> emit,
  ) async {
    final updatedConversations = List<Conversation>.from(state.conversations);
    final index = updatedConversations.indexWhere(
      (c) => c.id == event.conversation.id,
    );

    if (index != -1) {
      final conv = updatedConversations[index];
      // Chỉ set isRead = true cho những tin nhắn do người khác gửi (người gửi nằm trong danh bạ)
      // Không set isRead = true cho tin nhắn của chính mình gửi
      final updatedMessages = conv.messages.map((m) {
        final isOtherPerson = state.contacts.any((c) => c.id == m.senderId);
        if (isOtherPerson) {
          return m.copyWith(isRead: true);
        }
        return m;
      }).toList();
      updatedConversations[index] = conv.copyWith(messages: updatedMessages);
    }

    emit(
      state.copyWith(
        currentConversation: event.conversation,
        currentMessages: [],
        conversations: updatedConversations,
      ),
    );

    _socketService.joinConversation(event.conversation.id);
    _socketService.markRead(event.conversation.id);
    _markMessagesAsReadUseCase.execute(
      MarkMessagesAsReadInput(conversationId: event.conversation.id),
    );

    add(FetchMessages(event.conversation.id));
  }

  Future<void> _onFetchMessages(
    FetchMessages event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, pageError: ''));
        final output = await _getMessagesUseCase.execute(
          GetMessagesInput(conversationId: event.conversationId),
        );
        emit(
          state.copyWith(
            isLoading: false,
            currentMessages: output.messages.reversed.toList(),
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onSendMessage(
    SendChatMessage event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true, submitError: ''));

        appLogger.i('💬 [API] Sending new message: ${event.text}');

        final output = await _sendMessageUseCase.execute(
          SendMessageInput(
            conversationId: event.conversationId,
            text: event.text,
            file: event.file,
            fileUrl: event.fileUrl,
          ),
        );

        final updatedConversations = List<Conversation>.from(
          state.conversations,
        );
        final index = updatedConversations.indexWhere(
          (c) => c.id == event.conversationId,
        );
        if (index != -1) {
          final conv = updatedConversations.removeAt(index);
          final existsInConv = conv.messages.any(
            (m) => m.id == output.message.id,
          );
          updatedConversations.insert(
            0,
            conv.copyWith(
              updatedAt: output.message.createdAt,
              messages: existsInConv
                  ? conv.messages
                  : [...conv.messages, output.message],
            ),
          );
        }

        final existsInCurrent = state.currentMessages.any(
          (m) => m.id == output.message.id,
        );

        emit(
          state.copyWith(
            isSubmitting: false,
            currentMessages: existsInCurrent
                ? state.currentMessages
                : [output.message, ...state.currentMessages],
            conversations: updatedConversations,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false, submitError: e.toString()));
      },
    );
  }

  Future<void> _onReceiveMessage(
    ReceiveMessage event,
    Emitter<ChatState> emit,
  ) async {
    final updatedConversations = List<Conversation>.from(state.conversations);
    final index = updatedConversations.indexWhere(
      (c) => c.id == event.message.conversationId,
    );

    if (index != -1) {
      // Check if message already exists in conversation
      final conv = updatedConversations[index];
      final exists = conv.messages.any((m) => m.id == event.message.id);
      if (!exists) {
        updatedConversations.removeAt(index);
        updatedConversations.insert(
          0,
          conv.copyWith(
            updatedAt: event.message.createdAt,
            messages: [...conv.messages, event.message],
          ),
        );
      }
    }

    if (state.currentConversation != null &&
        state.currentConversation!.id == event.message.conversationId) {
      final existsInCurrent = state.currentMessages.any(
        (m) => m.id == event.message.id,
      );
      if (!existsInCurrent) {
        emit(
          state.copyWith(
            currentMessages: [event.message, ...state.currentMessages],
            conversations: updatedConversations,
          ),
        );
        return;
      }
    }

    emit(state.copyWith(conversations: updatedConversations));
  }

  Future<void> _onCreateConversation(
    CreateChatConversation event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true, submitError: ''));
        final output = await _createConversationUseCase.execute(
          CreateConversationInput(
            participantIds: event.participantIds,
            type: event.type,
            name: event.name,
          ),
        );

        final enrichedParticipants = output.conversation.participants.map((p) {
          if (p.user == null) {
            final contact = state.contacts.firstWhereOrNull(
              (c) => c.id == p.userId,
            );
            if (contact != null) {
              return p.copyWith(
                user: ChatUser(
                  id: contact.id,
                  fullName: contact.fullName,
                  avatarFileId: contact.avatarFileId,
                ),
              );
            }
          }
          return p;
        }).toList();

        final enrichedConversation = output.conversation.copyWith(
          participants: enrichedParticipants,
        );

        final updatedConversations = [
          enrichedConversation,
          ...state.conversations,
        ];

        emit(
          state.copyWith(
            isSubmitting: false,
            conversations: updatedConversations,
          ),
        );

        add(SelectConversation(enrichedConversation));
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false, submitError: e.toString()));
      },
    );
  }

  Future<void> _onChatUserOnline(
    ChatUserOnline event,
    Emitter<ChatState> emit,
  ) async {
    final updatedSet = Set<int>.from(state.onlineUserIds);
    updatedSet.add(event.userId);
    emit(state.copyWith(onlineUserIds: updatedSet));
  }

  Future<void> _onChatUserOffline(
    ChatUserOffline event,
    Emitter<ChatState> emit,
  ) async {
    final updatedSet = Set<int>.from(state.onlineUserIds);
    updatedSet.remove(event.userId);
    emit(state.copyWith(onlineUserIds: updatedSet));
  }

  Future<void> _onMessagesRead(
    MessagesRead event,
    Emitter<ChatState> emit,
  ) async {
    if (state.currentConversation != null &&
        state.currentConversation!.id == event.conversationId) {
      final updatedMessages = state.currentMessages.map((m) {
        return m.copyWith(isRead: true);
      }).toList();
      emit(state.copyWith(currentMessages: updatedMessages));
    }

    final updatedConversations = List<Conversation>.from(state.conversations);
    final index = updatedConversations.indexWhere(
      (c) => c.id == event.conversationId,
    );
    if (index != -1) {
      final conv = updatedConversations[index];
      final updatedConvMessages = conv.messages.map((m) {
        return m.copyWith(isRead: true);
      }).toList();
      updatedConversations[index] = conv.copyWith(
        messages: updatedConvMessages,
      );
      emit(state.copyWith(conversations: updatedConversations));
    }
  }

  @override
  Future<void> close() {
    _socketService.offNewMessage();
    _socketService.offUserOnline();
    _socketService.offUserOffline();
    _socketService.offMessagesRead();
    return super.close();
  }
}
