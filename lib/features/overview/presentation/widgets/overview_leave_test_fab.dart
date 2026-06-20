import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_test_fab.dart';
import 'package:tanlu_management/features/overview/presentation/bloc/overview_bloc.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_all_student_by_class_id.dart';

/// FAB test gửi đơn xin phép từ màn Overview (chỉ debug).
class OverviewLeaveTestFab extends StatelessWidget {
  const OverviewLeaveTestFab({super.key});

  Future<void> _onPressed(BuildContext context) async {
    final teacher = context.read<AppBloc>().currentUser;
    final classId = teacher?.classId;
    final teacherId = teacher?.id ?? '';

    if (classId == null || classId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chưa được gán lớp!')),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Đang gửi đơn test...'),
        duration: Duration(seconds: 1),
      ),
    );

    final students = await sl<GetAllStudentByClassIdUseCase>().execute(
      GetAllStudentByClassIdInput(classId: classId),
    );

    if (!context.mounted) return;

    final pendingIds = context
        .read<OverviewBloc>()
        .state
        .pendingLeaveRequests
        .map((r) => r.studentId);

    await sendMockLeaveRequest(
      context: context,
      students: students.students,
      pendingStudentIds: pendingIds,
      teacherId: teacherId,
      date: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();

    return Positioned(
      right: 16.w,
      bottom: 16.h,
      child: FloatingActionButton.extended(
        heroTag: 'overview_test_leave_request',
        onPressed: () => _onPressed(context),
        backgroundColor: AppColors.primary.withValues(alpha: 0.9),
        icon: const Icon(Icons.science_outlined, color: Colors.white),
        label: AppText.b2(
          'Test: gửi đơn nghỉ',
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
