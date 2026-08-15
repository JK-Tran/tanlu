import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/auth/domain/usecases/change_password_use_case.dart';
import 'package:tanlu_management/l10n/l10n.dart';
import 'package:tanlu_management/shared/exception/remote/remote_exception.dart';

part 'person_event.dart';
part 'person_state.dart';
part 'person_bloc.freezed.dart';

@Injectable()
class PersonBloc extends BaseBloc<PersonEvent, PersonState> {
  PersonBloc(this._changePasswordUseCase) : super(const PersonState()) {
    on<_ChangePassword>(_onChangePassword);
  }

  final ChangePasswordUseCase _changePasswordUseCase;

  FutureOr<void> _onChangePassword(
    _ChangePassword event,
    Emitter<PersonState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        onPageError: '',
        changePasswordSuccess: false,
      ),
    );

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _changePasswordUseCase.execute(
          ChangePasswordInput(
            oldPassword: event.oldPassword,
            newPassword: event.newPassword,
          ),
        );
        emit(state.copyWith(isSubmitting: false, changePasswordSuccess: true));
      },
      doOnError: (e) {
        String errorMessage = S.current.errorGeneric;
        if (e is RemoteException) {
          final serverMsg = e.generalServerMessage ?? '';
          if (serverMsg.contains('Incorrect old password')) {
            errorMessage = S.current.errorIncorrectOldPassword;
          } else if (serverMsg.contains(
            'Both old password and new password are required',
          )) {
            errorMessage = S.current.errorMissingPasswords;
          } else if (serverMsg.contains('at least 6 characters long')) {
            errorMessage = S.current.errorPasswordTooShort;
          } else if (serverMsg.contains(
            'contain at least one uppercase letter, one lowercase letter, and one number',
          )) {
            errorMessage = S.current.errorPasswordComplexity;
          } else if (serverMsg.isNotEmpty) {
            errorMessage = serverMsg;
          }
        }

        emit(state.copyWith(isSubmitting: false, onPageError: errorMessage));
      },
    );
  }
}
