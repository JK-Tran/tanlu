part of 'student_bloc.dart';

abstract class StudentEvent {
  const StudentEvent();
}

@freezed
class StudentStarted extends StudentEvent with _$StudentStarted {
  const factory StudentStarted() = _StudentStarted;
}

@freezed
class FetchStudents extends StudentEvent with _$FetchStudents {
  const factory FetchStudents() = _FetchStudents;
}

@freezed
class FetchStudentById extends StudentEvent with _$FetchStudentById {
  const factory FetchStudentById(int id) = _FetchStudentById;
}

@freezed
class RefreshStudents extends StudentEvent with _$RefreshStudents {
  const factory RefreshStudents() = _RefreshStudents;
}

@freezed
class UpdateStudent extends StudentEvent with _$UpdateStudent {
  const factory UpdateStudent({
    required int id,
    required Map<String, dynamic> data,
  }) = _UpdateStudent;
}
