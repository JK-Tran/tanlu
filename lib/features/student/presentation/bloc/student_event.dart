part of 'student_bloc.dart';

abstract class StudentEvent {
  const StudentEvent();
}

@freezed
class PageStarted extends StudentEvent with _$PageStarted {
  const factory PageStarted() = _PageStarted;
}

@freezed
class RefreshRequested extends StudentEvent with _$RefreshRequested {
  const factory RefreshRequested() = _RefreshRequested;
}

@freezed
class GenderFilterChanged extends StudentEvent with _$GenderFilterChanged {
  const factory GenderFilterChanged({required int index}) =
      _GenderFilterChanged;
}

@freezed
class SearchQueryChanged extends StudentEvent with _$SearchQueryChanged {
  const factory SearchQueryChanged({required String query}) =
      _SearchQueryChanged;
}
