import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/contact_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/conversation_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/friend_request_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/message_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/model/contact_data.dart';
import 'package:tanlu_management/features/chat/data/model/conversation_data.dart';
import 'package:tanlu_management/features/chat/data/model/member_data.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_firestore_source.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_storage_source.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/features/chat/domain/entity/participant.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(
    this._firestoreSource,
    this._chatStorageSource,
    this._contactMapper,
    this._conversationMapper,
    this._messageMapper,
    this._friendRequestMapper,
  );

  final ChatFirestoreSource _firestoreSource;
  final ChatStorageSource _chatStorageSource;
  final ContactDataMapper _contactMapper;
  final ConversationDataMapper _conversationMapper;
  final MessageDataMapper _messageMapper;
  final FriendRequestDataMapper _friendRequestMapper;
  final _liveAuthorCache = <String, Author>{};
  final _memberLastReadCache = <String, DateTime?>{};
  final _conversationStreamCache = <String, _ConversationStreamCacheEntry>{};
  String? _conversationStreamListSignature;
  List<Conversation>? _conversationStreamListResult;

  @override
  Future<List<Contact>> getContacts({
    required String currentUserId,
    required String role,
    String? classId,
  }) async {
    final classIds = await _firestoreSource.resolveClassIds(
      userId: currentUserId,
      role: role,
      classId: classId,
    );

    final classContactIds = <String>{};
    final contactMap = <String, ContactData>{};

    for (final resolvedClassId in classIds) {
      final classContacts = await _firestoreSource.queryClassChatContacts(
        classId: resolvedClassId,
        excludeUserId: currentUserId,
      );
      for (final contact in classContacts) {
        final id = contact.id ?? '';
        if (id.isEmpty) continue;
        classContactIds.add(id);
        contactMap[id] = contact;
      }
    }

    final friendIds = await _loadFriendIds(currentUserId);

    for (final friendId in friendIds) {
      if (contactMap.containsKey(friendId)) continue;
      final user = await _firestoreSource.getUser(friendId);
      if (user != null) contactMap[friendId] = user;
    }

    final pending = await _firestoreSource.queryPendingRequestsForUser(
      currentUserId,
    );
    final pendingSent = <String>{};
    final pendingReceived = <String>{};
    for (final request in pending) {
      if (request.fromUserId == currentUserId && request.toUserId != null) {
        pendingSent.add(request.toUserId!);
      } else if (request.toUserId == currentUserId &&
          request.fromUserId != null) {
        pendingReceived.add(request.fromUserId!);
      }
    }

    return contactMap.entries.map((entry) {
      final id = entry.key;
      final data = entry.value;
      _seedAuthorCache(id, data);
      final isFriend = friendIds.contains(id);
      final isSameClass = classContactIds.contains(id);
      final relation = isFriend
          ? ContactRelation.friend
          : isSameClass
          ? ContactRelation.sameClass
          : ContactRelation.none;
      final pendingRequest = pendingSent.contains(id)
          ? 'pendingSent'
          : pendingReceived.contains(id)
          ? 'pendingReceived'
          : null;

      return _contactMapper.mapToEntityWithContext(
        data,
        relation: relation,
        canChat: isFriend || isSameClass,
        pendingRequest: pendingRequest,
      );
    }).toList()..sort((a, b) => a.fullName.compareTo(b.fullName));
  }

  @override
  Future<List<Contact>> getFriends({required String currentUserId}) async {
    final friendIds = await _loadFriendIds(currentUserId);
    final contacts = <Contact>[];

    for (final friendId in friendIds) {
      final user = await _firestoreSource.getUser(friendId);
      if (user == null) continue;
      contacts.add(
        _contactMapper.mapToEntityWithContext(
          user,
          relation: ContactRelation.friend,
          canChat: true,
        ),
      );
    }

    return contacts..sort((a, b) => a.fullName.compareTo(b.fullName));
  }

  @override
  Future<bool> canChat({
    required String userId,
    required String role,
    required String otherUserId,
    String? classId,
  }) async {
    if (userId.isEmpty || otherUserId.isEmpty || userId == otherUserId) {
      return false;
    }
    if (await _firestoreSource.areFriends(userId, otherUserId)) return true;

    final viewerClassIds = await _firestoreSource.resolveClassIds(
      userId: userId,
      role: role,
      classId: classId,
    );
    if (viewerClassIds.isEmpty) return false;

    final other = await _firestoreSource.getUser(otherUserId);
    if (other == null) return false;

    final otherClassIds = await _firestoreSource.resolveClassIds(
      userId: otherUserId,
      role: other.role ?? '',
      classId: other.classId,
    );

    return viewerClassIds.intersection(otherClassIds).isNotEmpty;
  }

  @override
  Future<void> submitFriendRequest({
    required String fromUserId,
    required String toUserId,
  }) => _firestoreSource.submitFriendRequest(
    fromUserId: fromUserId,
    toUserId: toUserId,
  );

  @override
  Future<void> submitFriendDecision({
    required String requestId,
    required bool accept,
    required String currentUserId,
  }) => _firestoreSource.submitFriendDecision(
    requestId: requestId,
    accept: accept,
    currentUserId: currentUserId,
  );

  @override
  Stream<List<FriendRequest>> streamIncomingFriendRequests({
    required String userId,
  }) {
    return _firestoreSource
        .streamIncomingFriendRequests(userId)
        .map(_friendRequestMapper.mapToListEntity);
  }

  @override
  Stream<List<Conversation>> streamConversations({
    required String currentUserId,
  }) {
    return _firestoreSource.streamConversations(currentUserId).asyncMap((
      items,
    ) async {
      final signature = _conversationListSignature(items);
      if (signature == _conversationStreamListSignature &&
          _conversationStreamListResult != null) {
        return _conversationStreamListResult!;
      }

      final conversations =
          await _mapConversationsForStream(items, currentUserId);
      final withMessages = conversations.where(_hasMessages).toList();
      _conversationStreamListSignature = signature;
      _conversationStreamListResult = withMessages;
      return withMessages;
    });
  }

  String _conversationListSignature(List<ConversationData> items) {
    return items
        .map(
          (data) =>
              '${data.id}|${data.lastMessageText}|'
              '${data.lastMessageAt?.millisecondsSinceEpoch}|'
              '${data.lastMessageSenderId}|'
              '${data.updatedAt?.millisecondsSinceEpoch}',
        )
        .join(';');
  }

  Future<List<Conversation>> _mapConversationsForStream(
    List<ConversationData> items,
    String currentUserId,
  ) async {
    final result = <Conversation>[];
    for (final data in items) {
      result.add(await _mapConversationForStream(data, currentUserId));
    }
    return result;
  }

  Future<Conversation> _mapConversationForStream(
    ConversationData data,
    String currentUserId,
  ) async {
    final conversationId = data.id ?? '';
    final cached = _conversationStreamCache[conversationId];

    if (cached != null) {
      final messageChanged =
          cached.lastMessageAt != data.lastMessageAt ||
          cached.conversation.lastMessageText != (data.lastMessageText ?? '');

      if (!messageChanged) {
        return cached.conversation;
      }

      var unread = cached.unreadCount;
      final senderId = data.lastMessageSenderId ?? '';
      final isIncoming =
          senderId.isNotEmpty &&
          senderId != currentUserId &&
          senderId != cached.lastMessageSenderId;

      if (isIncoming) {
        final member = await _firestoreSource.getMember(
          conversationId: conversationId,
          userId: currentUserId,
        );
        unread = member?.unreadCount ?? unread;
      }

      final updated = cached.conversation.copyWith(
        lastMessageText: data.lastMessageText ?? '',
        lastMessageSenderId: senderId,
        lastMessageAt: data.lastMessageAt,
        updatedAt: data.updatedAt ?? data.lastMessageAt,
        unreadCount: unread,
      );
      _conversationStreamCache[conversationId] = _ConversationStreamCacheEntry(
        conversation: updated,
        unreadCount: unread,
        lastMessageAt: data.lastMessageAt,
        lastMessageSenderId: senderId,
      );
      return updated;
    }

    final full = await _mapConversation(data, currentUserId);
    _conversationStreamCache[conversationId] = _ConversationStreamCacheEntry(
      conversation: full,
      unreadCount: full.unreadCount,
      lastMessageAt: data.lastMessageAt,
      lastMessageSenderId: data.lastMessageSenderId ?? '',
    );
    return full;
  }

  static bool _hasMessages(Conversation conversation) {
    return conversation.lastMessageText.trim().isNotEmpty ||
        conversation.lastMessageAt != null;
  }

  @override
  Stream<List<Message>> streamMessages({
    required String conversationId,
    required String currentUserId,
    int limit = ChatConstants.messagePageSize,
  }) async* {
    await _ensureMemberLastReadCached(
      conversationId: conversationId,
      currentUserId: currentUserId,
    );

    yield* _firestoreSource
        .streamMessages(conversationId: conversationId, limit: limit)
        .map(
          (items) => _mapMessagesSync(
            items,
            conversationId: conversationId,
            currentUserId: currentUserId,
          ),
        );
  }

  @override
  Future<List<Message>> fetchOlderMessages({
    required String conversationId,
    required String currentUserId,
    required String beforeMessageId,
    int limit = ChatConstants.messagePageSize,
  }) async {
    await _ensureMemberLastReadCached(
      conversationId: conversationId,
      currentUserId: currentUserId,
    );

    final items = await _firestoreSource.fetchOlderMessages(
      conversationId: conversationId,
      beforeMessageId: beforeMessageId,
      limit: limit,
    );

    return _mapMessagesSync(
      items,
      conversationId: conversationId,
      currentUserId: currentUserId,
    );
  }

  @override
  Future<Conversation> createConversation({
    required Author currentUser,
    required List<String> participantIds,
    required String type,
    String? name,
    String? classId,
    String? centerId,
  }) async {
    if (type == 'direct') {
      return _createDirectConversation(
        currentUser: currentUser,
        participantIds: participantIds,
        classId: classId,
        centerId: centerId,
      );
    }

    if (type == 'group') {
      return _createGroupConversation(
        currentUser: currentUser,
        name: name,
        classId: classId,
        centerId: centerId,
      );
    }

    throw const ValidationException('Loại hội thoại không hợp lệ');
  }

  @override
  Future<Message> submitMessage({
    required String conversationId,
    required Author sender,
    required String? receiverId,
    required String text,
    String type = 'text',
    String? fileUrl,
  }) async {
    final trimmed = text.trim();
    if (trimmed.isEmpty && (fileUrl == null || fileUrl.isEmpty)) {
      throw const ValidationException('Nội dung tin nhắn không được để trống');
    }

    String? resolvedReceiverId = receiverId;
    if (resolvedReceiverId == null || resolvedReceiverId.isEmpty) {
      final conversation =
          await _firestoreSource.getConversation(conversationId);
      if (conversation == null) {
        throw const ValidationException('Không tìm thấy hội thoại');
      }
      resolvedReceiverId = _resolveReceiverId(
        conversation: conversation,
        senderId: sender.id,
        receiverId: receiverId,
      );
    }

    final resolvedFileUrl = await _resolveMessageFileUrl(
      conversationId: conversationId,
      fileUrl: fileUrl,
    );

    final messageData = MessageData(
      senderId: sender.id,
      receiverId: resolvedReceiverId,
      fullName: sender.fullName,
      avatar: sender.avatar.isEmpty ? null : sender.avatar,
      type: type,
      text: trimmed,
      fileUrl: resolvedFileUrl,
      status: 'active',
    );

    final messageId = await _firestoreSource.submitMessage(
      conversationId: conversationId,
      data: messageData,
      senderId: sender.id,
      receiverId: resolvedReceiverId,
    );

    return _messageMapper.mapToEntityWithContext(
      messageData.copyWith(id: messageId),
      conversationId: conversationId,
      isRead: true,
    );
  }

  @override
  Future<void> markMessagesAsRead({
    required String conversationId,
    required String currentUserId,
  }) async {
    await _firestoreSource.markMessagesAsRead(
      conversationId: conversationId,
      userId: currentUserId,
    );
    _memberLastReadCache['$conversationId:$currentUserId'] = DateTime.now();

    final cached = _conversationStreamCache[conversationId];
    if (cached != null) {
      final cleared = cached.conversation.copyWith(unreadCount: 0);
      _conversationStreamCache[conversationId] = _ConversationStreamCacheEntry(
        conversation: cleared,
        unreadCount: 0,
        lastMessageAt: cached.lastMessageAt,
        lastMessageSenderId: cached.lastMessageSenderId,
      );
    }
  }

  @override
  Future<List<Conversation>> enrichConversationsWithLiveProfiles({
    required List<Conversation> conversations,
    required String currentUserId,
  }) async {
    final result = <Conversation>[];
    for (final conversation in conversations) {
      result.add(
        await _enrichConversationWithLiveProfiles(conversation, currentUserId),
      );
    }
    return result;
  }

  Future<Set<String>> _loadFriendIds(String currentUserId) async {
    final friendships = await _firestoreSource.queryFriendships(currentUserId);
    final friendIds = <String>{};
    for (final friendship in friendships) {
      for (final userId in friendship.userIds ?? const <String>[]) {
        if (userId != currentUserId) friendIds.add(userId);
      }
    }
    return friendIds;
  }

  Future<Conversation> _mapConversation(
    ConversationData data,
    String currentUserId,
  ) async {
    final conversationId = data.id ?? '';
    final member = conversationId.isEmpty
        ? null
        : await _firestoreSource.getMember(
            conversationId: conversationId,
            userId: currentUserId,
          );

    var conversation = _conversationMapper.mapToEntityWithContext(
      data,
      unreadCount: member?.unreadCount ?? 0,
    );

    if (conversation.type == 'direct') {
      final otherUserId = conversation.memberIds.firstWhere(
        (id) => id != currentUserId,
        orElse: () => '',
      );
      if (otherUserId.isNotEmpty &&
          (conversation.name.isEmpty || conversation.members.isEmpty)) {
        conversation = await _attachDirectPeer(
          conversation: conversation,
          conversationId: conversationId,
          otherUserId: otherUserId,
        );
      }
      return conversation;
    }

    return _enrichConversationWithLiveProfiles(conversation, currentUserId);
  }

  Future<Conversation> _attachDirectPeer({
    required Conversation conversation,
    required String conversationId,
    required String otherUserId,
  }) async {
    final cached = _liveAuthorCache[otherUserId];
    if (cached != null) {
      return conversation.copyWith(
        name: cached.fullName.isEmpty ? 'Người dùng' : cached.fullName,
        members: [
          Participant(
            userId: otherUserId,
            fullName: cached.fullName,
            avatar: cached.avatar,
            role: cached.role,
          ),
        ],
      );
    }

    final otherMember = conversationId.isEmpty
        ? null
        : await _firestoreSource.getMember(
            conversationId: conversationId,
            userId: otherUserId,
          );

    if (otherMember != null) {
      final author = Author(
        id: otherUserId,
        fullName: otherMember.fullName ?? '',
        avatar: otherMember.avatar ?? '',
        role: otherMember.role ?? '',
      );
      _liveAuthorCache[otherUserId] = author;
      return conversation.copyWith(
        name: author.fullName.isEmpty ? 'Người dùng' : author.fullName,
        members: [
          Participant(
            userId: otherUserId,
            fullName: author.fullName,
            avatar: author.avatar,
            role: author.role,
          ),
        ],
      );
    }

    final author = await _liveAuthor(otherUserId);
    if (author == null) return conversation;

    return conversation.copyWith(
      name: author.fullName.isEmpty ? 'Người dùng' : author.fullName,
      members: [
        Participant(
          userId: otherUserId,
          fullName: author.fullName,
          avatar: author.avatar,
          role: author.role,
        ),
      ],
    );
  }

  void _seedAuthorCache(String userId, ContactData data) {
    if (userId.isEmpty) return;
    _liveAuthorCache[userId] = Author(
      id: userId,
      fullName: data.fullName ?? '',
      avatar: data.avatar ?? '',
      role: data.role ?? '',
    );
  }

  Future<Conversation> _enrichConversationWithLiveProfiles(
    Conversation conversation,
    String currentUserId,
  ) async {
    if (conversation.type == 'group') {
      final members = <Participant>[];
      for (final userId in conversation.memberIds) {
        if (userId == currentUserId) continue;
        final author = await _liveAuthor(userId);
        if (author == null) continue;
        members.add(
          Participant(
            userId: userId,
            fullName: author.fullName,
            avatar: author.avatar,
            role: author.role,
          ),
        );
      }
      return conversation.copyWith(members: members);
    }

    final otherUserId = conversation.memberIds.firstWhere(
      (id) => id != currentUserId,
      orElse: () => '',
    );
    if (otherUserId.isEmpty) return conversation;
    if (conversation.members.isNotEmpty) return conversation;

    final author = await _liveAuthor(otherUserId);
    if (author == null) return conversation;

    return conversation.copyWith(
      name: author.fullName.isEmpty ? 'Người dùng' : author.fullName,
      members: [
        Participant(
          userId: otherUserId,
          fullName: author.fullName,
          avatar: author.avatar,
          role: author.role,
        ),
      ],
    );
  }

  Future<Author?> _liveAuthor(String userId) async {
    if (userId.isEmpty) return null;

    final cached = _liveAuthorCache[userId];
    if (cached != null) return cached;

    final user = await _firestoreSource.getUser(userId);
    if (user == null) return null;

    final author = Author(
      id: userId,
      fullName: user.fullName ?? '',
      avatar: user.avatar ?? '',
      role: user.role ?? '',
    );
    _liveAuthorCache[userId] = author;
    return author;
  }

  Future<void> _ensureMemberLastReadCached({
    required String conversationId,
    required String currentUserId,
  }) async {
    final memberCacheKey = '$conversationId:$currentUserId';
    if (_memberLastReadCache.containsKey(memberCacheKey)) return;

    final member = await _firestoreSource.getMember(
      conversationId: conversationId,
      userId: currentUserId,
    );
    _memberLastReadCache[memberCacheKey] = member?.lastReadAt;
  }

  List<Message> _mapMessagesSync(
    List<MessageData> items, {
    required String conversationId,
    required String currentUserId,
  }) {
    final memberCacheKey = '$conversationId:$currentUserId';
    final lastReadAt = _memberLastReadCache[memberCacheKey];

    final messages =
        items.map((data) {
          final isMine = data.senderId == currentUserId;
          final createdAt = data.createdAt;
          final isRead =
              isMine ||
              (lastReadAt != null &&
                  createdAt != null &&
                  !createdAt.isAfter(lastReadAt));
          return _withCachedSender(
            _messageMapper.mapToEntityWithContext(
              data,
              conversationId: conversationId,
              isRead: isRead,
            ),
          );
        }).toList()..sort(
          (a, b) => _messageSortTime(a).compareTo(_messageSortTime(b)),
        );

    return messages;
  }

  DateTime _messageSortTime(Message message) {
    if (message.createdAt != null) return message.createdAt!;
    if (message.id.startsWith('pending_')) return DateTime.now();
    // serverTimestamp chưa resolve — coi là tin mới nhất.
    return DateTime.now().add(const Duration(seconds: 1));
  }

  Message _withCachedSender(Message message) {
    final sender = message.sender;
    if (sender != null && sender.fullName.isNotEmpty) {
      _liveAuthorCache[message.senderId] = sender;
      return message;
    }

    final cached = _liveAuthorCache[message.senderId];
    return cached != null ? message.copyWith(sender: cached) : message;
  }

  Future<String?> _resolveMessageFileUrl({
    required String conversationId,
    required String? fileUrl,
  }) async {
    if (fileUrl == null || fileUrl.isEmpty) return fileUrl;
    if (fileUrl.startsWith('http://') || fileUrl.startsWith('https://')) {
      return fileUrl;
    }

    final storageId = 'img_${DateTime.now().millisecondsSinceEpoch}';
    return _chatStorageSource.uploadImage(
      conversationId: conversationId,
      messageId: storageId,
      localPath: fileUrl,
    );
  }

  Future<Conversation> _createDirectConversation({
    required Author currentUser,
    required List<String> participantIds,
    String? classId,
    String? centerId,
  }) async {
    final otherUserId = participantIds.firstWhere(
      (id) => id != currentUser.id,
      orElse: () => '',
    );
    if (otherUserId.isEmpty) {
      throw const ValidationException('Thiếu người nhận hội thoại');
    }

    final conversationId = ChatFirestoreSource.directConversationId(
      currentUser.id,
      otherUserId,
    );
    final existing = await _firestoreSource.getConversation(conversationId);
    if (existing != null) {
      final member = await _firestoreSource.getMember(
        conversationId: conversationId,
        userId: currentUser.id,
      );
      return _conversationMapper.mapToEntityWithContext(
        existing,
        unreadCount: member?.unreadCount ?? 0,
      );
    }

    final allowed = await canChat(
      userId: currentUser.id,
      role: currentUser.role,
      otherUserId: otherUserId,
      classId: classId,
    );
    if (!allowed) {
      throw const ValidationException(
        'Bạn chưa thể chat với người này. Hãy kết bạn hoặc cùng lớp.',
      );
    }

    final otherUser = await _firestoreSource.getUser(otherUserId);
    if (otherUser == null) {
      throw const ValidationException('Không tìm thấy người dùng');
    }

    await _firestoreSource.createConversation(
      id: conversationId,
      data: ConversationData(
        type: 'direct',
        classId: classId,
        centerId: centerId,
        memberIds: [currentUser.id, otherUserId],
      ),
      members: {
        currentUser.id: MemberData(
          fullName: currentUser.fullName,
          avatar: currentUser.avatar.isEmpty ? null : currentUser.avatar,
          role: currentUser.role,
          unreadCount: 0,
        ),
        otherUserId: MemberData(
          fullName: otherUser.fullName,
          avatar: otherUser.avatar,
          role: otherUser.role,
          unreadCount: 0,
        ),
      },
    );

    return Conversation(
      id: conversationId,
      name: otherUser.fullName ?? 'Người dùng',
      type: 'direct',
      classId: classId,
      centerId: centerId,
      memberIds: [currentUser.id, otherUserId],
      members: [
        Participant(
          userId: otherUserId,
          fullName: otherUser.fullName ?? '',
          avatar: otherUser.avatar ?? '',
          role: otherUser.role ?? '',
        ),
      ],
    );
  }

  Future<Conversation> _createGroupConversation({
    required Author currentUser,
    String? name,
    String? classId,
    String? centerId,
  }) async {
    if (classId == null || classId.isEmpty) {
      throw const ValidationException('Thiếu classId cho nhóm lớp');
    }

    final conversationId = ChatFirestoreSource.groupConversationId(classId);
    final existing = await _firestoreSource.getConversation(conversationId);
    if (existing != null) {
      return _mapConversation(existing, currentUser.id);
    }

    final classUsers = await _firestoreSource.queryClassChatContacts(
      classId: classId,
      excludeUserId: '',
    );
    final memberIds = <String>{
      currentUser.id,
      ...classUsers.map((user) => user.id ?? '').where((id) => id.isNotEmpty),
    };

    final members = <String, MemberData>{
      for (final user in classUsers)
        if ((user.id ?? '').isNotEmpty)
          user.id!: MemberData(
            fullName: user.fullName,
            avatar: user.avatar,
            role: user.role,
            unreadCount: 0,
          ),
    };

    members.putIfAbsent(
      currentUser.id,
      () => MemberData(
        fullName: currentUser.fullName,
        avatar: currentUser.avatar.isEmpty ? null : currentUser.avatar,
        role: currentUser.role,
        unreadCount: 0,
      ),
    );

    await _firestoreSource.createConversation(
      id: conversationId,
      data: ConversationData(
        type: 'group',
        name: name ?? 'Nhóm lớp',
        classId: classId,
        centerId: centerId,
        memberIds: memberIds.toList(),
      ),
      members: members,
    );

    final created = await _firestoreSource.getConversation(conversationId);
    if (created == null) {
      throw const ValidationException('Không tạo được nhóm lớp');
    }
    return _mapConversation(created, currentUser.id);
  }

  String? _resolveReceiverId({
    required ConversationData conversation,
    required String senderId,
    String? receiverId,
  }) {
    if (conversation.type == 'group') return null;
    if (receiverId != null && receiverId.isNotEmpty) return receiverId;

    final memberIds = conversation.memberIds ?? const <String>[];
    final otherId = memberIds.firstWhere(
      (id) => id != senderId,
      orElse: () => '',
    );
    return otherId.isEmpty ? null : otherId;
  }
}

class _ConversationStreamCacheEntry {
  const _ConversationStreamCacheEntry({
    required this.conversation,
    required this.unreadCount,
    required this.lastMessageAt,
    required this.lastMessageSenderId,
  });

  final Conversation conversation;
  final int unreadCount;
  final DateTime? lastMessageAt;
  final String lastMessageSenderId;
}
