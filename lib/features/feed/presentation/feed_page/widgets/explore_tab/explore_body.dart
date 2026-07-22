import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/bloc/feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/explore_tab/explore_list.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  Future<void> _openFeedDetail(
    BuildContext context,
    FeedPost feed,
  ) async {
    final result = await context.push<dynamic>(
      AppRouter.feedDetail,
      extra: (feed: feed, openComments: false),
    );

    if (!context.mounted) return;

    final bloc = context.read<FeedBloc>();
    
    if (result == true) {
      bloc.add(const RefreshExploreFeeds());
      if (feed.author?.id.toString() == (bloc.state.viewerUserId ?? '')) {
        bloc.add(const RefreshClassFeeds());
      }

      AppSnackbar.show(
        context,
        message: 'Xóa bài thành công',
        type: AppSnackbarType.success,
      );
    } else if (result is FeedPost) {
      bloc.add(UpdateFeedPost(feed: result));
    }
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
                onLike: (feed) =>
                    context.read<FeedBloc>().add(ToggleFeedLike(feed: feed)),
              ),
            ],
          ),
        );
      },
    );
  }
}
