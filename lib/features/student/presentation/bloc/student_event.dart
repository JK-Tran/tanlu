part of 'student_bloc.dart';

abstract class StudentEvent {
  const StudentEvent();
}

@freezed
class FetchStudents extends StudentEvent with _$FetchStudents {
  const factory FetchStudents({String? classId}) = _FetchStudents;
}

@freezed
class RefreshStudents extends StudentEvent with _$RefreshStudents {
  const factory RefreshStudents({String? classId}) = _RefreshStudents;
}

@freezed
class ChangeStudentGenderFilter extends StudentEvent
    with _$ChangeStudentGenderFilter {
  const factory ChangeStudentGenderFilter({required int index}) =
      _ChangeStudentGenderFilter;
}

@freezed
class SearchStudents extends StudentEvent with _$SearchStudents {
  const factory SearchStudents({required String query}) = _SearchStudents;
}
