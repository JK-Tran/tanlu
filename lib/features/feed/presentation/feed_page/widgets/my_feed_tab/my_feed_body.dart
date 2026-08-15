import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/bloc/feed_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/create_feed/widgets/compose_card.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/my_feed_tab/my_feed_list.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class MyFeedBody extends StatelessWidget {
  const MyFeedBody({super.key});

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
      bloc.add(const RefreshClassFeeds());
      if (feed.author?.id.toString() != (bloc.state.viewerUserId ?? '')) {
        bloc.add(const RefreshExploreFeeds());
      }

      AppSnackbar.show(
        context,
        message: context.l10n.feedDeletePostSuccess,
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
              ComposeCard(
                onTap: () async {
                  final isPublic = await context.push<bool>(AppRouter.createFeed);
                  if (isPublic != null && context.mounted) {
                    final bloc = context.read<FeedBloc>();
                    bloc.add(const RefreshClassFeeds());
                    if (isPublic) {
                      bloc.add(const RefreshExploreFeeds());
                    }
                  }
                },
              ),
              MyFeedList(
                feeds: state.classFeeds,
                hasMore: state.hasMoreClass,
                isLoadingMore: state.isLoadingMoreClass,
                onLoadMore: () =>
                    context.read<FeedBloc>().add(const LoadMoreClassFeeds()),
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
