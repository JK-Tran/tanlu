import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';
import 'package:tanlu_management/shared/services/socket_io/socket.dart';
import 'package:tanlu_management/core/config/app_env.dart';
import 'package:get_it/get_it.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(this._authRepository, this._appPreferences, this._socketService)
    : super(const AppState.loading()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
  }

  final AuthRepository _authRepository;
  final AppPreferences _appPreferences;
  final SocketService _socketService;

  /// Kiểm tra trạng thái đăng nhập khi khởi động app
  FutureOr<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final isLoggedIn = _appPreferences.isLoggedIn;
        if (!isLoggedIn) {
          emit(const AppState.unauthenticated());
          return;
        }

        try {
          // Luôn gọi getMe để lấy thông tin user mới nhất và cập nhật navigation
          final fetchedUser = await _authRepository.getMe();
          _socketService.connect(AppEnv.socketUrl);
          GetIt.instance.get<ChatBloc>().add(const ChatStarted());
          emit(AppState.authenticated(fetchedUser));
        } catch (e) {
          if (e is UnauthorizedException) {
            // Token hết hạn → Yêu cầu đăng nhập lại
            await _authRepository.clearCurrentUserData();
            emit(const AppState.unauthenticated());
          } else {
            // Lỗi mạng/lỗi khác → Dùng tạm cache nếu có
            final cachedUser = _authRepository.getCurrentUser();
            if (cachedUser.id != 0 && cachedUser.email.isNotEmpty) {
              _socketService.connect(AppEnv.socketUrl);
              GetIt.instance.get<ChatBloc>().add(const ChatStarted());
              emit(AppState.authenticated(cachedUser));
            } else {
              await _authRepository.clearCurrentUserData();
              emit(const AppState.unauthenticated());
            }
          }
        }
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  /// Sau khi đăng nhập thành công (gọi từ LoginBloc)
  FutureOr<void> _onLoggedIn(_LoggedIn event, Emitter<AppState> emit) async {
    _socketService.connect(AppEnv.socketUrl);
    GetIt.instance.get<ChatBloc>().add(const ChatStarted());
    emit(AppState.authenticated(event.user));
  }

  FutureOr<void> _onLoggedOut(_LoggedOut event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _authRepository.logout();
        _socketService.disconnect();
        GetIt.instance.get<ChatBloc>().add(const ClearChat());
        emit(const AppState.unauthenticated());
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  /// Lấy user hiện tại (nếu đang authenticated)
  User? get currentUser => state.mapOrNull(authenticated: (s) => s.user);
}
