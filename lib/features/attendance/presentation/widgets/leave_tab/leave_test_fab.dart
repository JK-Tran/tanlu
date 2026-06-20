import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/notification/data/services/push_notification_handler.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/services/firebase/fcm_messaging.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

/// FAB test gửi đơn xin phép (chỉ debug).
class LeaveTestFab extends StatelessWidget {
  const LeaveTestFab({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kDebugMode) return const SizedBox.shrink();

    return Positioned(
      right: 16.w,
      bottom: 16.h,
      child: FloatingActionButton.extended(
        heroTag: 'test_leave_request',
        onPressed: () => mockParentSendLeaveRequest(context),
        backgroundColor: AppColors.grayDark.withValues(alpha: 0.85),
        icon: const Icon(Icons.science_outlined, color: Colors.white),
        label: AppText.b2(
          'Test: PH gửi đơn',
          color: Colors.white,
          fontSize: 13.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

Future<void> mockParentSendLeaveRequest(BuildContext context) async {
  final state = context.read<AttendanceBloc>().state;
  final teacher = context.read<AppBloc>().currentUser;
  final teacherId = teacher?.id ?? '';

  await sendMockLeaveRequest(
    context: context,
    students: state.students,
    pendingStudentIds: state.leaveRequests
        .where((r) => r.leaveStatus == LeaveStatus.pending)
        .map((r) => r.studentId),
    teacherId: teacherId,
    date: state.selectedDate ?? DateTime.now(),
  );
}

/// Ghi Firestore + hiện local notification (debug / test API).
Future<void> sendMockLeaveRequest({
  required BuildContext context,
  required List<Student> students,
  required Iterable<String> pendingStudentIds,
  required String teacherId,
  required DateTime date,
}) async {
  if (students.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Chưa có học sinh nào trong lớp!')),
    );
    return;
  }

  if (teacherId.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Chưa đăng nhập — không có teacherId!')),
    );
    return;
  }

  final pendingIds = pendingStudentIds.toSet();
  final candidates = students.where((s) => !pendingIds.contains(s.id)).toList();

  if (candidates.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Tất cả học sinh đều đã có đơn chờ duyệt!')),
    );
    return;
  }

  final student = (candidates..shuffle()).first;
  final dateStr = DateTimeUtils.formatDateTimeDateOnly(date) ?? '';
  final reasons = [
    'Bé bị sốt',
    'Gia đình có việc',
    'Bé bị cảm',
    'Đi khám bệnh',
    'Có chuyện gia đình',
  ];
  reasons.shuffle();
  final reason = reasons.first;
  final studentLabel = student.nickname.isNotEmpty
      ? student.nickname
      : student.fullName;
  final primaryContact = student.contacts.isNotEmpty
      ? student.contacts.firstWhere(
          (c) => c.isPrimary,
          orElse: () => student.contacts.first,
        )
      : null;
  final parentName = primaryContact?.name ?? 'Phụ huynh';

  final fcmMessaging = sl<FcmMessaging>();
  final notificationRepo = sl<NotificationRepository>();
  final pushHandler = sl<PushNotificationHandler>();

  final deviceToken = await fcmMessaging.getToken();
  final localToken = notificationRepo.localDeviceToken;
  final userDoc = await FirebaseFirestore.instance
      .collection('users')
      .doc(teacherId)
      .get();
  final firestoreToken = userDoc.data()?['fcmToken'] as String?;

  appLogger.i('══════════ FCM TEST — Gửi đơn xin phép ══════════');
  appLogger.i('Teacher ID: $teacherId');
  appLogger.i('FCM getToken(): ${deviceToken ?? "(null)"}');
  appLogger.i(
    'Local prefs token: ${localToken.isEmpty ? "(empty)" : localToken}',
  );
  appLogger.i(
    'Firestore users/$teacherId.fcmToken: ${firestoreToken ?? "(null)"}',
  );

  final docRef = await FirebaseFirestore.instance
      .collection('leave_requests')
      .add({
        'studentId': student.id,
        'studentName': studentLabel,
        'classId': student.classId,
        'parentId': 'parent_test_${student.id}',
        'senderName': parentName,
    'senderAvatarUrl': 'assets/icons/user.png',
    if (student.avatarUrl.isNotEmpty) 'studentAvatarUrl': student.avatarUrl,
    'teacherId': teacherId,
        'date': dateStr,
        'reason': reason,
        'status': LeaveStatus.pending.name,
        'submittedAt': FieldValue.serverTimestamp(),
      });

  await pushHandler.showLeaveRequest(
    id: docRef.id.hashCode,
    studentName: studentLabel,
    reason: reason,
    senderName: parentName,
    senderAvatarUrl: 'assets/icons/user.png',
    requestId: docRef.id,
  );

  if (context.mounted) {
    final hasFcm = firestoreToken != null && firestoreToken.isNotEmpty;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          hasFcm
              ? '✅ Đã gửi đơn cho $studentLabel'
              : '⚠️ Đã gửi đơn nhưng chưa có fcmToken',
        ),
        backgroundColor: hasFcm ? AppColors.success : AppColors.warning,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
