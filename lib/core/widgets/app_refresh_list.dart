import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// Reusable pull-to-refresh widget.
/// Handles initial loading (shimmer) and pull-to-refresh elegantly.
class AppRefreshList extends StatelessWidget {
  const AppRefreshList({
    super.key,
    required this.onRefresh,
    required this.isLoading,
    this.shimmer,
    required this.child,
    this.isEmpty = false,
    this.emptyWidget,
  });

  /// The refresh callback, should return a Future
  final Future<void> Function() onRefresh;

  /// Whether it's the initial loading state
  final bool isLoading;

  /// The shimmer widget to show during initial load
  final Widget? shimmer;

  /// The main list/scrollable content
  final Widget child;

  /// Whether the list is currently empty
  final bool isEmpty;

  /// What to show if empty (will be wrapped in a scrollable view to allow pull-to-refresh)
  final Widget? emptyWidget;

  @override
  Widget build(BuildContext context) {
    // 1. Initial loading state (Show shimmer or spinner)
    if (isLoading) {
      if (shimmer != null) return shimmer!;
      return Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }

    // Header configuration
    final header = MaterialHeader(
      color: AppColors.primary,
      backgroundColor: AppColors.white,
    );

    // 2. Empty state (Needs a scrollable wrapper to pull-to-refresh)
    if (isEmpty && emptyWidget != null) {
      return EasyRefresh(
        header: header,
        onRefresh: onRefresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: emptyWidget!),
            ),
          ],
        ),
      );
    }

    // 3. Normal list state
    return EasyRefresh(
      header: header,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
