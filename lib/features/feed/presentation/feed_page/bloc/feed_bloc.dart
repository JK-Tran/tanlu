import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/usecases/get_feed_posts_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/toggle_post_like_use_case.dart';
import 'package:tanlu_management/features/feed/presentation/services/enums/feed_tab.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';
import 'package:tanlu_management/l10n/l10n.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

@injectable
class FeedBloc extends BaseBloc<FeedEvent, FeedState> {
  FeedBloc(
    this._getFeedPostsUseCase,
    this._togglePostLikeUseCase,
  ) : super(const FeedState()) {
    on<FeedStarted>(_onFeedStarted);
    on<FeedTabChanged>(_onFeedTabChanged);
    on<RefreshClassFeeds>(_onRefreshClassFeeds);
    on<RefreshExploreFeeds>(_onRefreshExploreFeeds);
    on<LoadMoreClassFeeds>(_onLoadMoreClassFeeds);
    on<LoadMoreExploreFeeds>(_onLoadMoreExploreFeeds);
    on<ToggleFeedLike>(_onToggleFeedLike);
    on<UpdateFeedPost>(_onUpdateFeedPost);
  }

  final GetFeedPostsUseCase _getFeedPostsUseCase;
  final TogglePostLikeUseCase _togglePostLikeUseCase;

  Future<void> _onFeedStarted(
    FeedStarted event,
    Emitter<FeedState> emit,
  ) async {
    final authorId = event.authorId;
    if (authorId <= 0) {
      emit(
        state.copyWith(
          authorId: authorId,
          onPageError: S.current.feedNotLoggedIn,
          isLoadingClass: false,
          isLoadingExplore: false,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        authorId: authorId,
        viewerUserId: authorId,
        viewerFullName: event.fullName,
        viewerAvatar: event.avatar,
        viewerRole: event.role,
        onPageError: '',
        selectedTab: FeedTab.myClass,
      ),
    );

    await Future.wait([
      _loadClassFeeds(emit),
      _loadExploreFeeds(emit),
    ]);
  }

  Future<void> _onFeedTabChanged(
    FeedTabChanged event,
    Emitter<FeedState> emit,
  ) async {
    emit(state.copyWith(selectedTab: event.tab));

    if (event.tab == FeedTab.explore &&
        state.exploreFeeds.isEmpty &&
        !state.isLoadingExplore) {
      await _loadExploreFeeds(emit);
    }
  }

  Future<void> _onRefreshClassFeeds(
    RefreshClassFeeds event,
    Emitter<FeedState> emit,
  ) async {
    await _loadClassFeeds(emit);
  }

  Future<void> _onRefreshExploreFeeds(
    RefreshExploreFeeds event,
    Emitter<FeedState> emit,
  ) async {
    await _loadExploreFeeds(emit);
  }

  Future<void> _onLoadMoreClassFeeds(
    LoadMoreClassFeeds event,
    Emitter<FeedState> emit,
  ) async {
    if (!state.hasMoreClass || state.isLoadingMoreClass) {
      return;
    }

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingMoreClass: true, onPageError: ''));

        final output = await _getFeedPostsUseCase.execute(
          const GetFeedPostsInput(filter: 'my_posts'),
          false,
        );

        emit(
          state.copyWith(
            isLoadingMoreClass: false,
            classFeeds: [...state.classFeeds, ...output.data],
            hasMoreClass: !output.isLastPage,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isLoadingMoreClass: false, onPageError: ErrorMapper.getMessage(e)),
        );
      },
    );
  }

  Future<void> _onLoadMoreExploreFeeds(
    LoadMoreExploreFeeds event,
    Emitter<FeedState> emit,
  ) async {
    if (!state.hasMoreExplore || state.isLoadingMoreExplore) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingMoreExplore: true, onPageError: ''));

        final output = await _getFeedPostsUseCase.execute(
          const GetFeedPostsInput(filter: 'explore'),
          false,
        );

        emit(
          state.copyWith(
            isLoadingMoreExplore: false,
            exploreFeeds: [...state.exploreFeeds, ...output.data],
            hasMoreExplore: !output.isLastPage,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoadingMoreExplore: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onToggleFeedLike(
    ToggleFeedLike event,
    Emitter<FeedState> emit,
  ) async {
    // Optimistic update — update UI first, then call API
    final FeedPost feed = event.feed;
    final bool isNowLiked = !feed.isLikedByMe;
    final int newCount =
        isNowLiked ? feed.likeCount + 1 : (feed.likeCount - 1).clamp(0, 999999);
    final FeedPost updated = feed.copyWith(
      isLikedByMe: isNowLiked,
      likeCount: newCount,
    );

    emit(state.copyWith(
      classFeeds: state.classFeeds
          .map((f) => f.id == feed.id ? updated : f)
          .toList(),
      exploreFeeds: state.exploreFeeds
          .map((f) => f.id == feed.id ? updated : f)
          .toList(),
    ));

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _togglePostLikeUseCase.execute(
          TogglePostLikeInput(postId: feed.id),
        );
      },
      doOnError: (_) {
        // Roll back on failure
        emit(state.copyWith(
          classFeeds: state.classFeeds
              .map((f) => f.id == feed.id ? feed : f)
              .toList(),
          exploreFeeds: state.exploreFeeds
              .map((f) => f.id == feed.id ? feed : f)
              .toList(),
        ));
      },
    );
  }

  Future<void> _onUpdateFeedPost(
    UpdateFeedPost event,
    Emitter<FeedState> emit,
  ) async {
    final feed = event.feed;
    emit(state.copyWith(
      classFeeds: state.classFeeds
          .map((f) => f.id == feed.id ? feed : f)
          .toList(),
      exploreFeeds: state.exploreFeeds
          .map((f) => f.id == feed.id ? feed : f)
          .toList(),
    ));
  }

  Future<void> _loadClassFeeds(Emitter<FeedState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoadingClass: true,
            onPageError: '',
            classFeeds: const [],
            hasMoreClass: false,
          ),
        );

        final output = await _getFeedPostsUseCase.execute(
          const GetFeedPostsInput(filter: 'my_posts'),
          true,
        );

        emit(
          state.copyWith(
            isLoadingClass: false,
            classFeeds: output.data,
            hasMoreClass: !output.isLastPage,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoadingClass: false, onPageError: ErrorMapper.getMessage(e)));
      },
    );
  }

  Future<void> _loadExploreFeeds(Emitter<FeedState> emit) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoadingExplore: true,
            onPageError: '',
            exploreFeeds: const [],
            hasMoreExplore: false,
          ),
        );

        final output = await _getFeedPostsUseCase.execute(
          const GetFeedPostsInput(filter: 'explore'),
          true,
        );

        emit(
          state.copyWith(
            isLoadingExplore: false,
            exploreFeeds: output.data,
            hasMoreExplore: !output.isLastPage,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isLoadingExplore: false, onPageError: ErrorMapper.getMessage(e)),
        );
      },
    );
  }
}
