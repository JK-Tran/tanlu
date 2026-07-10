part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
    @Default([]) List<Student> students,
    @Default([]) List<Student> allStudents,
    @Default('') String searchQuery,
    @Default(0) int genderFilterIndex,
    @Default('') String onPageError,
    @Default(false) bool showListLoading,
    @Default(false) bool isRefreshing,
  }) = _StudentState;
}
