part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  /// Khởi chạy app — kiểm tra session
  const factory AppEvent.started() = _Started;

  /// Đã đăng nhập thành công (gọi từ AuthBloc sau khi login xong)
  const factory AppEvent.loggedIn(User user) = _LoggedIn;

  /// Đăng xuất
  const factory AppEvent.loggedOut() = _LoggedOut;

  /// Bật/tắt thông báo trong app
  const factory AppEvent.notificationsEnabledChanged(bool enabled) =
      _NotificationsEnabledChanged;
}
