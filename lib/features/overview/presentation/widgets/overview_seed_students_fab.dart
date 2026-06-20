import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/overview/presentation/bloc/overview_bloc.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_student_seed.dart';

/// FAB seed 20 học sinh demo lên Firestore (chỉ debug).
class OverviewSeedStudentsFab extends StatelessWidget {
  const OverviewSeedStudentsFab({super.key});

  Future<void> _onPressed(BuildContext context) async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Seed học sinh demo?',
      content:
          'Tạo $demoStudentSeedCount học sinh (10 lớp class-1 + 10 lớp class-2).\n'
          'Hãy xóa collection students cũ trước khi chạy.',
      cancelLabel: 'Huỷ',
      confirmLabel: 'Tạo dữ liệu',
      type: AppConfirmDialogType.warning,
    );

    if (confirmed != true || !context.mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Đang tạo học sinh demo...'),
        duration: Duration(seconds: 2),
      ),
    );

    try {
      await seedDemoStudentsToFirestore();

      if (!context.mounted) return;

      final classId = context.read<OverviewBloc>().state.classId;
      if (classId != null && classId.isNotEmpty) {
        context.read<OverviewBloc>().add(StartOverviewEvent(classId: classId));
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('✅ Đã tạo $demoStudentSeedCount học sinh demo'),
          backgroundColor: AppColors.success,
          duration: const Duration(seconds: 4),
        ),
      );
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('❌ Lỗi seed: $e'),
          backgroundColor: AppColors.warning,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();

    return Positioned(
      right: 16.w,
      bottom: 72.h,
      child: FloatingActionButton.extended(
        heroTag: 'overview_seed_students',
        onPressed: () => _onPressed(context),
        backgroundColor: AppColors.info.withValues(alpha: 0.92),
        icon: const Icon(Icons.group_add_outlined, color: Colors.white),
        label: AppText.b2(
          'Test: seed HS',
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
