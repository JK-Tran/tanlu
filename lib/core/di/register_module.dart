import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/session/session_expired_helper.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';
import 'package:tanlu_management/shared/helper/device_info.dart';
import 'package:tanlu_management/shared/network/dio_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Third-party & factories không gắn được `@injectable` trực tiếp.
@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseFunctions get firebaseFunctions => FirebaseFunctions.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @lazySingleton
  DioClient dioClient(SharedPrefsHelper prefs) =>
      DioClient(prefs, onSessionExpired: SessionExpiredHelper.trigger);

  @lazySingleton
  DeviceInfo deviceInfo() => DeviceInfo();
}
