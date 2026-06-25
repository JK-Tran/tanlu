import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/bloc/feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/explore_tab/explore_list.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

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
    bloc.add(const RefreshExploreFeeds());
    if (feed.author.id == (bloc.state.viewerUserId ?? '')) {
      bloc.add(const RefreshClassFeeds());
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
          prev.exploreFeeds != curr.exploreFeeds ||
          prev.isLoadingExplore != curr.isLoadingExplore ||
          prev.isLoadingMoreExplore != curr.isLoadingMoreExplore ||
          prev.hasMoreExplore != curr.hasMoreExplore,
      builder: (context, state) {
        if (state.isLoadingExplore && state.exploreFeeds.isEmpty) {
          return const ShimmerList(itemCount: 4, itemHeight: 140);
        }

        return RefreshIndicator(
          onRefresh: () async {
            context.read<FeedBloc>().add(const RefreshExploreFeeds());
            await Future.delayed(const Duration(milliseconds: 400));
          },
          child: ListView(
            padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
            children: [
              ExploreList(
                feeds: state.exploreFeeds,
                hasMore: state.hasMoreExplore,
                isLoadingMore: state.isLoadingMoreExplore,
                onLoadMore: () =>
                    context.read<FeedBloc>().add(const LoadMoreExploreFeeds()),
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
