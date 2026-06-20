part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState({
    @Default([]) List<Student> students,
    Student? currentStudent,
    StudentClassStats? stats,
    @Default(StudentGenderFilter.all) StudentGenderFilter genderFilter,
    @Default('') String searchKeyword,
    @Default('') String onPageError,
    @Default(false) bool isLoading,
    String? classId,
  }) = _StudentState;
}
