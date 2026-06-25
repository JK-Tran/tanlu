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
}
