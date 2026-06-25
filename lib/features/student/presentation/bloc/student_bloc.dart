import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/entity/student_class_stats.dart';
import 'package:tanlu_management/features/student/domain/entity/student_gender_filter.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_all_student_by_class_id.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_student_class_stats_use_case.dart';

part 'student_bloc.freezed.dart';
part 'student_event.dart';
part 'student_state.dart';

@injectable
class StudentBloc extends BaseBloc<StudentEvent, StudentState> {
  StudentBloc(
    this._getAllStudentByClassIdUseCase,
    this._getStudentClassStatsUseCase,
  ) : super(const StudentState()) {
    on<FetchStudents>(_onFetchStudents);
    on<RefreshStudents>(_onRefreshStudents);
    on<ChangeStudentGenderFilter>(_onChangeGenderFilter);
    on<SearchStudents>(_onSearchStudents);
  }

  final GetAllStudentByClassIdUseCase _getAllStudentByClassIdUseCase;
  final GetStudentClassStatsUseCase _getStudentClassStatsUseCase;

  GetAllStudentByClassIdInput _listInput(String classId) {
    return GetAllStudentByClassIdInput(
      classId: classId,
      gender: state.genderFilter.firestoreValue,
      searchKeyword: state.searchKeyword.isEmpty ? null : state.searchKeyword,
    );
  }

  Future<void> _onFetchStudents(
    FetchStudents event,
    Emitter<StudentState> emit,
  ) async {
    final classId = event.classId;
    if (classId == null || classId.isEmpty) {
      emit(
        state.copyWith(
          isLoading: false,
          students: [],
          classId: classId,
          onPageError: 'Chưa được gán lớp',
        ),
      );
      return;
    }

    await _loadStudents(emit, classId: classId, withStats: true);
  }

  Future<void> _onChangeGenderFilter(
    ChangeStudentGenderFilter event,
    Emitter<StudentState> emit,
  ) async {
    final classId = state.classId;
    if (classId == null || classId.isEmpty) return;

    emit(
      state.copyWith(genderFilter: StudentGenderFilter.fromIndex(event.index)),
    );
    await _loadStudents(
      emit,
      classId: classId,
      withStats: false,
      clearList: false,
    );
  }

  Future<void> _onSearchStudents(
    SearchStudents event,
    Emitter<StudentState> emit,
  ) async {
    final classId = state.classId;
    if (classId == null || classId.isEmpty) return;

    emit(state.copyWith(searchKeyword: event.query.trim()));
    await _loadStudents(
      emit,
      classId: classId,
      withStats: false,
      showLoading: false,
      clearList: false,
    );
  }

  Future<void> _loadStudents(
    Emitter<StudentState> emit, {
    required String classId,
    required bool withStats,
    bool showLoading = true,
    bool clearList = true,
  }) async {
    await runBlocCatching(
      action: () async {
        emit(
          clearList
              ? state.copyWith(
                  isLoading: showLoading,
                  onPageError: '',
                  students: const [],
                  classId: classId,
                )
              : state.copyWith(
                  isLoading: showLoading,
                  onPageError: '',
                  classId: classId,
                ),
        );

        if (withStats) {
          final results = await Future.wait([
            _getAllStudentByClassIdUseCase.execute(_listInput(classId)),
            _getStudentClassStatsUseCase.execute(
              GetStudentClassStatsInput(classId: classId),
            ),
          ]);

          final listOutput = results[0] as GetAllStudentByClassIdOutput;
          final statsOutput = results[1] as GetStudentClassStatsOutput;

          emit(
            state.copyWith(
              isLoading: false,
              students: listOutput.students,
              stats: statsOutput.stats,
            ),
          );
          return;
        }

        final listOutput = await _getAllStudentByClassIdUseCase.execute(
          _listInput(classId),
        );

        emit(state.copyWith(isLoading: false, students: listOutput.students));
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onRefreshStudents(
    RefreshStudents event,
    Emitter<StudentState> emit,
  ) async {
    final classId = event.classId ?? state.classId;
    if (classId == null || classId.isEmpty) return;

    await _loadStudents(
      emit,
      classId: classId,
      withStats: true,
      showLoading: false,
      clearList: false,
    );
  }
}
