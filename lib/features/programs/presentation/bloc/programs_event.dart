part of 'programs_bloc.dart';

abstract class ProgramsEvent {
  const ProgramsEvent();
}

@freezed
class ProgramsStarted extends ProgramsEvent with _$ProgramsStarted {
  const factory ProgramsStarted() = _ProgramsStarted;
}

@freezed
class FetchPrograms extends ProgramsEvent with _$FetchPrograms {
  const factory FetchPrograms() = _FetchPrograms;
}

@freezed
class FetchProgramDetail extends ProgramsEvent with _$FetchProgramDetail {
  const factory FetchProgramDetail(int id) = _FetchProgramDetail;
}