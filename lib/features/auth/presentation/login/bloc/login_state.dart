part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String username,
    @Default('') String password,
    @Default(false) bool isLoginButtonEnabled,
    @Default(true) bool obscureText,
    @Default('') String onPageError,
    @Default(false) bool showLoginButtonLoading,
    bool? loginSuccess,
  }) = _LoginState;

  // static LoginState get debugInit {
  //   return const LoginState(
  //     username: 'parent.minh@gmail.com',
  //     password: 'Parent@123456',
  //     isLoginButtonEnabled: true,
  //   );
  // }

  static LoginState get debugInit {
    return const LoginState(
      username: 'teacher.lan@anhduong.edu.vn',
      password: 'Teacher@123456',
      isLoginButtonEnabled: true,
    );
  }
}
