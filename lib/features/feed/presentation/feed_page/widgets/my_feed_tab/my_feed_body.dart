import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/widgets/compose_card.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/bloc/feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/my_feed_tab/my_feed_list.dart';

class MyFeedBody extends StatelessWidget {
  const MyFeedBody({super.key});

  Future<void> _openCreateFeed(BuildContext context) async {
    final isPublic = await context.push<bool>(AppRouter.createFeed);

    if (!context.mounted || isPublic == null) return;

    context.read<FeedBloc>().add(const RefreshClassFeeds());
    if (isPublic) {
      context.read<FeedBloc>().add(const RefreshExploreFeeds());
    }

    AppSnackbar.show(
      context,
      message: 'Đăng bài thành công',
      type: AppSnackbarType.success,
    );
  }

  Future<void> _openFeedDetail(
    BuildContext context,
    Feed feed, {
    bool openComments = false,
  }) async {
    final deleted = await context.push<bool>(
      AppRouter.feedDetail,
      extra: (feed: feed, openComments: openComments),
    );

    if (!context.mounted || deleted != true) return;

    final bloc = context.read<FeedBloc>();
    bloc.add(const RefreshClassFeeds());
    if (feed.isPublic) {
      bloc.add(const RefreshExploreFeeds());
    }

    AppSnackbar.show(
      context,
      message: 'Xóa bài thành công',
      type: AppSnackbarType.success,
    );
  }

  void _toggleLike(BuildContext context, Feed feed) {
    final viewerUserId = context.read<FeedBloc>().state.viewerUserId ?? '';
    if (viewerUserId.isEmpty) {
      AppSnackbar.show(
        context,
        message: 'Vui lòng đăng nhập để thả tim',
        type: AppSnackbarType.error,
      );
      return;
    }

    context.read<FeedBloc>().add(SubmitFeedLike(feedId: feed.id));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeedBloc, FeedState>(
      buildWhen: (prev, curr) =>
          prev.classFeeds != curr.classFeeds ||
          prev.isLoadingClass != curr.isLoadingClass ||
          prev.isLoadingMoreClass != curr.isLoadingMoreClass ||
          prev.hasMoreClass != curr.hasMoreClass,
      builder: (context, state) {
        if (state.isLoadingClass && state.classFeeds.isEmpty) {
          return const ShimmerList(itemCount: 4, itemHeight: 140);
        }

        return RefreshIndicator(
          onRefresh: () async {
            context.read<FeedBloc>().add(const RefreshClassFeeds());
            await Future.delayed(const Duration(milliseconds: 400));
          },
          child: ListView(
            padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
            children: [
              ComposeCard(onTap: () => _openCreateFeed(context)),
              MyFeedList(
                feeds: state.classFeeds,
                hasMore: state.hasMoreClass,
                isLoadingMore: state.isLoadingMoreClass,
                onLoadMore: () =>
                    context.read<FeedBloc>().add(const LoadMoreClassFeeds()),
                onItemTap: (feed) => _openFeedDetail(context, feed),
                onLikeTap: (feed) => _toggleLike(context, feed),
                onCommentTap: (feed) => _openFeedDetail(
                  context,
                  feed,
                  openComments: true,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
