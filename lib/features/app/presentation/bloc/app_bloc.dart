import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/notification/domain/usecases/register_device_token_use_case.dart';
import 'package:tanlu_management/features/notification/domain/usecases/unregister_device_token_use_case.dart';
import 'package:tanlu_management/shared/services/firebase/fcm_messaging.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';
import 'package:tanlu_management/shared/services/notification/notification_preferences.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@lazySingleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(
    this._authRepository,
    this._appPreferences,
    this._fcmMessaging,
    this._registerDeviceTokenUseCase,
    this._unregisterDeviceTokenUseCase,
    this._chatBloc,
    this._notificationPreferences,
  ) : super(const AppState.loading()) {
    on<_Started>(_onStarted);
    on<_LoggedIn>(_onLoggedIn);
    on<_LoggedOut>(_onLoggedOut);
    on<_NotificationsEnabledChanged>(_onNotificationsEnabledChanged);
  }

  final AuthRepository _authRepository;
  final AppPreferences _appPreferences;
  final FcmMessaging _fcmMessaging;
  final RegisterDeviceTokenUseCase _registerDeviceTokenUseCase;
  final UnregisterDeviceTokenUseCase _unregisterDeviceTokenUseCase;
  final ChatBloc _chatBloc;
  final NotificationPreferences _notificationPreferences;

  String? _registeredUserId;
  StreamSubscription<String>? _tokenRefreshSub;

  FutureOr<void> _onStarted(_Started event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        if (!_appPreferences.isLoggedIn) {
          emit(const AppState.unauthenticated());
          return;
        }

        final user =
            await _authRepository.fetchLatestCurrentUser() ??
            _authRepository.getCurrentUser();

        if (user.id.isEmpty) {
          await _unregisterDeviceToken();
          await _authRepository.clearCurrentUserData();
          emit(const AppState.unauthenticated());
          return;
        }

        emit(AppState.authenticated(user));
        await _registerDeviceToken(user.id);
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  FutureOr<void> _onLoggedIn(_LoggedIn event, Emitter<AppState> emit) async {
    emit(AppState.authenticated(event.user));
    await _registerDeviceToken(event.user.id);
  }

  FutureOr<void> _onLoggedOut(_LoggedOut event, Emitter<AppState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _unregisterDeviceToken();
        _chatBloc.add(const ClearChat());
        await _authRepository.logout();
        emit(const AppState.unauthenticated());
      },
      doOnError: (_) => emit(const AppState.unauthenticated()),
    );
  }

  FutureOr<void> _onNotificationsEnabledChanged(
    _NotificationsEnabledChanged event,
    Emitter<AppState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _notificationPreferences.setEnabled(event.enabled);
        if (!event.enabled) {
          await _unregisterDeviceToken();
          return;
        }

        await _fcmMessaging.requestOsPermission();
        final user = currentUser;
        if (user != null && user.id.isNotEmpty) {
          await _registerDeviceToken(user.id);
        }
      },
    );
  }

  Future<void> _registerDeviceToken(String userId) async {
    if (userId.isEmpty || !_notificationPreferences.isEnabled) return;

    if (_registeredUserId != null && _registeredUserId != userId) {
      await _unregisterDeviceToken(userId: _registeredUserId);
    }

    final token = await _fcmMessaging.getToken();
    if (token == null || token.isEmpty) return;

    final localToken = _appPreferences.deviceToken;
    if (localToken == token && _registeredUserId == userId) {
      _listenTokenRefresh();
      return;
    }

    await _registerDeviceTokenUseCase.execute(
      RegisterDeviceTokenInput(userId: userId, token: token),
    );

    _registeredUserId = userId;
    _listenTokenRefresh();
  }

  Future<void> _unregisterDeviceToken({String? userId}) async {
    final targetUserId = userId ?? _registeredUserId ?? '';

    await _unregisterDeviceTokenUseCase.execute(
      UnregisterDeviceTokenInput(userId: targetUserId),
    );
    await _fcmMessaging.deleteToken();

    if (userId == null || userId == _registeredUserId) {
      _registeredUserId = null;
      _tokenRefreshSub?.cancel();
      _tokenRefreshSub = null;
    }
  }

  void _listenTokenRefresh() {
    _tokenRefreshSub?.cancel();
    _tokenRefreshSub = _fcmMessaging.onTokenRefresh.listen((token) async {
      final userId = _registeredUserId;
      if (userId == null || userId.isEmpty || token.isEmpty) return;

      await _registerDeviceTokenUseCase.execute(
        RegisterDeviceTokenInput(userId: userId, token: token),
      );
    });
  }

  User? get currentUser => state.mapOrNull(authenticated: (s) => s.user);

  @override
  Future<void> close() {
    _tokenRefreshSub?.cancel();
    return super.close();
  }
}
