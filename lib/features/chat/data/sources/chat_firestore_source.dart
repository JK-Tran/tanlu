import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/contact_data.dart';
import 'package:tanlu_management/features/chat/data/model/conversation_data.dart';
import 'package:tanlu_management/features/chat/data/model/member_data.dart';
import 'package:tanlu_management/features/chat/data/model/friend_request_data.dart';
import 'package:tanlu_management/features/chat/data/model/friendship_data.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

@lazySingleton
class ChatFirestoreSource {
  ChatFirestoreSource(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _conversations =>
      _firestore.collection('conversations');

  CollectionReference<Map<String, dynamic>> get _users =>
      _firestore.collection('users');

  CollectionReference<Map<String, dynamic>> get _students =>
      _firestore.collection('students');

  CollectionReference<Map<String, dynamic>> get _friendRequests =>
      _firestore.collection('friend_requests');

  CollectionReference<Map<String, dynamic>> get _friendships =>
      _firestore.collection('friendships');

  static String friendshipId(String uidA, String uidB) {
    final sorted = [uidA, uidB]..sort();
    return 'friend_${sorted[0]}_${sorted[1]}';
  }

  static String directConversationId(String uidA, String uidB) {
    final sorted = [uidA, uidB]..sort();
    return 'direct_${sorted[0]}_${sorted[1]}';
  }

  static String groupConversationId(String classId) => 'group_$classId';

  Future<List<ContactData>> queryContacts({
    required String classId,
    required String excludeUserId,
  }) async {
    if (classId.isEmpty) return [];

    final path = 'users?classId=$classId';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _users.where('classId', isEqualTo: classId).get(),
      requestMeta: {'classId': classId},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => ContactData.fromJson(doc.toModelJson))
        .where((contact) => (contact.id ?? '') != excludeUserId)
        .toList();
  }

  /// Lớp của PH: từ `students.parentUserId` (nguồn chính xác).
  Future<List<String>> queryClassIdsByParentUserId(String parentUserId) async {
    if (parentUserId.isEmpty) return [];

    final path = 'students?parentUserId=$parentUserId';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _students.where('parentUserId', isEqualTo: parentUserId).get(),
      requestMeta: {'parentUserId': parentUserId},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => doc.data()['classId'] as String?)
        .where((id) => id != null && id.isNotEmpty)
        .cast<String>()
        .toSet()
        .toList();
  }

  /// Gộp lớp: GV qua `users.classId`, PH qua `students.parentUserId`.
  Future<Set<String>> resolveClassIds({
    required String userId,
    required String role,
    String? classId,
  }) async {
    if (role == 'parent') {
      return (await queryClassIdsByParentUserId(userId)).toSet();
    }

    final ids = <String>{};
    if (classId != null && classId.isNotEmpty) ids.add(classId);

    if (ids.isEmpty) {
      final user = await getUser(userId);
      final userClassId = user?.classId;
      if (userClassId != null && userClassId.isNotEmpty) {
        ids.add(userClassId);
      }
    }

    return ids;
  }

  /// Danh bạ chat trong một lớp: GV (`users.classId`) + PH (`students.parentUserId`).
  Future<List<ContactData>> queryClassChatContacts({
    required String classId,
    required String excludeUserId,
  }) async {
    if (classId.isEmpty) return [];

    final contacts = <String, ContactData>{};

    final usersPath = 'users?classId=$classId';
    final usersSnapshot = await FirebaseLogger.list(
      usersPath,
      () => _users.where('classId', isEqualTo: classId).get(),
      requestMeta: {'classId': classId},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    for (final doc in usersSnapshot.docs) {
      if (doc.id == excludeUserId) continue;
      contacts[doc.id] = ContactData.fromJson(doc.toModelJson);
    }

    final studentsPath = 'students?classId=$classId';
    final studentsSnapshot = await FirebaseLogger.list(
      studentsPath,
      () => _students.where('classId', isEqualTo: classId).get(),
      requestMeta: {'classId': classId},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    for (final doc in studentsSnapshot.docs) {
      final data = doc.data();
      final parentUserId = data['parentUserId'] as String?;
      if (parentUserId == null ||
          parentUserId.isEmpty ||
          parentUserId == excludeUserId ||
          contacts.containsKey(parentUserId)) {
        continue;
      }
      contacts[parentUserId] = _parentContactFromStudent(
        parentUserId: parentUserId,
        studentData: data,
      );
    }

    return contacts.values.toList();
  }

  ContactData _parentContactFromStudent({
    required String parentUserId,
    required Map<String, dynamic> studentData,
  }) {
    final contacts = studentData['contacts'];
    if (contacts is List) {
      for (final item in contacts) {
        if (item is! Map) continue;
        final map = Map<String, dynamic>.from(item);
        final linkedUserId = map['userId']?.toString() ?? '';
        final isPrimary = map['isPrimary'] == true;
        if (linkedUserId != parentUserId && !isPrimary) continue;

        final name = map['name']?.toString().trim() ?? '';
        if (name.isNotEmpty) {
          return ContactData(
            id: parentUserId,
            fullName: name,
            role: 'parent',
            avatar: studentData['avatarUrl']?.toString(),
          );
        }
      }
    }

    return ContactData(
      id: parentUserId,
      fullName: 'Phụ huynh',
      role: 'parent',
      avatar: studentData['avatarUrl']?.toString(),
    );
  }

  Future<ContactData?> getUser(String userId) async {
    if (userId.isEmpty) return null;

    final path = 'users/$userId';
    final doc = await FirebaseLogger.get(
      path,
      () => _users.doc(userId).get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    return ContactData.fromJson(json);
  }

  Future<List<FriendshipData>> queryFriendships(String userId) async {
    if (userId.isEmpty) return [];

    final path = 'friendships?userIds contains $userId';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _friendships.where('userIds', arrayContains: userId).get(),
      requestMeta: {'userId': userId},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => FriendshipData.fromJson(doc.toModelJson))
        .toList();
  }

  Future<bool> areFriends(String uidA, String uidB) async {
    if (uidA.isEmpty || uidB.isEmpty || uidA == uidB) return false;
    final doc = await _friendships.doc(friendshipId(uidA, uidB)).get();
    return doc.exists;
  }

  Future<List<FriendRequestData>> queryPendingRequestsForUser(
    String userId,
  ) async {
    if (userId.isEmpty) return [];

    final sentPath = 'friend_requests?fromUserId=$userId&status=pending';
    final receivedPath = 'friend_requests?toUserId=$userId&status=pending';

    final sentFuture = FirebaseLogger.list(
      sentPath,
      () => _friendRequests
          .where('fromUserId', isEqualTo: userId)
          .where('status', isEqualTo: 'pending')
          .get(),
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    final receivedFuture = FirebaseLogger.list(
      receivedPath,
      () => _friendRequests
          .where('toUserId', isEqualTo: userId)
          .where('status', isEqualTo: 'pending')
          .get(),
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    final results = await Future.wait([sentFuture, receivedFuture]);
    final docs = [...results[0].docs, ...results[1].docs];
    return docs
        .map((doc) => FriendRequestData.fromJson(doc.toModelJson))
        .toList();
  }

  Stream<List<FriendRequestData>> streamIncomingFriendRequests(String userId) {
    if (userId.isEmpty) return Stream.value(const []);

    return _friendRequests
        .where('toUserId', isEqualTo: userId)
        .where('status', isEqualTo: 'pending')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => FriendRequestData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  Future<String> submitFriendRequest({
    required String fromUserId,
    required String toUserId,
  }) async {
    if (fromUserId.isEmpty || toUserId.isEmpty || fromUserId == toUserId) {
      throw StateError('Invalid friend request');
    }

    if (await areFriends(fromUserId, toUserId)) {
      throw StateError('Already friends');
    }

    final pending = await queryPendingRequestsForUser(fromUserId);
    final alreadyPending = pending.any(
      (request) =>
          (request.fromUserId == fromUserId && request.toUserId == toUserId) ||
          (request.fromUserId == toUserId && request.toUserId == fromUserId),
    );
    if (alreadyPending) {
      throw StateError('Friend request already pending');
    }

    final ref = _friendRequests.doc();
    final path = 'friend_requests/${ref.id}';
    final payload = {
      'fromUserId': fromUserId,
      'toUserId': toUserId,
      'status': 'pending',
      'createdAt': FirestoreJson.writeTimestamp(),
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    await FirebaseLogger.write('SET', path, payload, () => ref.set(payload));
    return ref.id;
  }

  Future<void> submitFriendDecision({
    required String requestId,
    required bool accept,
    required String currentUserId,
  }) async {
    if (requestId.isEmpty || currentUserId.isEmpty) return;

    final ref = _friendRequests.doc(requestId);
    final snap = await ref.get();
    if (!snap.exists) throw StateError('Friend request not found');

    final json = snap.toModelJson;
    if (json == null) throw StateError('Friend request not found');

    final data = FriendRequestData.fromJson(json);
    if (data.toUserId != currentUserId) {
      throw StateError('Not allowed to decide this request');
    }
    if (data.status != 'pending') return;

    final batch = _firestore.batch();
    batch.update(ref, {
      'status': accept ? 'accepted' : 'rejected',
      'updatedAt': FirestoreJson.writeTimestamp(),
    });

    if (accept) {
      final friendshipRef = _friendships.doc(
        friendshipId(data.fromUserId ?? '', data.toUserId ?? ''),
      );
      batch.set(friendshipRef, {
        'userIds': [data.fromUserId, data.toUserId]..sort(),
        'createdAt': FirestoreJson.writeTimestamp(),
      });
    }

    await batch.commit();
  }

  Stream<List<ConversationData>> streamConversations(String userId) {
    if (userId.isEmpty) return Stream.value(const []);

    return _conversations
        .where('memberIds', arrayContains: userId)
        .orderBy('updatedAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => ConversationData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  Future<MemberData?> getMember({
    required String conversationId,
    required String userId,
  }) async {
    if (conversationId.isEmpty || userId.isEmpty) return null;

    final path = 'conversations/$conversationId/members/$userId';
    final doc = await FirebaseLogger.get(
      path,
      () => _conversations
          .doc(conversationId)
          .collection('members')
          .doc(userId)
          .get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    return MemberData.fromJson({...json, 'userId': userId});
  }

  Future<List<MemberData>> getMembers(String conversationId) async {
    if (conversationId.isEmpty) return [];

    final path = 'conversations/$conversationId/members';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _conversations.doc(conversationId).collection('members').get(),
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map(
          (doc) => MemberData.fromJson({...doc.toModelJson, 'userId': doc.id}),
        )
        .toList();
  }

  Future<ConversationData?> getConversation(String conversationId) async {
    if (conversationId.isEmpty) return null;

    final path = 'conversations/$conversationId';
    final doc = await FirebaseLogger.get(
      path,
      () => _conversations.doc(conversationId).get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    return ConversationData.fromJson(json);
  }

  Future<void> deleteConversation(String conversationId) async {
    if (conversationId.isEmpty) return;

    final ref = _conversations.doc(conversationId);
    final members = await ref.collection('members').get();
    final batch = _firestore.batch();
    for (final member in members.docs) {
      batch.delete(member.reference);
    }
    batch.delete(ref);

    final path = 'conversations/$conversationId';
    await FirebaseLogger.write(
      'BATCH_DELETE',
      path,
      null,
      () => batch.commit(),
    );
  }

  Stream<List<MessageData>> streamMessages({
    required String conversationId,
    int limit = ChatConstants.messagePageSize,
  }) {
    if (conversationId.isEmpty) return Stream.value(const []);

    return _conversations
        .doc(conversationId)
        .collection('messages')
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => MessageData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  /// Tin nhắn cũ hơn [beforeMessageId] (phân trang khi lướt lên).
  Future<List<MessageData>> fetchOlderMessages({
    required String conversationId,
    required String beforeMessageId,
    int limit = ChatConstants.messagePageSize,
  }) async {
    if (conversationId.isEmpty || beforeMessageId.isEmpty) {
      return const [];
    }

    final beforeRef = _conversations
        .doc(conversationId)
        .collection('messages')
        .doc(beforeMessageId);
    final beforeDoc = await FirebaseLogger.get(
      'conversations/$conversationId/messages/$beforeMessageId',
      () => beforeRef.get(),
      dataExtractor: (snap) => snap.toModelJson,
    );
    if (!beforeDoc.exists) return const [];

    final path =
        'conversations/$conversationId/messages?before=$beforeMessageId&limit=$limit';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _conversations
          .doc(conversationId)
          .collection('messages')
          .where('status', isEqualTo: 'active')
          .orderBy('createdAt', descending: true)
          .startAfterDocument(beforeDoc)
          .limit(limit)
          .get(),
      requestMeta: {'beforeMessageId': beforeMessageId, 'limit': limit},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return snapshot.docs
        .map((doc) => MessageData.fromJson(doc.toModelJson))
        .toList();
  }

  Future<String> createConversation({
    required String id,
    required ConversationData data,
    required Map<String, MemberData> members,
  }) async {
    final ref = _conversations.doc(id);
    final path = 'conversations/$id';
    final payload = {
      ...data.toJson(),
      'createdAt': FirestoreJson.writeTimestamp(),
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    final batch = _firestore.batch();
    batch.set(ref, payload);

    for (final entry in members.entries) {
      batch.set(ref.collection('members').doc(entry.key), entry.value.toJson());
    }

    await FirebaseLogger.write(
      'BATCH_SET',
      path,
      payload,
      () => batch.commit(),
    );
    return id;
  }

  Future<String> submitMessage({
    required String conversationId,
    required MessageData data,
    required String senderId,
    String? receiverId,
  }) async {
    final messageRef = _conversations
        .doc(conversationId)
        .collection('messages')
        .doc();
    final conversationRef = _conversations.doc(conversationId);

    final messagePayload = {
      ...data.toJson(),
      'senderId': senderId,
      'receiverId': ?receiverId,
      'createdAt': FirestoreJson.writeTimestamp(),
      'status': 'active',
    };

    final batch = _firestore.batch();
    batch.set(messageRef, messagePayload);
    batch.update(conversationRef, {
      'lastMessageText': data.text ?? '',
      'lastMessageSenderId': senderId,
      'lastMessageAt': FirestoreJson.writeTimestamp(),
      'updatedAt': FirestoreJson.writeTimestamp(),
    });

    if (receiverId != null && receiverId.isNotEmpty) {
      batch.update(conversationRef.collection('members').doc(receiverId), {
        'unreadCount': FieldValue.increment(1),
      });
    } else {
      final membersSnapshot = await _conversations
          .doc(conversationId)
          .collection('members')
          .get();
      for (final memberDoc in membersSnapshot.docs) {
        if (memberDoc.id == senderId) continue;
        batch.update(memberDoc.reference, {
          'unreadCount': FieldValue.increment(1),
        });
      }
    }

    final path = 'conversations/$conversationId/messages/${messageRef.id}';
    await FirebaseLogger.write(
      'BATCH_SET',
      path,
      messagePayload,
      () => batch.commit(),
      input: {
        'message': messagePayload,
        'conversationUpdate': {
          'lastMessageText': data.text ?? '',
          'lastMessageSenderId': senderId,
          'lastMessageAt': FirestoreJson.writeTimestamp(),
          'updatedAt': FirestoreJson.writeTimestamp(),
        },
        if (receiverId != null && receiverId.isNotEmpty)
          'memberUnreadIncrement': receiverId,
      },
    );

    return messageRef.id;
  }

  Future<void> markMessagesAsRead({
    required String conversationId,
    required String userId,
  }) async {
    if (conversationId.isEmpty || userId.isEmpty) return;

    final path = 'conversations/$conversationId/members/$userId';
    await FirebaseLogger.write(
      'UPDATE',
      path,
      {'unreadCount': 0, 'lastReadAt': FirestoreJson.writeTimestamp()},
      () {
        return _conversations
            .doc(conversationId)
            .collection('members')
            .doc(userId)
            .update({
              'unreadCount': 0,
              'lastReadAt': FirestoreJson.writeTimestamp(),
            });
      },
    );
  }
}
