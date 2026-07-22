import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class OverviewRequestCards extends StatefulWidget {
  const OverviewRequestCards({super.key});

  @override
  State<OverviewRequestCards> createState() => _OverviewRequestCardsState();
}

class _OverviewRequestCardsState extends State<OverviewRequestCards> {
  @override
  void initState() {
    super.initState();
    // No longer using UseCase or local state. AttendanceBloc is global!
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        final isLoading = state.isLoading && state.leaveRequests == null;
        final pendingRequests =
            state.leaveRequests?.data
                .where((r) => r.status == LeaveStatus.pending.name)
                .toList() ??
            [];

        return BlocListener<NotificationBloc, NotificationState>(
          listenWhen: (previous, current) =>
              previous.unreadCount != current.unreadCount ||
              previous.notifications != current.notifications,
          listener: (context, notifState) {
            context.read<AttendanceBloc>().add(const LeaveRequestsStarted());
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: _buildLeaveRequestCard(
                      context,
                      pendingRequests,
                      isLoading,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(child: _buildParentRequestCard(context)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildUnifiedCard({
    required Color primaryColor,
    required Color lightBgColor,
    required String iconPath,
    required String title,
    required String subtitle,
    required Widget contentArea,
    VoidCallback? onViewDetails,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 12.h, 8.w, 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Transform.scale(
                    scale: 4,
                    child: Image.asset(iconPath, width: 20.w, height: 20.w),
                  ),
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.h2(
                        title,
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        maxLines: 2,
                      ),
                      AppText.b2(
                        subtitle,
                        color: AppColors.grayMedium,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: DottedLine(
              dashColor: primaryColor.withValues(alpha: 0.3),
              dashLength: 4,
              dashGapLength: 4,
            ),
          ),
          SizedBox(height: 8.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: contentArea,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.fromLTRB(8.w, 0, 8.w, 12.h),
            child: Material(
              color: lightBgColor,
              borderRadius: BorderRadius.circular(8.r),
              child: InkWell(
                onTap: onViewDetails,
                borderRadius: BorderRadius.circular(8.r),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.b2(
                        context.l10n.viewDetails,
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 16.w,
                        color: primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStackedAvatars(List<LeaveRequest> requests) {
    final uniqueRequests = <LeaveRequest>[];
    final seenStudentIds = <int>{};
    for (var r in requests) {
      if (seenStudentIds.add(r.student.id)) {
        uniqueRequests.add(r);
      }
    }

    final maxVisible = 3;
    final visibleCount = uniqueRequests.length > maxVisible
        ? maxVisible
        : uniqueRequests.length;
    final extraCount = uniqueRequests.length - maxVisible;

    return SizedBox(
      width: (visibleCount * 24.0) + (extraCount > 0 ? 28.0 : 0) + 8.w,
      height: 32.w,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = 0; i < visibleCount; i++)
            (() {
              final request = uniqueRequests[i];
              final name = request.parent.fullName.isNotEmpty
                  ? request.parent.fullName
                  : request.student.fullName;
              final avatarUrl = request.parent.avatarUrl.isNotEmpty
                  ? request.parent.avatarUrl
                  : request.student.avatarUrl;
              return Positioned(
                left: i * 24.0,
                child: Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                      image: NetworkImage(
                        avatarUrl.isNotEmpty
                            ? avatarUrl
                            : 'https://ui-avatars.com/api/?name=${Uri.encodeComponent(name)}&background=random',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            })(),
          if (extraCount > 0)
            Positioned(
              left: visibleCount * 24.0,
              child: Container(
                width: 32.w,
                height: 32.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.grayLight,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                alignment: Alignment.center,
                child: AppText.b2(
                  '+$extraCount',
                  color: AppColors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }

  String? _getMultipleRequestsParentNames(List<LeaveRequest> requests) {
    final uniqueIds = requests
        .map((r) => r.parent.fullName.isNotEmpty ? r.parent.id : r.student.id)
        .toSet();

    if (uniqueIds.length > 1) return null;

    final uniqueNames = requests
        .map(
          (r) => r.parent.fullName.isNotEmpty
              ? r.parent.fullName
              : r.student.fullName,
        )
        .toSet()
        .toList();

    return uniqueNames.first;
  }

  Widget _buildLeaveRequestCard(
    BuildContext context,
    List<LeaveRequest> pendingRequests,
    bool isLoading,
  ) {
    const primaryColor = Color(0xFFF94A70);

    return _buildUnifiedCard(
      primaryColor: primaryColor,
      lightBgColor: primaryColor.withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-calender.png',
      title: context.l10n.leaveRequest,
      subtitle: pendingRequests.isNotEmpty
          ? context.l10n.leaveRequestPendingCount(pendingRequests.length)
          : context.l10n.pendingConfirmation,
      onViewDetails: () => context.push('${AppRouter.attendance}?tab=leave'),
      contentArea: isLoading
          ? const Center(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: primaryColor,
                ),
              ),
            )
          : pendingRequests.isEmpty
          ? const SizedBox.shrink()
          : Row(
              children: [
                if (pendingRequests.length == 1) ...[
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          pendingRequests.first.parent.avatarUrl.isNotEmpty
                              ? pendingRequests.first.parent.avatarUrl
                              : 'https://ui-avatars.com/api/?name=${Uri.encodeComponent(pendingRequests.first.parent.fullName.isNotEmpty ? pendingRequests.first.parent.fullName : pendingRequests.first.student.fullName)}&background=random',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText.b2(
                          context.l10n.parentName(pendingRequests.first.parent.fullName.isNotEmpty ? pendingRequests.first.parent.fullName : pendingRequests.first.student.fullName),
                          color: AppColors.grayDark80,
                        ),
                      ],
                    ),
                  ),
                ] else ...[
                  _buildStackedAvatars(pendingRequests),
                  if (_getMultipleRequestsParentNames(pendingRequests) !=
                      null) ...[
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText.b2(
                            _getMultipleRequestsParentNames(pendingRequests)!,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          AppText.b2(
                            context.l10n.pendingConfirmation,
                            color: primaryColor,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ],
            ),
    );
  }

  Widget _buildParentRequestCard(BuildContext context) {
    return _buildUnifiedCard(
      primaryColor: const Color(0xFFF28C28),
      lightBgColor: const Color(0xFFF28C28).withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-chat-nontification.png',
      title: context.l10n.parentRequest,
      subtitle: context.l10n.pendingResponse,
      contentArea: Center(
        child: AppText.t2(
          context.l10n.comingSoon,
          color: AppColors.grayMedium,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
