part of 'person_bloc.dart';

@freezed
class PersonEvent with _$PersonEvent {
  const factory PersonEvent.changePassword({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePassword;
}
