import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/core/constants/app_strings.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_students_use_case.dart';
import 'package:tanlu_management/shared/exception/base/app_exception.dart';
import 'package:tanlu_management/shared/exception/uncaught/app_uncaught_exception.dart';

part 'student_bloc.freezed.dart';
part 'student_event.dart';
part 'student_state.dart';

@injectable
class StudentBloc extends BaseBloc<StudentEvent, StudentState> {
  StudentBloc(this._getStudentsUseCase) : super(const StudentState()) {
    on<PageStarted>(_onPageStarted);
    on<RefreshRequested>(_onRefreshRequested);
    on<GenderFilterChanged>(_onGenderFilterChanged);
    on<SearchQueryChanged>(_onSearchQueryChanged);
  }

  final GetStudentsUseCase _getStudentsUseCase;

  Future<void> _onPageStarted(
    PageStarted event,
    Emitter<StudentState> emit,
  ) async {
    await _loadStudents(emit, showListLoading: true);
  }

  Future<void> _onRefreshRequested(
    RefreshRequested event,
    Emitter<StudentState> emit,
  ) async {
    await _loadStudents(emit, isRefreshing: true);
  }

  void _onGenderFilterChanged(
    GenderFilterChanged event,
    Emitter<StudentState> emit,
  ) {
    emit(
      state.copyWith(
        genderFilterIndex: event.index,
        students: _filterStudents(
          state.allStudents,
          state.searchQuery,
          event.index,
        ),
      ),
    );
  }

  void _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<StudentState> emit,
  ) {
    emit(
      state.copyWith(
        searchQuery: event.query,
        students: _filterStudents(
          state.allStudents,
          event.query,
          state.genderFilterIndex,
        ),
      ),
    );
  }

  Future<void> _loadStudents(
    Emitter<StudentState> emit, {
    bool showListLoading = false,
    bool isRefreshing = false,
  }) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            onPageError: '',
            showListLoading: showListLoading,
            isRefreshing: isRefreshing,
          ),
        );

        final output = await _getStudentsUseCase.execute(
          const GetStudentsInput(),
        );

        emit(
          state.copyWith(
            allStudents: output.students,
            students: _filterStudents(
              output.students,
              state.searchQuery,
              state.genderFilterIndex,
            ),
            showListLoading: false,
            isRefreshing: false,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            showListLoading: false,
            isRefreshing: false,
            onPageError: _mapErrorMessage(e),
          ),
        );
      },
    );
  }

  List<Student> _filterStudents(
    List<Student> students,
    String query,
    int genderFilterIndex,
  ) {
    var filtered = students;

    if (genderFilterIndex == 1) {
      filtered = filtered.where((s) => _isMale(s.gender)).toList();
    } else if (genderFilterIndex == 2) {
      filtered = filtered.where((s) => _isFemale(s.gender)).toList();
    }

    final normalizedQuery = query.trim().toLowerCase();
    if (normalizedQuery.isNotEmpty) {
      filtered = filtered
          .where(
            (s) => s.fullName.toLowerCase().contains(normalizedQuery),
          )
          .toList();
    }

    return filtered;
  }

  bool _isMale(String gender) {
    final value = gender.toLowerCase();
    return value == 'nam' || value == 'male';
  }

  bool _isFemale(String gender) {
    final value = gender.toLowerCase();
    return value == 'nữ' || value == 'nu' || value == 'female';
  }

  String _mapErrorMessage(Object error) {
    if (error is AppUncaughtException) {
      final root = error.rootError;
      if (root is AppException) return root.toString();
      return root?.toString() ?? AppStrings.unknownError;
    }
    if (error is AppException) return error.toString();
    return error.toString();
  }
}
