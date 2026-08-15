import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/usecases/get_initial_auth_data_use_case.dart';
import 'package:tanlu_management/features/auth/domain/usecases/get_me_use_case.dart';
import 'package:tanlu_management/features/auth/domain/usecases/logout_use_case.dart';
import 'package:tanlu_management/features/auth/domain/usecases/update_fcm_token_use_case.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';
import 'package:tanlu_management/shared/services/socket/global_web_socket_service.dart';

import 'package:get_it/get_it.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> with WidgetsBindingObserver {
  AppBloc(
    this._getInitialAuthDataUseCase,
    this._getMeUseCase,
    this._logoutUseCase,
    this._updateFcmTokenUseCase,
    this._appPreferences,
    this._globalWebSocketService,
  ) : super(const AppState.loading()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
    WidgetsBinding.instance.addObserver(this);
  }

  final GetInitialAuthDataUseCase _getInitialAuthDataUseCase;
  final GetMeUseCase _getMeUseCase;
  final LogoutUseCase _logoutUseCase;
  final UpdateFcmTokenUseCase _updateFcmTokenUseCase;
  final AppPreferences _appPreferences;
  final GlobalWebSocketService _globalWebSocketService;

  StreamSubscription<String>? _tokenRefreshSub;

  FutureOr<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final output = await _getInitialAuthDataUseCase.execute(
          const GetInitialAuthDataInput(),
        );
        if (!output.isLoggedIn || output.user == null || output.user?.id == 0) {
          emit(const AppState.unauthenticated());
          return;
        }
        emit(AppState.authenticated(output.user!));

        final token = await _appPreferences.accessToken;
        _globalWebSocketService.connect(token);
        _globalWebSocketService.subscribe('user_${output.user!.id}');
        _globalWebSocketService.subscribe('app_presence');
        GetIt.instance.get<ChatBloc>();

        try {
          final output = await _getMeUseCase.execute(const GetMeInput());

          final currentFcmToken = await FirebaseMessaging.instance.getToken();

          if (currentFcmToken != null &&
              currentFcmToken.isNotEmpty &&
              currentFcmToken != output.user.fcmToken) {
            await _updateFcmTokenUseCase.execute(
              UpdateFcmTokenInput(fcmToken: currentFcmToken),
            );
          }

          // Lắng nghe sự thay đổi Token của Firebase
          _tokenRefreshSub ??= FirebaseMessaging.instance.onTokenRefresh.listen(
            (newToken) {
              if (newToken != output.user.fcmToken) {
                _updateFcmTokenUseCase.execute(
                  UpdateFcmTokenInput(fcmToken: newToken),
                );
              }
            },
          );

          emit(AppState.authenticated(output.user));
        } catch (e) {
          // Bỏ qua lỗi mạng (offline), nhưng nếu lỗi là 401 thì sẽ đăng xuất
          // Việc check 401 thường được thực hiện tự động ở interceptor API
        }
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  FutureOr<void> _onLoggedIn(_LoggedIn event, Emitter<AppState> emit) async {
    emit(AppState.authenticated(event.user));
    final token = await _appPreferences.accessToken;
    _globalWebSocketService.connect(token);
    _globalWebSocketService.subscribe('user_${event.user.id}');
    _globalWebSocketService.subscribe('app_presence');
    GetIt.instance.get<ChatBloc>();
  }

  FutureOr<void> _onLoggedOut(_LoggedOut event, Emitter<AppState> emit) async {
    final isUnauthenticated = state.maybeWhen(
      unauthenticated: () => true,
      orElse: () => false,
    );
    if (isUnauthenticated) {
      return; // Ngăn chặn infinite loop khi RefreshTokenInterceptor gọi liên tục
    }

    emit(const AppState.unauthenticated());

    try {
      await _logoutUseCase.execute(const LogoutInput());
    } catch (_) {
      // Ignore API errors during logout
    } finally {
      _globalWebSocketService.disconnect();
    }
  }

  User? get currentUser => state.mapOrNull(authenticated: (s) => s.user);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.detached) {
      _globalWebSocketService.disconnect();
    } else if (state == AppLifecycleState.resumed) {
      if (currentUser != null) {
        _appPreferences.accessToken.then((token) {
          _globalWebSocketService.connect(token);
          _globalWebSocketService.subscribe('user_${currentUser!.id}');
          _globalWebSocketService.subscribe('app_presence');
        });
      }
    }
    super.didChangeAppLifecycleState(state);
  }

  @override
  Future<void> close() {
    WidgetsBinding.instance.removeObserver(this);
    _tokenRefreshSub?.cancel();
    return super.close();
  }
}
