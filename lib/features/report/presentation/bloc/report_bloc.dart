import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/usecases/delete_report_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/get_report_by_id_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/get_reports_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/create_report_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/update_report_use_case.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_students_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/upload_file_use_case.dart';
import 'package:tanlu_management/features/report/domain/usecases/delete_report_file_use_case.dart';

part 'report_bloc.freezed.dart';
part 'report_event.dart';
part 'report_state.dart';

@injectable
class ReportBloc extends BaseBloc<ReportEvent, ReportState> {
  ReportBloc(
    this._getStudentsUseCase,
    this._getReportsUseCase,
    this._createReportUseCase,
    this._uploadFileUseCase,
    this._getReportByIdUseCase,
    this._updateReportUseCase,
    this._deleteReportFileUseCase,
    this._deleteReportUseCase,
  ) : super(ReportState(selectedMonth: _currentMonth())) {
    on<ReportStarted>(_onStarted);
    on<FetchReportData>(_onFetchReportData);
    on<RefreshReportData>(_onRefreshReportData);
    on<SelectReportMonth>(_onSelectMonth);
    on<CreateReport>(_onCreateReport);
    on<GetReportById>(_onGetReportById);
    on<UpdateReport>(_onUpdateReport);
    on<DeleteReportFile>(_onDeleteReportFile);
    on<DeleteReport>(_onDeleteReport);
  }

  final GetStudentsUseCase _getStudentsUseCase;
  final GetReportsUseCase _getReportsUseCase;
  final CreateReportUseCase _createReportUseCase;
  // ignore: unused_field
  final UploadFileUseCase _uploadFileUseCase;
  final GetReportByIdUseCase _getReportByIdUseCase;
  final UpdateReportUseCase _updateReportUseCase;
  final DeleteReportFileUseCase _deleteReportFileUseCase;
  final DeleteReportUseCase _deleteReportUseCase;

  static String _currentMonth() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}';
  }

  Future<void> _onStarted(
    ReportStarted event,
    Emitter<ReportState> emit,
  ) async {
    add(const FetchReportData());
  }

  Future<void> _onFetchReportData(
    FetchReportData event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(isLoading: true, pageError: '', createSuccess: false),
        );
        final studentsOutput = await _getStudentsUseCase.execute(
          const GetStudentsInput(),
        );
        final reportsOutput = await _getReportsUseCase.execute(
          GetReportsInput(reportMonth: state.selectedMonth),
        );
        emit(
          state.copyWith(
            isLoading: false,
            students: studentsOutput.students,
            reports: reportsOutput.reports,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onRefreshReportData(
    RefreshReportData event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(isLoading: true, pageError: '', createSuccess: false),
        );
        final studentsOutput = await _getStudentsUseCase.execute(
          const GetStudentsInput(),
        );
        final reportsOutput = await _getReportsUseCase.execute(
          GetReportsInput(reportMonth: state.selectedMonth),
        );
        emit(
          state.copyWith(
            isLoading: false,
            students: studentsOutput.students,
            reports: reportsOutput.reports,
            pageError: '',
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false));
        // Có lỗi thì bỏ qua, giữ nguyên state cũ để không mất dữ liệu đang hiển thị
      },
    );
  }

  Future<void> _onSelectMonth(
    SelectReportMonth event,
    Emitter<ReportState> emit,
  ) async {
    emit(state.copyWith(selectedMonth: event.month));
    add(const FetchReportData());
  }

  Future<void> _onCreateReport(
    CreateReport event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(
            isSubmitting: true,
            submitError: '',
            createSuccess: false,
          ),
        );

        // Gửi tạo báo cáo kèm danh sách file nếu có
        final output = await _createReportUseCase.execute(
          CreateReportInput(
            studentId: event.studentId,
            reportMonth: event.reportMonth,
            title: event.title,
            teacherComment: event.teacherComment,
            files: event.files,
          ),
        );
        emit(
          state.copyWith(
            isSubmitting: false,
            reports: [...state.reports, output.report],
            report: output.report,
            createSuccess: true,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false, submitError: e.toString()));
      },
    );
  }

  Future<void> _onGetReportById(
    GetReportById event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(isLoading: true, pageError: '', createSuccess: false),
        );
        final output = await _getReportByIdUseCase.execute(
          GetReportByIdInput(id: event.id),
        );
        emit(state.copyWith(isLoading: false, report: output.report));
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, pageError: e.toString()));
      },
    );
  }

  Future<void> _onUpdateReport(
    UpdateReport event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(
            isSubmitting: true,
            submitError: '',
            createSuccess: false,
          ),
        );

        // Gửi cập nhật báo cáo kèm danh sách file nếu có
        final output = await _updateReportUseCase.execute(
          UpdateReportInput(
            id: event.id,
            title: event.title,
            teacherComment: event.teacherComment,
            status: event.status,
            files: event.files,
          ),
        );

        emit(
          state.copyWith(
            isSubmitting: false,
            createSuccess: true,
            report: output.report,
            reports: state.reports
                .map((r) => r.id == output.report.id ? output.report : r)
                .toList(),
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false, submitError: e.toString()));
      },
    );
  }

  Future<void> _onDeleteReportFile(
    DeleteReportFile event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(
            isLoading: true,
            pageError: '',
            submitError: '',
            createSuccess: false,
          ),
        );
        await _deleteReportFileUseCase.execute(
          DeleteReportFileInput(reportId: event.reportId, fileId: event.fileId),
        );
        // Cập nhật lại tệp tin trong chi tiết báo cáo hiện tại (nếu đang mở)
        if (state.report != null && state.report!.id == event.reportId) {
          final updatedFiles = state.report!.files
              .where((f) => f.id != event.fileId)
              .toList();
          final updatedReport = state.report!.copyWith(files: updatedFiles);
          emit(state.copyWith(isLoading: false, report: updatedReport));
        } else {
          emit(state.copyWith(isLoading: false));
        }

        // Cập nhật lại danh sách báo cáo chung trong state
        final updatedReports = state.reports.map((r) {
          if (r.id == event.reportId) {
            final updatedFiles = r.files
                .where((f) => f.id != event.fileId)
                .toList();
            return r.copyWith(files: updatedFiles);
          }
          return r;
        }).toList();
        emit(state.copyWith(reports: updatedReports));
      },
      doOnError: (e) {
        final errorMsg = e
            .toString()
            .replaceFirst(RegExp(r'^\[.*?\] 💢  FutureUseCase Error:\s*'), '')
            .replaceFirst(RegExp(r'^ServerException\s*\('), '')
            .replaceAll(RegExp(r'\)$'), '');
        emit(state.copyWith(isLoading: false, submitError: errorMsg));
      },
    );
  }

  Future<void> _onDeleteReport(
    DeleteReport event,
    Emitter<ReportState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(
          state.copyWith(
            isLoading: true,
            pageError: '',
            submitError: '',
            createSuccess: false,
            deleteSuccess: false,
          ),
        );
        await _deleteReportUseCase.execute(DeleteReportInput(id: event.id));

        // Xóa báo cáo khỏi danh sách hiện tại
        final updatedReports = state.reports
            .where((r) => r.id != event.id)
            .toList();

        // Xóa báo cáo đang xem nếu trùng ID
        Report? currentReport = state.report;
        if (currentReport != null && currentReport.id == event.id) {
          currentReport = null;
        }

        emit(
          state.copyWith(
            isLoading: false,
            reports: updatedReports,
            report: currentReport,
            deleteSuccess: true,
          ),
        );
      },
      doOnError: (e) {
        // Loại bỏ phần prefix thừa từ UseCase Exception nếu có
        final errorMsg = e.toString().replaceFirst(
          RegExp(r'^\[.*?\] 💢  FutureUseCase Error:\s*'),
          '',
        );
        emit(state.copyWith(isLoading: false, submitError: errorMsg));
      },
    );
  }
}
