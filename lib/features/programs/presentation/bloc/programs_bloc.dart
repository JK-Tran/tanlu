import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/domain/usecases/get_program_by_id_use_case.dart';
import 'package:tanlu_management/features/programs/domain/usecases/get_programs_use_case.dart';

part 'programs_bloc.freezed.dart';
part 'programs_event.dart';
part 'programs_state.dart';

@injectable
class ProgramsBloc extends BaseBloc<ProgramsEvent, ProgramsState> {
  ProgramsBloc(this._getProgramsUseCase, this._getProgramByIdUseCase)
      : super(const ProgramsState()) {
    on<ProgramsStarted>(_onStarted);
    on<FetchPrograms>(_onFetchPrograms);
    on<FetchProgramDetail>(_onFetchProgramDetail);
  }

  final GetProgramsUseCase _getProgramsUseCase;
  final GetProgramByIdUseCase _getProgramByIdUseCase;

  Future<void> _onStarted(
    ProgramsStarted event,
    Emitter<ProgramsState> emit,
  ) async {
    add(const FetchPrograms());
  }

  Future<void> _onFetchPrograms(
    FetchPrograms event,
    Emitter<ProgramsState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, pageError: ''));
        final output = await _getProgramsUseCase.execute(
          const GetProgramsInput(),
        );
        emit(state.copyWith(isLoading: false, programs: output.programs));
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onFetchProgramDetail(
    FetchProgramDetail event,
    Emitter<ProgramsState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isDetailLoading: true, detailError: ''));
        final output = await _getProgramByIdUseCase.execute(
          GetProgramByIdInput(id: event.id),
        );
        emit(
          state.copyWith(
            isDetailLoading: false,
            detailProgram: output.program,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isDetailLoading: false, detailError: e.toString()));
      },
    );
  }
}
