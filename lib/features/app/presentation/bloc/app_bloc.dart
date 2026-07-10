import 'dart:async';

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

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(
    this._getInitialAuthDataUseCase,
    this._getMeUseCase,
    this._logoutUseCase,
    this._updateFcmTokenUseCase,
  ) : super(const AppState.loading()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
  }

  final GetInitialAuthDataUseCase _getInitialAuthDataUseCase;
  final GetMeUseCase _getMeUseCase;
  final LogoutUseCase _logoutUseCase;
  final UpdateFcmTokenUseCase _updateFcmTokenUseCase;

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

          // Nếu thành công, có thể emit lại trạng thái mới để cập nhật UI
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
  }

  FutureOr<void> _onLoggedOut(_LoggedOut event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _logoutUseCase.execute(const LogoutInput());
        emit(const AppState.unauthenticated());
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  User? get currentUser => state.mapOrNull(authenticated: (s) => s.user);

  @override
  Future<void> close() {
    _tokenRefreshSub?.cancel();
    return super.close();
  }
}
