import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_students_use_case.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_student_use_case.dart';
import 'package:tanlu_management/features/student/domain/usecases/update_student_use_case.dart';

part 'student_bloc.freezed.dart';
part 'student_event.dart';
part 'student_state.dart';

@injectable
class StudentBloc extends BaseBloc<StudentEvent, StudentState> {
  StudentBloc(
    this._getStudentsUseCase,
    this._getStudentUseCase,
    this._updateStudentUseCase,
  ) : super(const StudentState()) {
    on<StudentStarted>(_onStudentStarted);
    on<FetchStudents>(_onFetchStudents);
    on<FetchStudentById>(_onFetchStudentById);
    on<RefreshStudents>(_onRefreshStudents);
    on<UpdateStudent>(_onUpdateStudent);
  }

  final GetStudentsUseCase _getStudentsUseCase;
  final GetStudentUseCase _getStudentUseCase;
  final UpdateStudentUseCase _updateStudentUseCase;

  Future<void> _onStudentStarted(
    StudentStarted event,
    Emitter<StudentState> emit,
  ) async {
    add(const FetchStudents());
  }

  Future<void> _onFetchStudents(
    FetchStudents event,
    Emitter<StudentState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));
        final output = await _getStudentsUseCase.execute(
          const GetStudentsInput(),
        );
        emit(state.copyWith(isLoading: false, students: output.students));
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onFetchStudentById(
    FetchStudentById event,
    Emitter<StudentState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));
        final output = await _getStudentUseCase.execute(
          GetStudentInput(event.id),
        );
        emit(state.copyWith(isLoading: false, currentStudent: output.student));
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
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));
        final output = await _getStudentsUseCase.execute(
          const GetStudentsInput(),
        );
        emit(
          state.copyWith(
            students: output.students,
            isLoading: false,
            onPageError: '',
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false));
        // Do not update onPageError to avoid breaking current view, maybe log
      },
    );
  }

  Future<void> _onUpdateStudent(
    UpdateStudent event,
    Emitter<StudentState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));
        final output = await _updateStudentUseCase.execute(
          UpdateStudentInput(id: event.id, data: event.data),
        );

        final updatedStudents = state.students.map((student) {
          return student.id == output.student.id ? output.student : student;
        }).toList();

        final updatedCurrentStudent =
            state.currentStudent?.id == output.student.id
            ? output.student
            : state.currentStudent;

        emit(
          state.copyWith(
            isLoading: false,
            students: updatedStudents,
            currentStudent: updatedCurrentStudent,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, onPageError: e.toString()));
      },
    );
  }
}
