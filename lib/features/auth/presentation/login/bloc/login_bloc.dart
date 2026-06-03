import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/auth/domain/usecases/login_use_case.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase)
    : super(kDebugMode ? LoginState.debugInit : const LoginState()) {
    on<UsernameChanged>(_onUsernameChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginButtonPressed>(_onLoginButtonPressed);
    on<ShowPassswordButtonPressed>(_onShowPassswordButtonPressed);
  }

  final LoginUseCase _loginUseCase;

  bool _isLoginButtonEnabled(String email, String password) {
    return email.isNotEmpty && password.isNotEmpty;
  }

  void _onUsernameChanged(UsernameChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        username: event.username,
        isLoginButtonEnabled: _isLoginButtonEnabled(
          event.username,
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
          state.username,
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
      action: () async {
        emit(
          state.copyWith(
            onPageError: '',
            showLoginButtonLoading: true,
            loginSuccess: null,
          ),
        );

        final LoginOutput output = await _loginUseCase.execute(
          LoginInput(username: state.username, password: state.password),
        );

        if (output.user != null) {
          emit(
            state.copyWith(showLoginButtonLoading: false, loginSuccess: true),
          );
        } else {
          emit(
            state.copyWith(
              showLoginButtonLoading: false,
              onPageError: 'Đăng nhập không thành công',
              loginSuccess: false,
            ),
          );
        }
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            showLoginButtonLoading: false,
            onPageError: e.toString(),
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
}
