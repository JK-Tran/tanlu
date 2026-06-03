part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  const factory ReportState({
    @Default([]) List<Student> students,
    @Default([]) List<Report> reports,
    Report? report,
    @Default('') String selectedMonth,
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool createSuccess,
    @Default(false) bool deleteSuccess,
    @Default('') String pageError,
    @Default('') String submitError,
  }) = _ReportState;
}
