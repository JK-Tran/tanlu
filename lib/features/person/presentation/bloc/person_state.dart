part of 'person_bloc.dart';

@freezed
class PersonState with _$PersonState {
  const factory PersonState({
    @Default(false) bool isSubmitting,
    @Default('') String onPageError,
    @Default(false) bool changePasswordSuccess,
  }) = _PersonState;
}
