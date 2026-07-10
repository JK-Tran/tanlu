import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/core/constants/app_strings.dart';
import 'package:tanlu_management/features/auth/domain/usecases/login_use_case.dart';
import 'package:tanlu_management/shared/exception/base/app_exception.dart';
import 'package:tanlu_management/shared/exception/uncaught/app_uncaught_exception.dart';

import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/domain/usecases/update_fcm_token_use_case.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  static const _debugEmail = 'teacher@tanlu.com';
  static const _debugPassword = '123456';

  LoginBloc(this._loginUseCase, this._updateFcmTokenUseCase, this._appBloc)
    : super(
        LoginState(
          email: kDebugMode ? _debugEmail : '',
          password: kDebugMode ? _debugPassword : '',
          isLoginButtonEnabled: kDebugMode,
        ),
      ) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<ShowPassswordButtonPressed>(_onShowPassswordButtonPressed);
  }

  final LoginUseCase _loginUseCase;
  final UpdateFcmTokenUseCase _updateFcmTokenUseCase;
  final AppBloc _appBloc;

  bool _isLoginButtonEnabled(String email, String password) {
    return email.trim().isNotEmpty && password.isNotEmpty;
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        isLoginButtonEnabled: _isLoginButtonEnabled(
          event.email,
          state.password,
        ),
        showLoginButtonLoading: false,
        onPageError: '',
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
        isLoginButtonEnabled: _isLoginButtonEnabled(
          state.email,
          event.password,
        ),
        showLoginButtonLoading: false,
        onPageError: '',
      ),
    );
  }

  Future<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            onPageError: '',
            showLoginButtonLoading: true,
            loginSuccess: null,
          ),
        );

        final output = await _loginUseCase.execute(
          LoginInput(email: state.email.trim(), password: state.password),
        );

        if (output.user case final user?) {
          try {
            final fcmToken = await FirebaseMessaging.instance.getToken();

            if (fcmToken != null) {
              await _updateFcmTokenUseCase.execute(
                UpdateFcmTokenInput(fcmToken: fcmToken),
              );
            }
          } catch (e) {
            // Ignore FCM update errors during login, or log them
            debugPrint("FCM Update Error: $e");
          }

          // Báo cho AppBloc biết user đã đăng nhập thành công
          _appBloc.add(AppEvent.loggedIn(user));
        }

        emit(state.copyWith(showLoginButtonLoading: false, loginSuccess: true));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            showLoginButtonLoading: false,
            onPageError: _mapErrorMessage(e),
            loginSuccess: false,
          ),
        );
      },
    );
  }

  void _onShowPassswordButtonPressed(
    ShowPassswordButtonPressed event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(obscureText: !state.obscureText));
  }

  String _mapErrorMessage(Object error) {
    if (error is AppUncaughtException) {
      final root = error.rootError;
      if (root is AppException) return root.toString();
      return root?.toString() ?? AppStrings.unknownError;
    }
    if (error is AppException) return error.toString();
    return error.toString();
  }
}
