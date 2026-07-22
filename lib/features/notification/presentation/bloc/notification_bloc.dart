import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/entity/notification.dart';
import 'package:tanlu_management/features/notification/domain/usecases/get_notifications_use_case.dart';
import 'package:tanlu_management/features/notification/domain/usecases/mark_all_as_read_use_case.dart';
import 'package:tanlu_management/features/notification/domain/usecases/mark_as_read_use_case.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

@LazySingleton()
class NotificationBloc extends BaseBloc<NotificationEvent, NotificationState> {
  NotificationBloc(
    this._getNotificationsUseCase,
    this._markAsReadUseCase,
    this._markAllAsReadUseCase,
  ) : super(const NotificationState()) {
    on<_LoadNotifications>(_onLoadNotifications);
    on<_MarkAsRead>(_onMarkAsRead);
    on<_MarkAllAsRead>(_onMarkAllAsRead);
    on<_IncrementUnreadCount>(_onIncrementUnreadCount);
  }

  final GetNotificationsUseCase _getNotificationsUseCase;
  final MarkAsReadUseCase _markAsReadUseCase;
  final MarkAllAsReadUseCase _markAllAsReadUseCase;

  Future<void> _onLoadNotifications(
    _LoadNotifications event,
    Emitter<NotificationState> emit,
  ) async {
    if (event.isRefresh) {
      emit(state.copyWith(page: 1, hasReachedMax: false));
    }

    if (state.hasReachedMax && !event.isRefresh) return;

    if (state.page == 1) {
      emit(state.copyWith(isLoading: true, error: null));
    }

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final output = await _getNotificationsUseCase.execute(
          GetNotificationsInput(page: state.page, limit: event.limit),
        );

        final notifications = event.isRefresh
            ? output.notifications
            : [...state.notifications, ...output.notifications];

        emit(
          state.copyWith(
            notifications: notifications,
            unreadCount: output.unreadCount,
            isLoading: false,
            hasReachedMax: output.notifications.length < event.limit,
            page: state.page + 1,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, error: ErrorMapper.getMessage(e)));
      },
    );
  }

  Future<void> _onMarkAsRead(
    _MarkAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _markAsReadUseCase.execute(
          MarkAsReadInput(notificationIds: event.notificationIds),
        );

        // Optimistic update
        final updatedList = state.notifications.map((n) {
          if (event.notificationIds.contains(n.id)) {
            return n.copyWith(isRead: true);
          }
          return n;
        }).toList();

        final decrementCount = event.notificationIds.length;

        emit(
          state.copyWith(
            notifications: updatedList,
            unreadCount: (state.unreadCount - decrementCount).clamp(0, 999),
          ),
        );
      },
      doOnError: (_) {},
    );
  }

  Future<void> _onMarkAllAsRead(
    _MarkAllAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _markAllAsReadUseCase.execute(const MarkAllAsReadInput());

        final updatedList = state.notifications
            .map((n) => n.copyWith(isRead: true))
            .toList();
        emit(state.copyWith(notifications: updatedList, unreadCount: 0));
      },
      doOnError: (_) {},
    );
  }

  void _onIncrementUnreadCount(
    _IncrementUnreadCount event,
    Emitter<NotificationState> emit,
  ) {
    emit(state.copyWith(unreadCount: state.unreadCount + 1));
    // Could also dispatch _LoadNotifications to fetch the new notification
    add(const NotificationEvent.loadNotifications(isRefresh: true));
  }

}
