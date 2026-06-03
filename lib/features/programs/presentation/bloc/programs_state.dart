part of 'programs_bloc.dart';

@freezed
class ProgramsState with _$ProgramsState {
  const factory ProgramsState({
    @Default([]) List<Program> programs,
    @Default(false) bool isLoading,
    @Default('') String pageError,
    Program? detailProgram,
    @Default(false) bool isDetailLoading,
    @Default('') String detailError,
  }) = _ProgramsState;
}
