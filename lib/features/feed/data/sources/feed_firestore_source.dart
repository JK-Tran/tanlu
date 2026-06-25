import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/comment_data.dart';
import 'package:tanlu_management/features/feed/data/model/feed_data.dart';
import 'package:tanlu_management/features/feed/data/model/feed_like_data.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

@lazySingleton
class FeedFirestoreSource {
  FeedFirestoreSource(this._firestore);

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _feeds =>
      _firestore.collection('feeds');

  Future<({List<FeedData> items, String? nextCursor, bool hasMore})>
  queryClassFeeds({
    required String authorId,
    String? cursor,
    int limit = 20,
  }) async {
    Query<Map<String, dynamic>> query = _feeds
        .where('authorId', isEqualTo: authorId)
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true);

    query = await _applyCursor(query, cursor);
    query = query.limit(limit + 1);

    final path = 'feeds?authorId=$authorId&status=active';
    final snapshot = await FirebaseLogger.list(
      path,
      () => query.get(),
      requestMeta: {'authorId': authorId, 'cursor': cursor, 'limit': limit},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return _mapPage(snapshot.docs, limit);
  }

  Future<({List<FeedData> items, String? nextCursor, bool hasMore})>
  queryExploreFeeds({String? cursor, int limit = 20}) async {
    Query<Map<String, dynamic>> query = _feeds
        .where('isPublic', isEqualTo: true)
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true);

    query = await _applyCursor(query, cursor);
    query = query.limit(limit + 1);

    final path = 'feeds?isPublic=true&status=active';
    final snapshot = await FirebaseLogger.list(
      path,
      () => query.get(),
      requestMeta: {'cursor': cursor, 'limit': limit},
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    return _mapPage(snapshot.docs, limit);
  }

  Future<String> submitFeed({
    required String id,
    required FeedData data,
  }) async {
    final docRef = _feeds.doc(id);
    final path = 'feeds/$id';
    final payload = {
      ...data.toJson(),
      'createdAt': FirestoreJson.writeTimestamp(),
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    await FirebaseLogger.write('SET', path, payload, () => docRef.set(payload));

    return docRef.id;
  }

  String generateId() => _feeds.doc().id;

  Future<FeedData?> getFeed(String feedId) async {
    final path = 'feeds/$feedId';
    final doc = await FirebaseLogger.get(
      path,
      () => _feeds.doc(feedId).get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    return FeedData.fromJson(json);
  }

  Stream<FeedData?> streamFeed(String feedId) {
    return _feeds.doc(feedId).snapshots().map((snap) {
      final json = snap.toModelJson;
      if (json == null) return null;
      return FeedData.fromJson(json);
    });
  }

  Stream<List<FeedData>> streamClassFeeds({
    required String authorId,
    int limit = 20,
  }) {
    return _feeds
        .where('authorId', isEqualTo: authorId)
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => FeedData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  Stream<List<FeedData>> streamExploreFeeds({int limit = 20}) {
    return _feeds
        .where('isPublic', isEqualTo: true)
        .where('status', isEqualTo: 'active')
        .orderBy('createdAt', descending: true)
        .limit(limit)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => FeedData.fromJson(doc.toModelJson))
              .toList(),
        );
  }

  Future<Set<String>> getFeedLikedIds({
    required List<String> feedIds,
    required String userId,
  }) async {
    if (feedIds.isEmpty || userId.isEmpty) return {};

    final results = await Future.wait(
      feedIds.map(
        (feedId) => _feeds.doc(feedId).collection('likes').doc(userId).get(),
      ),
    );

    final liked = <String>{};
    for (var i = 0; i < feedIds.length; i++) {
      if (_isActiveLikeSnapshot(results[i])) liked.add(feedIds[i]);
    }
    return liked;
  }

  Future<bool> hasFeedLiked({
    required String feedId,
    required String userId,
  }) async {
    final doc = await _feeds.doc(feedId).collection('likes').doc(userId).get();
    return _isActiveLikeSnapshot(doc);
  }

  Future<({bool isLiked, int likeCount})> submitFeedLike({
    required String feedId,
    required String userId,
    required FeedLikeData likeData,
  }) async {
    final feedRef = _feeds.doc(feedId);
    final likeRef = feedRef.collection('likes').doc(userId);
    final path = 'feeds/$feedId/likes/$userId';

    return FirebaseLogger.write(
      'TRANSACTION',
      path,
      likeData.toJson(),
      () async {
        return _firestore.runTransaction((transaction) async {
          final feedSnap = await transaction.get(feedRef);
          if (!feedSnap.exists) {
            throw StateError('Feed not found');
          }

          final likeSnap = await transaction.get(likeRef);
          final currentCount =
              (feedSnap.data()?['likeCount'] as num?)?.toInt() ?? 0;
          final isLiked = _isActiveLikeSnapshot(likeSnap);

          if (isLiked) {
            transaction.update(likeRef, {
              'status': 'deleted',
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
            final nextCount = currentCount > 0 ? currentCount - 1 : 0;
            transaction.update(feedRef, {'likeCount': nextCount});
            return (isLiked: false, likeCount: nextCount);
          }

          if (likeSnap.exists) {
            transaction.update(likeRef, {
              ...likeData.toJson(),
              'status': 'active',
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
          } else {
            transaction.set(likeRef, {
              ...likeData.toJson(),
              'status': 'active',
              'createdAt': FirestoreJson.writeTimestamp(),
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
          }

          final nextCount = currentCount + 1;
          transaction.update(feedRef, {'likeCount': nextCount});
          return (isLiked: true, likeCount: nextCount);
        });
      },
    );
  }

  Future<List<FeedLikeData>> getFeedLikes(String feedId) async {
    final path = 'feeds/$feedId/likes';
    final snapshot = await FirebaseLogger.list(
      path,
      () => _feeds
          .doc(feedId)
          .collection('likes')
          .orderBy('createdAt', descending: true)
          .get(),
      dataExtractor: (snap) => snap.docs.map((doc) => doc.toModelJson).toList(),
    );

    final likes = snapshot.docs
        .map(
          (doc) =>
              FeedLikeData.fromJson({...doc.toModelJson, 'userId': doc.id}),
        )
        .where(_isActiveLikeData)
        .toList()
      ..sort(
        (a, b) => (b.updatedAt ?? b.createdAt ?? DateTime(0)).compareTo(
          a.updatedAt ?? a.createdAt ?? DateTime(0),
        ),
      );

    return likes;
  }

  Stream<List<CommentData>> streamComments(String feedId) {
    return _feeds
        .doc(feedId)
        .collection('comments')
        .orderBy('createdAt', descending: false)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => CommentData.fromJson(doc.toModelJson))
              .where(_isActiveComment)
              .toList(),
        );
  }

  Future<CommentData?> getComment({
    required String feedId,
    required String commentId,
  }) async {
    final path = 'feeds/$feedId/comments/$commentId';
    final doc = await FirebaseLogger.get(
      path,
      () => _feeds.doc(feedId).collection('comments').doc(commentId).get(),
      dataExtractor: (snap) => snap.toModelJson,
    );

    final json = doc.toModelJson;
    if (json == null) return null;
    final data = CommentData.fromJson(json);
    return _isActiveComment(data) ? data : null;
  }

  Future<void> updateComment({
    required String feedId,
    required String commentId,
    required String content,
  }) async {
    final ref = _feeds.doc(feedId).collection('comments').doc(commentId);
    final path = 'feeds/$feedId/comments/$commentId';
    final payload = {
      'content': content,
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    await FirebaseLogger.write('UPDATE', path, payload, () => ref.update(payload));
  }

  Future<void> deleteComment({
    required String feedId,
    required String commentId,
  }) async {
    final feedRef = _feeds.doc(feedId);
    final commentRef = feedRef.collection('comments').doc(commentId);
    final path = 'feeds/$feedId/comments/$commentId';

    await FirebaseLogger.write('TRANSACTION', path, {'status': 'deleted'}, () async {
      await _firestore.runTransaction((transaction) async {
        final feedSnap = await transaction.get(feedRef);
        if (!feedSnap.exists) {
          throw StateError('Feed not found');
        }

        final commentSnap = await transaction.get(commentRef);
        if (!commentSnap.exists) {
          throw StateError('Comment not found');
        }

        final status = commentSnap.data()?['status'] as String? ?? 'active';
        if (status == 'deleted') return;

        final currentCount =
            (feedSnap.data()?['commentCount'] as num?)?.toInt() ?? 0;

        transaction.update(commentRef, {
          'status': 'deleted',
          'updatedAt': FirestoreJson.writeTimestamp(),
        });
        transaction.update(feedRef, {
          'commentCount': currentCount > 0 ? currentCount - 1 : 0,
        });
      });
    });
  }

  Future<void> deleteFeed(String feedId) async {
    final ref = _feeds.doc(feedId);
    final path = 'feeds/$feedId';
    final payload = {
      'status': 'deleted',
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    await FirebaseLogger.write('UPDATE', path, payload, () => ref.update(payload));
  }

  Future<void> updateFeed({
    required String feedId,
    required String content,
    required List<String> images,
    required List<String> videos,
    required bool isPublic,
    required bool allowComments,
  }) async {
    final ref = _feeds.doc(feedId);
    final path = 'feeds/$feedId';
    final payload = {
      'content': content,
      'images': images,
      'videos': videos,
      'isPublic': isPublic,
      'allowComments': allowComments,
      'updatedAt': FirestoreJson.writeTimestamp(),
    };

    await FirebaseLogger.write('UPDATE', path, payload, () => ref.update(payload));
  }

  Future<Set<String>> getCommentLikedIds({
    required String feedId,
    required String userId,
    required List<String> commentIds,
  }) async {
    if (commentIds.isEmpty || userId.isEmpty) return {};

    final results = await Future.wait(
      commentIds.map(
        (commentId) => _feeds
            .doc(feedId)
            .collection('comments')
            .doc(commentId)
            .collection('likes')
            .doc(userId)
            .get(),
      ),
    );

    final liked = <String>{};
    for (var i = 0; i < commentIds.length; i++) {
      if (_isActiveLikeSnapshot(results[i])) liked.add(commentIds[i]);
    }
    return liked;
  }

  Future<String> addComment({
    required String feedId,
    required CommentData comment,
  }) async {
    final feedRef = _feeds.doc(feedId);
    final commentRef = feedRef.collection('comments').doc();
    final path = 'feeds/$feedId/comments/${commentRef.id}';

    await FirebaseLogger.write('TRANSACTION', path, comment.toJson(), () async {
      await _firestore.runTransaction((transaction) async {
        final feedSnap = await transaction.get(feedRef);
        if (!feedSnap.exists) {
          throw StateError('Feed not found');
        }

        final allowComments =
            feedSnap.data()?['allowComments'] as bool? ?? true;
        if (!allowComments) {
          throw StateError('Comments are disabled');
        }

        final parentId = comment.parentId;
        if (parentId != null && parentId.isNotEmpty) {
          final parentRef = feedRef.collection('comments').doc(parentId);
          final parentSnap = await transaction.get(parentRef);
          if (!parentSnap.exists) {
            throw StateError('Parent comment not found');
          }
        }

        final currentCount =
            (feedSnap.data()?['commentCount'] as num?)?.toInt() ?? 0;

        transaction.set(commentRef, {
          ...comment.toJson(),
          'status': 'active',
          'createdAt': FirestoreJson.writeTimestamp(),
        });
        transaction.update(feedRef, {'commentCount': currentCount + 1});
      });
    });

    return commentRef.id;
  }

  Future<({bool isLiked, int likeCount})> submitFeedCommentLike({
    required String feedId,
    required String commentId,
    required String userId,
    required FeedLikeData likeData,
  }) async {
    final commentRef = _feeds.doc(feedId).collection('comments').doc(commentId);
    final likeRef = commentRef.collection('likes').doc(userId);
    final path = 'feeds/$feedId/comments/$commentId/likes/$userId';

    return FirebaseLogger.write(
      'TRANSACTION',
      path,
      likeData.toJson(),
      () async {
        return _firestore.runTransaction((transaction) async {
          final commentSnap = await transaction.get(commentRef);
          if (!commentSnap.exists) {
            throw StateError('Comment not found');
          }

          final likeSnap = await transaction.get(likeRef);
          final currentCount =
              (commentSnap.data()?['likeCount'] as num?)?.toInt() ?? 0;
          final isLiked = _isActiveLikeSnapshot(likeSnap);

          if (isLiked) {
            transaction.update(likeRef, {
              'status': 'deleted',
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
            final nextCount = currentCount > 0 ? currentCount - 1 : 0;
            transaction.update(commentRef, {'likeCount': nextCount});
            return (isLiked: false, likeCount: nextCount);
          }

          if (likeSnap.exists) {
            transaction.update(likeRef, {
              ...likeData.toJson(),
              'status': 'active',
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
          } else {
            transaction.set(likeRef, {
              ...likeData.toJson(),
              'status': 'active',
              'createdAt': FirestoreJson.writeTimestamp(),
              'updatedAt': FirestoreJson.writeTimestamp(),
            });
          }

          final nextCount = currentCount + 1;
          transaction.update(commentRef, {'likeCount': nextCount});
          return (isLiked: true, likeCount: nextCount);
        });
      },
    );
  }

  Future<Query<Map<String, dynamic>>> _applyCursor(
    Query<Map<String, dynamic>> query,
    String? cursor,
  ) async {
    if (cursor == null || cursor.isEmpty) return query;

    final cursorDoc = await _feeds.doc(cursor).get();
    if (!cursorDoc.exists) return query;

    return query.startAfterDocument(cursorDoc);
  }

  ({List<FeedData> items, String? nextCursor, bool hasMore}) _mapPage(
    List<QueryDocumentSnapshot<Map<String, dynamic>>> docs,
    int limit,
  ) {
    final hasMore = docs.length > limit;
    final pageDocs = hasMore ? docs.take(limit).toList() : docs;

    final items = pageDocs
        .map((doc) => FeedData.fromJson(doc.toModelJson))
        .toList();

    final nextCursor = hasMore && pageDocs.isNotEmpty ? pageDocs.last.id : null;

    return (items: items, nextCursor: nextCursor, hasMore: hasMore);
  }

  bool _isActiveComment(CommentData data) {
    final status = data.status ?? 'active';
    return status == 'active';
  }

  bool _isActiveLikeData(FeedLikeData data) {
    final status = data.status ?? 'active';
    return status == 'active';
  }

  bool _isActiveLikeSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    if (!snapshot.exists) return false;
    final status = snapshot.data()?['status'] as String? ?? 'active';
    return status == 'active';
  }
}
