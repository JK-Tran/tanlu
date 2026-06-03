part of 'login_bloc.dart';

abstract class LoginEvent {
  const LoginEvent();
}

@freezed
class UsernameChanged extends LoginEvent with _$UsernameChanged {
  const factory UsernameChanged(String v, {required String username}) =
      _UsernameChanged;
}

@freezed
class PasswordChanged extends LoginEvent with _$PasswordChanged {
  const factory PasswordChanged(String v, {required String password}) =
      _PasswordChanged;
}

@freezed
class ShowPassswordButtonPressed extends LoginEvent
    with _$ShowPassswordButtonPressed {
  const factory ShowPassswordButtonPressed() = _ShowPassswordButtonPressed;
}

@freezed
class LoginButtonPressed extends LoginEvent with _$LoginButtonPressed {
  const factory LoginButtonPressed() = _LoginButtonPressed;
}
