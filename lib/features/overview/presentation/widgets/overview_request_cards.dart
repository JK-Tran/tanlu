import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/overview/presentation/bloc/overview_bloc.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

class OverviewRequestCards extends StatelessWidget {
  const OverviewRequestCards({super.key});

  String _formatLeaveDate(DateTime? date) {
    if (date == null) return 'Hôm nay';
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Hôm nay';
    }
    return DateTimeUtils.formatDateHeader(date);
  }

  String _studentDisplayName(LeaveRequest request) {
    return request.studentName.isNotEmpty ? request.studentName : 'Không rõ';
  }

  String _studentNickname(LeaveRequest request) {
    final name = request.studentName;
    return name.isNotEmpty ? name : '?';
  }

  /// Ưu tiên avatar trên doc `leave_requests`, sau đó `students.avatarUrl`.
  String? _resolveStudentAvatarUrl(LeaveRequest request, OverviewState state) {
    if (request.studentAvatarUrl.isNotEmpty) {
      return request.studentAvatarUrl;
    }
    final fromStudent = state.studentAvatarUrls[request.studentId];
    if (fromStudent != null && fromStudent.isNotEmpty) {
      return fromStudent;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: BlocBuilder<OverviewBloc, OverviewState>(
                buildWhen: (previous, current) =>
                    previous.pendingLeaveRequests !=
                        current.pendingLeaveRequests ||
                    previous.isLoadingLeaveRequests !=
                        current.isLoadingLeaveRequests ||
                    previous.studentAvatarUrls != current.studentAvatarUrls,
                builder: (context, state) {
                  return _buildLeaveRequestCard(context, state);
                },
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(child: _buildParentRequestCard(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildUnifiedCard({
    required Color primaryColor,
    required Color lightBgColor,
    required String iconPath,
    required int count,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                        child: Image.asset(
                          iconPath,
                          width: 20.w,
                          height: 20.w,
                          fit: BoxFit.contain,
                        ),
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
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
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
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: DottedLine(
              dashColor: primaryColor.withValues(alpha: 0.3),
              dashLength: 4.0,
              dashGapLength: 4.0,
              lineThickness: 1.0,
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
                splashColor: primaryColor.withValues(alpha: 0.2),
                highlightColor: primaryColor.withValues(alpha: 0.1),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText.b2(
                        'Xem chi tiết',
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                      ),
                      SizedBox(width: 4.w),
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

  Widget _buildLeaveContentArea(
    BuildContext context, {
    required bool isLoading,
    required List<LeaveRequest> requests,
    required OverviewState overviewState,
    required Color primaryColor,
  }) {
    if (isLoading) {
      return Center(
        child: SizedBox(
          width: 20.w,
          height: 20.w,
          child: CircularProgressIndicator(strokeWidth: 2, color: primaryColor),
        ),
      );
    }

    if (requests.isEmpty) {
      return Center(
        child: AppText.b2(
          'Không có yêu cầu',
          color: AppColors.grayMedium,
          fontSize: 12.sp,
        ),
      );
    }

    if (requests.length == 1) {
      final request = requests.first;
      final displayName = _studentDisplayName(request);
      final dateLabel = _formatLeaveDate(request.date);

      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AttendanceAvatar(
            nickname: _studentNickname(request),
            imageUrl: _resolveStudentAvatarUrl(request, overviewState),
            size: 40,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.b2(
                  displayName,
                  color: const Color(0xFF1F2937),
                  fontWeight: FontWeight.bold,
                  fontSize: 13.sp,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 11.sp,
                      color: const Color(0xFF6B7280),
                    ),
                    children: [
                      const TextSpan(text: 'Nghỉ: '),
                      TextSpan(
                        text: dateLabel,
                        style: const TextStyle(color: Color(0xFF4B5563)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.hourglass_empty_rounded,
                      size: 12.w,
                      color: primaryColor,
                    ),
                    SizedBox(width: 4.w),
                    AppText.b2(
                      'Chờ xác nhận',
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.chevron_right, size: 16.w, color: Colors.grey.shade400),
        ],
      );
    }

    final count = requests.length;
    final displayCount = count > 3 ? 3 : count;
    final extraCount = count > 3 ? count - 3 : 0;

    final avatars = <Widget>[];
    for (var i = 0; i < displayCount; i++) {
      avatars.add(
        Align(
          widthFactor: (i == displayCount - 1 && extraCount == 0) ? 1.0 : 0.7,
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: AttendanceAvatar(
              nickname: _studentNickname(requests[i]),
              imageUrl: _resolveStudentAvatarUrl(requests[i], overviewState),
              size: 32,
            ),
          ),
        ),
      );
    }

    if (extraCount > 0) {
      avatars.add(
        Align(
          widthFactor: 1.0,
          alignment: Alignment.centerLeft,
          child: Container(
            width: 32.r,
            height: 32.r,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            alignment: Alignment.center,
            child: AppText.b2(
              '+$extraCount',
              color: primaryColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: avatars,
    );
  }

  Widget _buildLeaveRequestCard(BuildContext context, OverviewState state) {
    const primaryColor = Color(0xFFF94A70);
    final pending = state.pendingLeaveRequests;
    final count = pending.length;

    return _buildUnifiedCard(
      primaryColor: primaryColor,
      lightBgColor: primaryColor.withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-calender.png',
      count: count,
      title: 'Yêu cầu xin nghỉ',
      subtitle: 'Chờ xác nhận',
      onViewDetails: () => context.push('${AppRouter.attendance}?tab=leave'),
      contentArea: _buildLeaveContentArea(
        context,
        isLoading: state.isLoadingLeaveRequests,
        requests: pending,
        overviewState: state,
        primaryColor: primaryColor,
      ),
    );
  }

  Widget _buildParentRequestCard(BuildContext context) {
    return _buildUnifiedCard(
      primaryColor: const Color(0xFFF28C28),
      lightBgColor: const Color(0xFFF28C28).withValues(alpha: 0.1),
      iconPath: 'assets/images/overview/img-chat-nontification.png',
      count: 0,
      title: 'Yêu cầu phụ huynh',
      subtitle: 'Chờ phản hồi',
      contentArea: Center(
        child: AppText.b2(
          'Sắp ra mắt',
          color: AppColors.grayMedium,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
