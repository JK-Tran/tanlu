import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/services/firebase/firebase_logger.dart';
import 'package:tanlu_management/shared/services/google_auth_service.dart';

@lazySingleton
class AuthFirebaseSource {
  AuthFirebaseSource(
    this._firebaseAuth,
    this._firestore,
    this._firebaseFunctions,
    this._googleAuthService,
  );

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final FirebaseFunctions _firebaseFunctions;
  final GoogleAuthService _googleAuthService;

  User? get currentFirebaseUser => _firebaseAuth.currentUser;

  Future<String?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user?.getIdToken();
  }

  /// Profile sau login — qua Cloud Function [loginProfile].
  Future<UserData?> fetchLoginProfile() async {
    try {
      final result = await _firebaseFunctions
          .httpsCallable('loginProfile')
          .call<Map<String, dynamic>>();

      final data = Map<String, dynamic>.from(result.data);
      return UserData.fromJson(data);
    } on FirebaseFunctionsException catch (e) {
      throw _mapFunctionsException(e);
    }
  }

  /// Fallback trực tiếp Firestore (debug / function chưa deploy).
  Future<UserData?> getUserById(String id) async {
    final doc = await FirebaseLogger.get(
      'users/$id',
      () => _firestore.collection('users').doc(id).get(),
      dataExtractor: (snap) => snap.exists
          ? {'id': snap.id, ...snap.data() as Map<String, dynamic>}
          : null,
    );

    if (!doc.exists) return null;
    final data = {'id': doc.id, ...doc.data() as Map<String, dynamic>};
    return UserData.fromJson(data);
  }

  Future<void> signOut() => _googleAuthService.signOut();

  AppException _mapFunctionsException(FirebaseFunctionsException e) {
    return switch (e.code) {
      'unauthenticated' => UnauthorizedException(
        e.message ?? 'Chưa đăng nhập',
      ),
      'permission-denied' => UnauthorizedException(
        e.message ?? 'Tài khoản không được phép truy cập',
      ),
      'not-found' => const ServerException('Không tìm thấy hồ sơ người dùng'),
      _ => ServerException(e.message ?? 'Lỗi máy chủ đăng nhập'),
    };
  }
}
