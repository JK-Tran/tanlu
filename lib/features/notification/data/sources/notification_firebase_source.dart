import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/model/device_token_data.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';

@lazySingleton
class NotificationFirebaseSource {
  NotificationFirebaseSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<void> saveDeviceToken(DeviceTokenData data) async {
    final userId = data.userId ?? '';
    final body = {
      'fcmToken': data.fcmToken,
      'fcmTokenUpdatedAt': 'serverTimestamp',
    };

    await FirebaseLogger.write(
      'SET',
      'users/$userId',
      body,
      () => _firestore.collection('users').doc(userId).set({
        'fcmToken': data.fcmToken,
        'fcmTokenUpdatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true)),
    );
  }

  Future<void> clearDeviceToken(String userId) async {
    await FirebaseLogger.write(
      'SET',
      'users/$userId',
      {'fcmToken': null, 'fcmTokenUpdatedAt': null},
      () => _firestore.collection('users').doc(userId).set({
        'fcmToken': FieldValue.delete(),
        'fcmTokenUpdatedAt': FieldValue.delete(),
      }, SetOptions(merge: true)),
    );
  }
}
