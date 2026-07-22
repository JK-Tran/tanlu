import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';
import 'package:tanlu_management/core/notification/notification_router.dart';
import 'package:tanlu_management/core/notification/notification_payload.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
    // Tải danh sách thông báo khi vào trang
    context.read<NotificationBloc>().add(
      const NotificationEvent.loadNotifications(isRefresh: true),
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final state = context.read<NotificationBloc>().state;
      if (!state.isLoading && !state.hasReachedMax) {
        context.read<NotificationBloc>().add(
          const NotificationEvent.loadNotifications(),
        );
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh() async {
    context.read<NotificationBloc>().add(
      const NotificationEvent.loadNotifications(isRefresh: true),
    );
  }

  IconData _getIconForType(String type) {
    switch (type) {
      case 'LEAVE_REQUEST':
      case 'NEW_LEAVE_REQUEST':
      case 'LEAVE_REQUEST_APPROVED':
      case 'LEAVE_REQUEST_REJECTED':
        return Icons.event_note_rounded;
      case 'NEW_MESSAGE':
        return Icons.chat_bubble_outline_rounded;
      default:
        return Icons.notifications_none_rounded;
    }
  }

  Color _getColorForType(String type) {
    switch (type) {
      case 'LEAVE_REQUEST':
      case 'NEW_LEAVE_REQUEST':
        return AppColors.warning;
      case 'LEAVE_REQUEST_APPROVED':
        return AppColors.success;
      case 'LEAVE_REQUEST_REJECTED':
        return AppColors.error;
      case 'NEW_MESSAGE':
        return AppColors.info;
      default:
        return AppColors.primary;
    }
  }

  Color _getBgColorForType(String type) {
    switch (type) {
      case 'LEAVE_REQUEST':
      case 'NEW_LEAVE_REQUEST':
        return AppColors.warningLight;
      case 'LEAVE_REQUEST_APPROVED':
        return AppColors.successLight;
      case 'LEAVE_REQUEST_REJECTED':
        return AppColors.errorLight;
      case 'NEW_MESSAGE':
        return AppColors.infoLight;
      default:
        return AppColors.primaryLight;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: AppBar(
        title: AppText.h2(context.l10n.notificationsTitle, color: AppColors.grayDark),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColors.grayDark),
        actions: [
          TextButton(
            onPressed: () {
              context.read<NotificationBloc>().add(
                const NotificationEvent.markAllAsRead(),
              );
            },
            child: AppText.b2(
              context.l10n.readAll,
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state.isLoading && state.notifications.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (state.notifications.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_off_outlined,
                    size: 64.sp,
                    color: AppColors.grayLight,
                  ),
                  SizedBox(height: 16.h),
                  AppText.b1(
                    context.l10n.noNotifications,
                    color: AppColors.grayMedium,
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            color: AppColors.primary,
            onRefresh: _onRefresh,
            child: ListView.separated(
              controller: _scrollController,
              padding: EdgeInsets.zero,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount:
                  state.notifications.length + (state.hasReachedMax ? 0 : 1),
              separatorBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.grayLight.withValues(alpha: 0.5),
                ),
              ),
              itemBuilder: (context, index) {
                if (index >= state.notifications.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    ),
                  );
                }

                final item = state.notifications[index];
                final isRead = item.isRead;
                final iconColor = _getColorForType(item.type);
                final iconBg = _getBgColorForType(item.type);

                return Material(
                  color: isRead
                      ? Colors.white
                      : AppColors.primaryLight.withValues(alpha: 0.12),
                  child: InkWell(
                    onTap: () {
                      if (!isRead) {
                        context.read<NotificationBloc>().add(
                          NotificationEvent.markAsRead([item.id]),
                        );
                      }
                      
                      final payload = NotificationPayload.fromData({
                        'type': item.type,
                        if (item.data != null) ...item.data!,
                      });
                      NotificationRouter.route(payload);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 56.w,
                            height: 56.w,
                            decoration: BoxDecoration(
                              color: iconBg,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              _getIconForType(item.type),
                              color: iconColor,
                              size: 28.sp,
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: AppText.b1(
                                        item.title,
                                        fontWeight: isRead
                                            ? FontWeight.w600
                                            : FontWeight.bold,
                                        color: isRead
                                            ? AppColors.grayDark
                                            : Colors.black87,
                                      ),
                                    ),
                                    if (!isRead) ...[
                                      SizedBox(width: 8.w),
                                      Container(
                                        margin: EdgeInsets.only(top: 4.h),
                                        width: 8.w,
                                        height: 8.w,
                                        decoration: const BoxDecoration(
                                          color: AppColors.primary,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ],
                                  ],
                                ),

                                SizedBox(height: 6.h),
                                AppText.b2(
                                  item.body,
                                  color: isRead
                                      ? AppColors.grayMedium
                                      : AppColors.grayDark,
                                  maxLines: 2,
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 10.h),
                                AppText.b2(
                                  DateTimeUtils.formatDateTimeType2(
                                        item.createdAt,
                                      ) ??
                                      '',
                                  color: AppColors.grayMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
