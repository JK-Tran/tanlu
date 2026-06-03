part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  /// Đang kiểm tra session — hiển thị Splash
  const factory AppState.loading() = _Loading;

  /// Chưa đăng nhập → điều hướng về Login
  const factory AppState.unauthenticated() = _Unauthenticated;

  /// Đã đăng nhập → điều hướng vào màn hình chính
  const factory AppState.authenticated(User user) = _Authenticated;
}
