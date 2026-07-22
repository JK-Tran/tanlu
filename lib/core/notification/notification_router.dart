import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/notification/notification_payload.dart';
import 'package:tanlu_management/core/notification/notification_type.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/shared/di/di.dart';

class NotificationRouter {
  static void route(NotificationPayload payload) {
    final context = rootNavigatorKey.currentContext;
    if (context == null) return;

    // Mark notification as read if backend sends notificationId in payload
    final notificationId = payload.notificationId;
    if (notificationId != null) {
      try {
        sl<NotificationBloc>().add(
          NotificationEvent.markAsRead([notificationId]),
        );
      } catch (e) {
        debugPrint('[NotificationRouter] Cannot mark notification as read: $e');
      }
    }

    switch (payload.type) {
      case NotificationType.leaveRequest:
      case NotificationType.newLeaveRequest:
      case NotificationType.leaveRequestApproved:
      case NotificationType.leaveRequestRejected:
        context.push('/attendance?tab=leave');
        break;
      case NotificationType.feedComment:
      case NotificationType.feedReply:
        final postId = payload.postId;
        final commentId = payload.commentId;
        if (postId != null) {
          final uri = commentId != null
              ? '/feed/detail/$postId?commentId=$commentId'
              : '/feed/detail/$postId';
          context.push(uri);
        }
        break;
      case NotificationType.newMessage:
        break;
      case NotificationType.unknown:
        break;
    }
  }
}
