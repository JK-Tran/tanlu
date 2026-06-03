part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
    @Default([]) List<Student> students,
    Student? currentStudent,
    @Default('') String onPageError,
    @Default(false) bool isLoading,
  }) = _StudentState;
}
