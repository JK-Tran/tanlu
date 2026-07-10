import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/class_info.dart';
import 'package:tanlu_management/features/student/domain/entity/parent.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

part 'leave_request.freezed.dart';

@freezed
class LeaveRequest with _$LeaveRequest {
  const factory LeaveRequest({
    @Default(0) int id,
    @Default(Student()) Student student,
    @Default(ClassInfo()) ClassInfo classInfo,
    DateTime? date,
    @Default('') String reason,
    @Default('') String note,
    @Default('') String status,
    @Default(Parent()) Parent parent,
    DateTime? submittedAt,
    DateTime? decidedAt,
    @Default(0) int decidedBy,
    @Default('') String decisionNote,
  }) = _LeaveRequest;
}
