import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';

/// Lỗi đăng nhập Google (hủy, không có token, hoặc lỗi nền tảng).
class GoogleSignInException implements Exception {
  GoogleSignInException(this.code, {this.cause});
  final String code;
  final Object? cause;
  @override
  String toString() =>
      'GoogleSignInException($code)${cause != null ? ': $cause' : ''}';
}

/// Service đăng nhập Google bằng Firebase Auth và google_sign_in.
/// Trả về **Firebase ID token** (aud = project ID) để BE verify bằng Firebase Admin.
/// Không trả về token OAuth từ Google (aud = client ID) vì BE dùng verifyIdToken().
@lazySingleton
class GoogleAuthService {
  GoogleAuthService(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  /// Đăng nhập Google → đăng nhập Firebase với credential → lấy Firebase ID token.
  Future<String> signInAndGetIdToken() async {
    final googleSignIn = GoogleSignIn.instance;
    await googleSignIn.initialize();

    GoogleSignInAccount? account;
    try {
      account = await googleSignIn.authenticate();
    } catch (e, st) {
      appLogger.e('Google Sign-In authenticate() failed', e, st);
      throw GoogleSignInException('google_sign_in_failed', cause: e);
    }

    final googleAuth = account.authentication;
    final idToken = googleAuth.idToken;
    if (idToken == null || idToken.isEmpty) {
      throw GoogleSignInException('google_id_token_empty');
    }

    // Đăng nhập Firebase bằng credential Google → token trả về có aud = Firebase project (loclens-dev).
    final credential = GoogleAuthProvider.credential(idToken: idToken);
    final userCredential = await _firebaseAuth.signInWithCredential(credential);
    final firebaseUser = userCredential.user;
    if (firebaseUser == null) {
      throw GoogleSignInException('google_sign_in_failed');
    }

    final firebaseIdToken = await firebaseUser.getIdToken(true);
    if (firebaseIdToken == null || firebaseIdToken.isEmpty) {
      throw GoogleSignInException('google_id_token_empty');
    }
    return firebaseIdToken;
  }

  Future<void> signOut() async {
    final googleSignIn = GoogleSignIn.instance;
    await Future.wait([_firebaseAuth.signOut(), googleSignIn.signOut()]);
  }
}
