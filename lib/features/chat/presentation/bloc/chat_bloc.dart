import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/features/chat/domain/usecases/create_conversation_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/get_contacts_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/mark_messages_as_read_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/stream_conversations_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/stream_friend_requests_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/stream_messages_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_friend_decision_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_friend_request_use_case.dart';
import 'package:tanlu_management/features/chat/domain/usecases/submit_message_use_case.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_conversation_factory.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_message_merge.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_incoming_banner_service.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@lazySingleton
class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc(
    this._getContactsUseCase,
    this._streamConversationsUseCase,
    this._streamMessagesUseCase,
    this._streamFriendRequestsUseCase,
    this._createConversationUseCase,
    this._submitMessageUseCase,
    this._markMessagesAsReadUseCase,
    this._submitFriendRequestUseCase,
    this._submitFriendDecisionUseCase,
    this._chatRepository,
    this._chatIncomingBannerService,
  ) : super(const ChatState()) {
    on<ChatStarted>(_onChatStarted);
    on<ClearChat>(_onClearChat);
    on<FetchContacts>(_onFetchContacts);
    on<OpenDirectChat>(_onOpenDirectChat);
    on<SelectConversation>(_onSelectConversation);
    on<ClearCurrentConversation>(_onClearCurrentConversation);
    on<SendChatMessage>(_onSendMessage);
    on<LoadOlderMessages>(_onLoadOlderMessages);
    on<CreateChatConversation>(_onCreateConversation);
    on<SubmitFriendRequest>(_onSubmitFriendRequest);
    on<SubmitFriendDecision>(_onSubmitFriendDecision);
    on<OpenConversationFromPush>(_onOpenConversationFromPush);
    on<ClearPresentConversationFlag>(_onClearPresentConversationFlag);
    on<_ConversationsUpdated>(_onConversationsUpdated);
    on<_MessagesUpdated>(_onMessagesUpdated);
    on<_FriendRequestsUpdated>(_onFriendRequestsUpdated);
  }

  final GetContactsUseCase _getContactsUseCase;
  final StreamConversationsUseCase _streamConversationsUseCase;
  final StreamMessagesUseCase _streamMessagesUseCase;
  final StreamFriendRequestsUseCase _streamFriendRequestsUseCase;
  final CreateConversationUseCase _createConversationUseCase;
  final SubmitMessageUseCase _submitMessageUseCase;
  final MarkMessagesAsReadUseCase _markMessagesAsReadUseCase;
  final SubmitFriendRequestUseCase _submitFriendRequestUseCase;
  final SubmitFriendDecisionUseCase _submitFriendDecisionUseCase;
  final ChatRepository _chatRepository;
  final ChatIncomingBannerService _chatIncomingBannerService;

  StreamSubscription<List<Conversation>>? _conversationsSubscription;
  StreamSubscription<List<Message>>? _messagesSubscription;
  StreamSubscription<List<FriendRequest>>? _friendRequestsSubscription;

  Author get _currentUser => Author(
    id: state.currentUserId,
    fullName: state.fullName,
    avatar: state.avatar,
    role: state.role,
  );

  @override
  Future<void> close() {
    _conversationsSubscription?.cancel();
    _messagesSubscription?.cancel();
    _friendRequestsSubscription?.cancel();
    return super.close();
  }

  Future<void> _onChatStarted(
    ChatStarted event,
    Emitter<ChatState> emit,
  ) async {
    if (event.userId.isEmpty) {
      emit(state.copyWith(onPageError: 'Chưa đăng nhập', isLoading: false));
      return;
    }

    emit(
      state.copyWith(
        currentUserId: event.userId,
        classId: event.classId,
        centerId: event.centerId,
        fullName: event.fullName,
        avatar: event.avatar,
        role: event.role,
        onPageError: '',
        submitError: '',
      ),
    );

    await _loadContacts(emit);
    _subscribeConversations(event.userId);
    _subscribeFriendRequests(event.userId);
  }

  Future<void> _onClearChat(ClearChat event, Emitter<ChatState> emit) async {
    await _conversationsSubscription?.cancel();
    await _messagesSubscription?.cancel();
    await _friendRequestsSubscription?.cancel();
    _conversationsSubscription = null;
    _messagesSubscription = null;
    _friendRequestsSubscription = null;
    emit(const ChatState());
  }

  Future<void> _onFetchContacts(
    FetchContacts event,
    Emitter<ChatState> emit,
  ) async {
    await _loadContacts(emit);
  }

  Future<void> _onOpenDirectChat(
    OpenDirectChat event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(submitError: ''));

        final existing = ChatConversationFactory.findDirectConversation(
          conversations: state.conversations,
          contactId: event.contact.id,
        );

        final conversation = _enrichConversationWithContact(
          existing ??
              (await _createConversationUseCase.execute(
                CreateConversationInput(
                  currentUser: _currentUser,
                  participantIds: [event.contact.id],
                  type: 'direct',
                  classId: state.classId,
                  centerId: state.centerId,
                ),
              ))
                  .conversation,
          event.contact,
        );

        emit(
          state.copyWith(
            currentConversation: conversation,
            submitError: '',
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(submitError: e.toString()));
      },
    );
  }

  Future<void> _onSelectConversation(
    SelectConversation event,
    Emitter<ChatState> emit,
  ) async {
    final conversation = event.conversation;

    if (state.currentConversation?.id == conversation.id &&
        _messagesSubscription != null) {
      return;
    }

    final cleared = _clearUnreadInList(conversation.id);

    emit(
      state.copyWith(
        conversations: cleared,
        currentConversation: conversation.copyWith(unreadCount: 0),
        currentMessages: const [],
        isLoadingMessages: true,
        isLoadingOlderMessages: false,
        hasMoreOlderMessages: true,
        submitError: '',
      ),
    );

    await _markMessagesAsReadUseCase.execute(
      MarkMessagesAsReadInput(
        conversationId: conversation.id,
        currentUserId: state.currentUserId,
      ),
    );

    _subscribeMessages(conversation.id);

    emit(state.copyWith(isLoadingMessages: false));
  }

  List<Conversation> _clearUnreadInList(String conversationId) {
    return state.conversations
        .map((c) => c.id == conversationId ? c.copyWith(unreadCount: 0) : c)
        .toList();
  }

  Conversation _enrichConversationWithContact(
    Conversation conversation,
    Contact contact,
  ) {
    final members = conversation.members.isNotEmpty
        ? conversation.members
        : [
            Participant(
              userId: contact.id,
              fullName: contact.fullName,
              avatar: contact.avatar,
              role: contact.role,
            ),
          ];

    return conversation.copyWith(
      name: conversation.name.isEmpty ? contact.fullName : conversation.name,
      members: members,
    );
  }

  Future<void> _onClearCurrentConversation(
    ClearCurrentConversation event,
    Emitter<ChatState> emit,
  ) async {
    await _messagesSubscription?.cancel();
    _messagesSubscription = null;
    emit(
      state.copyWith(
        currentConversation: null,
        currentMessages: const [],
        isLoadingMessages: false,
      ),
    );
  }

  Future<void> _onSendMessage(
    SendChatMessage event,
    Emitter<ChatState> emit,
  ) async {
    final pendingId = ChatMessageMerge.createPendingId();
    final optimistic = Message(
      id: pendingId,
      conversationId: event.conversationId,
      senderId: state.currentUserId,
      receiverId: event.receiverId,
      text: event.text.trim(),
      type: event.type,
      fileUrl: event.fileUrl,
      status: 'sending',
      isRead: true,
      createdAt: DateTime.now(),
      sender: _currentUser,
    );

    emit(
      state.copyWith(
        currentMessages: [...state.currentMessages, optimistic],
        submitError: '',
      ),
    );

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSubmitting: true));

        await _submitMessageUseCase.execute(
          SubmitMessageInput(
            conversationId: event.conversationId,
            sender: _currentUser,
            receiverId: event.receiverId,
            text: event.text,
            type: event.type,
            fileUrl: event.fileUrl,
          ),
        );

        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            submitError: e.toString(),
            currentMessages: ChatMessageMerge.withoutPending(
              state.currentMessages,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onCreateConversation(
    CreateChatConversation event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSubmitting: true, submitError: ''));

        final output = await _createConversationUseCase.execute(
          CreateConversationInput(
            currentUser: _currentUser,
            participantIds: event.participantIds,
            type: event.type,
            name: event.name,
            classId: state.classId,
            centerId: state.centerId,
          ),
        );

        emit(state.copyWith(isSubmitting: false));
        add(SelectConversation(output.conversation));
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false, submitError: e.toString()));
      },
    );
  }

  Future<void> _onSubmitFriendRequest(
    SubmitFriendRequest event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(submitError: ''));

        await _submitFriendRequestUseCase.execute(
          SubmitFriendRequestInput(
            fromUserId: state.currentUserId,
            toUserId: event.toUserId,
          ),
        );

        await _loadContacts(emit);
      },
      doOnError: (e) {
        emit(state.copyWith(submitError: e.toString()));
      },
    );
  }

  Future<void> _onSubmitFriendDecision(
    SubmitFriendDecision event,
    Emitter<ChatState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(submitError: ''));

        await _submitFriendDecisionUseCase.execute(
          SubmitFriendDecisionInput(
            requestId: event.requestId,
            accept: event.accept,
            currentUserId: state.currentUserId,
          ),
        );

        await _loadContacts(emit);
      },
      doOnError: (e) {
        emit(state.copyWith(submitError: e.toString()));
      },
    );
  }

  void _onConversationsUpdated(
    _ConversationsUpdated event,
    Emitter<ChatState> emit,
  ) {
    final previous = state.conversations;
    final conversations = event.conversations
        .where(
          (conversation) =>
              conversation.lastMessageText.trim().isNotEmpty ||
              conversation.lastMessageAt != null,
        )
        .toList();

    if (state.currentUserId.isNotEmpty) {
      for (final conversation in conversations) {
        final prev = _findConversation(previous, conversation.id);
        final isIncoming =
            conversation.lastMessageSenderId.isNotEmpty &&
            conversation.lastMessageSenderId != state.currentUserId &&
            conversation.lastMessageText.trim().isNotEmpty;
        final isNew =
            prev != null &&
            (prev.lastMessageAt != conversation.lastMessageAt ||
                prev.lastMessageText != conversation.lastMessageText);
        if (isIncoming && isNew) {
          _chatIncomingBannerService.showFromConversation(
            conversation: conversation,
            currentUserId: state.currentUserId,
          );
        }
      }
    }

    final totalUnread = conversations.fold<int>(
      0,
      (sum, conversation) => sum + conversation.unreadCount,
    );

    Conversation? currentConversation = state.currentConversation;
    if (currentConversation != null) {
      currentConversation = conversations.firstWhere(
        (conversation) => conversation.id == currentConversation!.id,
        orElse: () => currentConversation!,
      );
    }

    var pendingPushConversationId = state.pendingPushConversationId;
    var presentConversation = state.presentConversation;
    if (pendingPushConversationId.isNotEmpty) {
      final target = _findConversation(conversations, pendingPushConversationId);
      if (target != null) {
        currentConversation = target;
        pendingPushConversationId = '';
        presentConversation = true;
      }
    }

    emit(
      state.copyWith(
        conversations: conversations,
        totalUnreadCount: totalUnread,
        currentConversation: currentConversation,
        pendingPushConversationId: pendingPushConversationId,
        presentConversation: presentConversation,
      ),
    );
  }

  Conversation? _findConversation(
    List<Conversation> conversations,
    String conversationId,
  ) {
    for (final conversation in conversations) {
      if (conversation.id == conversationId) return conversation;
    }
    return null;
  }

  Future<void> _onOpenConversationFromPush(
    OpenConversationFromPush event,
    Emitter<ChatState> emit,
  ) async {
    final conversationId = event.conversationId.trim();
    if (conversationId.isEmpty) return;

    final existing = _findConversation(state.conversations, conversationId);
    if (existing != null) {
      emit(
        state.copyWith(
          currentConversation: existing,
          presentConversation: true,
          pendingPushConversationId: '',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        pendingPushConversationId: conversationId,
        presentConversation: false,
      ),
    );
  }

  void _onClearPresentConversationFlag(
    ClearPresentConversationFlag event,
    Emitter<ChatState> emit,
  ) {
    emit(state.copyWith(presentConversation: false));
  }

  void _onMessagesUpdated(_MessagesUpdated event, Emitter<ChatState> emit) {
    final mergedRecent = ChatMessageMerge.merge(
      local: state.currentMessages,
      remote: event.messages,
    );
    final historical = _extractHistoricalMessages(
      current: state.currentMessages,
      recentWindow: mergedRecent,
    );
    final combined = _combineMessageLists(historical, mergedRecent);

    if (_sameMessageList(state.currentMessages, combined) &&
        !state.isLoadingMessages) {
      return;
    }

    emit(state.copyWith(currentMessages: combined, isLoadingMessages: false));
  }

  Future<void> _onLoadOlderMessages(
    LoadOlderMessages event,
    Emitter<ChatState> emit,
  ) async {
    if (state.isLoadingOlderMessages || !state.hasMoreOlderMessages) return;

    final conversationId = state.currentConversation?.id;
    if (conversationId == null || conversationId.isEmpty) return;

    final oldest = _oldestLoadableMessage(state.currentMessages);
    if (oldest == null) {
      emit(state.copyWith(hasMoreOlderMessages: false));
      return;
    }

    emit(state.copyWith(isLoadingOlderMessages: true));

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final page = await _chatRepository.fetchOlderMessages(
          conversationId: conversationId,
          currentUserId: state.currentUserId,
          beforeMessageId: oldest.id,
          limit: ChatConstants.messagePageSize,
        );

        if (page.isEmpty) {
          emit(
            state.copyWith(
              isLoadingOlderMessages: false,
              hasMoreOlderMessages: false,
            ),
          );
          return;
        }

        final combined = _combineMessageLists(page, state.currentMessages);
        emit(
          state.copyWith(
            currentMessages: combined,
            isLoadingOlderMessages: false,
            hasMoreOlderMessages: page.length >= ChatConstants.messagePageSize,
          ),
        );
      },
      doOnError: (_) {
        emit(state.copyWith(isLoadingOlderMessages: false));
      },
    );
  }

  List<Message> _extractHistoricalMessages({
    required List<Message> current,
    required List<Message> recentWindow,
  }) {
    if (recentWindow.isEmpty) {
      return current
          .where((message) => !ChatMessageMerge.isPending(message))
          .toList();
    }

    DateTime? oldestRecentTime;
    for (final message in recentWindow) {
      if (ChatMessageMerge.isPending(message)) continue;
      final createdAt = message.createdAt;
      if (createdAt == null) continue;
      if (oldestRecentTime == null || createdAt.isBefore(oldestRecentTime)) {
        oldestRecentTime = createdAt;
      }
    }

    if (oldestRecentTime == null) return const [];

    final recentIds = recentWindow
        .map((message) => message.id)
        .where((id) => id.isNotEmpty)
        .toSet();

    return current.where((message) {
      if (ChatMessageMerge.isPending(message)) return false;
      if (message.id.isNotEmpty && recentIds.contains(message.id)) return false;
      final createdAt = message.createdAt;
      if (createdAt == null) return false;
      return createdAt.isBefore(oldestRecentTime!);
    }).toList();
  }

  List<Message> _combineMessageLists(
    List<Message> older,
    List<Message> newer,
  ) {
    final seen = <String>{};
    final result = <Message>[];

    for (final message in [...older, ...newer]) {
      final id = message.id;
      if (id.isNotEmpty) {
        if (!seen.add(id)) continue;
      }
      result.add(message);
    }

    result.sort(
      (a, b) => _messageSortTime(a).compareTo(_messageSortTime(b)),
    );
    return result;
  }

  Message? _oldestLoadableMessage(List<Message> messages) {
    Message? oldest;
    for (final message in messages) {
      if (ChatMessageMerge.isPending(message)) continue;
      if (message.id.isEmpty || message.createdAt == null) continue;
      if (oldest == null ||
          message.createdAt!.isBefore(oldest.createdAt!)) {
        oldest = message;
      }
    }
    return oldest;
  }

  DateTime _messageSortTime(Message message) {
    if (message.createdAt != null) return message.createdAt!;
    if (message.id.startsWith('pending_')) return DateTime.now();
    return DateTime.now().add(const Duration(seconds: 1));
  }

  bool _sameMessageList(List<Message> previous, List<Message> next) {
    if (previous.length != next.length) return false;
    for (var i = 0; i < previous.length; i++) {
      final a = previous[i];
      final b = next[i];
      if (a.id != b.id ||
          a.text != b.text ||
          a.isRead != b.isRead ||
          a.senderId != b.senderId ||
          a.type != b.type ||
          a.fileUrl != b.fileUrl) {
        return false;
      }
    }
    return true;
  }

  void _onFriendRequestsUpdated(
    _FriendRequestsUpdated event,
    Emitter<ChatState> emit,
  ) {
    emit(state.copyWith(incomingFriendRequests: event.requests));
  }

  void _subscribeConversations(String userId) {
    _conversationsSubscription?.cancel();
    if (userId.isEmpty) return;

    _conversationsSubscription = _streamConversationsUseCase
        .execute(StreamConversationsInput(currentUserId: userId))
        .listen(
          (conversations) => add(_ConversationsUpdated(conversations)),
          onError: (_) {},
        );
  }

  void _subscribeFriendRequests(String userId) {
    _friendRequestsSubscription?.cancel();
    if (userId.isEmpty) return;

    _friendRequestsSubscription = _streamFriendRequestsUseCase
        .execute(StreamFriendRequestsInput(userId: userId))
        .listen(
          (requests) => add(_FriendRequestsUpdated(requests)),
          onError: (_) {},
        );
  }

  void _subscribeMessages(String conversationId) {
    _messagesSubscription?.cancel();
    if (conversationId.isEmpty || state.currentUserId.isEmpty) return;

    _messagesSubscription = _streamMessagesUseCase
        .execute(
          StreamMessagesInput(
            conversationId: conversationId,
            currentUserId: state.currentUserId,
            limit: ChatConstants.messagePageSize,
          ),
        )
        .listen(
          (messages) => add(_MessagesUpdated(messages)),
          onError: (_) => add(const _MessagesUpdated([])),
        );
  }

  Future<void> _loadContacts(Emitter<ChatState> emit) async {
    if (state.currentUserId.isEmpty) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));

        final output = await _getContactsUseCase.execute(
          GetContactsInput(
            currentUserId: state.currentUserId,
            role: state.role,
            classId: state.classId.isEmpty ? null : state.classId,
          ),
        );

        emit(state.copyWith(isLoading: false, contacts: output.contacts));

        await _refreshConversationProfiles(emit);
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _refreshConversationProfiles(Emitter<ChatState> emit) async {
    if (state.conversations.isEmpty || state.currentUserId.isEmpty) return;

    final enriched = await _chatRepository.enrichConversationsWithLiveProfiles(
      conversations: state.conversations,
      currentUserId: state.currentUserId,
    );

    Conversation? currentConversation = state.currentConversation;
    if (currentConversation != null) {
      currentConversation = enriched.firstWhere(
        (c) => c.id == currentConversation!.id,
        orElse: () => currentConversation!,
      );
    }

    emit(
      state.copyWith(
        conversations: enriched,
        currentConversation: currentConversation,
      ),
    );
  }
}
