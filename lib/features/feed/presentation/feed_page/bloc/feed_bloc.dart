import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/features/feed/domain/usecases/get_class_feeds_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/get_explore_feeds_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/submit_feed_like_use_case.dart';
import 'package:tanlu_management/features/feed/presentation/services/enums/feed_tab.dart';

part 'feed_bloc.freezed.dart';
part 'feed_event.dart';
part 'feed_state.dart';

@injectable
class FeedBloc extends BaseBloc<FeedEvent, FeedState> {
  FeedBloc(
    this._getClassFeedsUseCase,
    this._getExploreFeedsUseCase,
    this._submitFeedLikeUseCase,
    this._repository,
  ) : super(const FeedState()) {
    on<FeedStarted>(_onFeedStarted);
    on<FeedTabChanged>(_onFeedTabChanged);
    on<RefreshClassFeeds>(_onRefreshClassFeeds);
    on<RefreshExploreFeeds>(_onRefreshExploreFeeds);
    on<LoadMoreClassFeeds>(_onLoadMoreClassFeeds);
    on<LoadMoreExploreFeeds>(_onLoadMoreExploreFeeds);
    on<SubmitFeedLike>(_onSubmitFeedLike);
    on<_ClassFeedsStatsUpdated>(_onClassFeedsStatsUpdated);
    on<_ExploreFeedsStatsUpdated>(_onExploreFeedsStatsUpdated);
  }

  final GetClassFeedsUseCase _getClassFeedsUseCase;
  final GetExploreFeedsUseCase _getExploreFeedsUseCase;
  final SubmitFeedLikeUseCase _submitFeedLikeUseCase;
  final FeedRepository _repository;

  StreamSubscription<List<Feed>>? _classStatsSubscription;
  StreamSubscription<List<Feed>>? _exploreStatsSubscription;

  @override
  Future<void> close() {
    _classStatsSubscription?.cancel();
    _exploreStatsSubscription?.cancel();
    return super.close();
  }

  void _subscribeFeedStats(String authorId) {
    _classStatsSubscription?.cancel();
    if (authorId.isEmpty) return;

    _classStatsSubscription = _repository
        .streamClassFeedStats(authorId: authorId)
        .listen(
          (feeds) => add(_ClassFeedsStatsUpdated(feeds)),
          onError: (_) {},
        );

    _exploreStatsSubscription?.cancel();
    _exploreStatsSubscription = _repository.streamExploreFeedStats().listen(
      (feeds) => add(_ExploreFeedsStatsUpdated(feeds)),
      onError: (_) {},
    );
  }

  void _onClassFeedsStatsUpdated(
    _ClassFeedsStatsUpdated event,
    Emitter<FeedState> emit,
  ) {
    emit(
      state.copyWith(
        classFeeds: _mergeFeedStats(state.classFeeds, event.feeds),
      ),
    );
  }

  void _onExploreFeedsStatsUpdated(
    _ExploreFeedsStatsUpdated event,
    Emitter<FeedState> emit,
  ) {
    emit(
      state.copyWith(
        exploreFeeds: _mergeFeedStats(state.exploreFeeds, event.feeds),
      ),
    );
  }

  List<Feed> _mergeFeedStats(List<Feed> current, List<Feed> fresh) {
    if (current.isEmpty || fresh.isEmpty) return current;

    final statsById = {for (final feed in fresh) feed.id: feed};
    final windowOldestAt = fresh.last.createdAt;

    return current
        .map((feed) {
          final updated = statsById[feed.id];
          if (updated != null) {
            return feed.copyWith(
              likeCount: updated.likeCount,
              commentCount: updated.commentCount,
            );
          }

          // Bài load thêm (ngoài 20 bài stream) — giữ nguyên.
          if (windowOldestAt == null ||
              feed.createdAt == null ||
              feed.createdAt!.isBefore(windowOldestAt)) {
            return feed;
          }

          // Còn trong cửa sổ stream nhưng không còn trên server → đã xóa.
          return null;
        })
        .whereType<Feed>()
        .toList();
  }

  Future<void> _onSubmitFeedLike(
    SubmitFeedLike event,
    Emitter<FeedState> emit,
  ) async {
    final feedId = event.feedId;
    final feed = _findFeed(feedId);
    if (feed == null) return;

    final wasLiked = feed.isLiked;
    final optimisticCount = wasLiked
        ? (feed.likeCount - 1).clamp(0, 999999)
        : feed.likeCount + 1;

    _updateFeedInLists(
      emit,
      feedId,
      (current) =>
          current.copyWith(isLiked: !wasLiked, likeCount: optimisticCount),
    );

    try {
      final output = await _submitFeedLikeUseCase.execute(
        SubmitFeedLikeInput(
          feedId: feedId,
          currentUser: Author(
            id: state.viewerUserId ?? '',
            fullName: state.viewerFullName,
            avatar: state.viewerAvatar,
            role: state.viewerRole,
          ),
        ),
      );

      _updateFeedInLists(
        emit,
        feedId,
        (current) => current.copyWith(
          isLiked: output.result.isLiked,
          likeCount: output.result.likeCount,
        ),
      );
    } catch (e) {
      _updateFeedInLists(
        emit,
        feedId,
        (current) =>
            current.copyWith(isLiked: wasLiked, likeCount: feed.likeCount),
      );
      emit(state.copyWith(onPageError: e.toString()));
    }
  }

  Feed? _findFeed(String feedId) {
    for (final feed in state.classFeeds) {
      if (feed.id == feedId) return feed;
    }
    for (final feed in state.exploreFeeds) {
      if (feed.id == feedId) return feed;
    }
    return null;
  }

  void _updateFeedInLists(
    Emitter<FeedState> emit,
    String feedId,
    Feed Function(Feed current) transform,
  ) {
    emit(
      state.copyWith(
        classFeeds: state.classFeeds
            .map((feed) => feed.id == feedId ? transform(feed) : feed)
            .toList(),
        exploreFeeds: state.exploreFeeds
            .map((feed) => feed.id == feedId ? transform(feed) : feed)
            .toList(),
      ),
    );
  }

  Future<void> _onFeedStarted(
    FeedStarted event,
    Emitter<FeedState> emit,
  ) async {
    final authorId = event.authorId;
    if (authorId.isEmpty) {
      emit(
        state.copyWith(
          authorId: authorId,
          onPageError: 'Chưa đăng nhập',
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

    _subscribeFeedStats(authorId);

    await Future.wait([
      _loadClassFeeds(emit, authorId: authorId),
      _loadExploreFeeds(emit, viewerUserId: authorId),
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
      await _loadExploreFeeds(emit, viewerUserId: state.viewerUserId ?? '');
    }
  }

  Future<void> _onRefreshClassFeeds(
    RefreshClassFeeds event,
    Emitter<FeedState> emit,
  ) async {
    final authorId = state.authorId;
    if (authorId == null || authorId.isEmpty) return;
    await _loadClassFeeds(emit, authorId: authorId);
  }

  Future<void> _onRefreshExploreFeeds(
    RefreshExploreFeeds event,
    Emitter<FeedState> emit,
  ) async {
    await _loadExploreFeeds(emit, viewerUserId: state.viewerUserId ?? '');
  }

  Future<void> _onLoadMoreClassFeeds(
    LoadMoreClassFeeds event,
    Emitter<FeedState> emit,
  ) async {
    final authorId = state.authorId;
    if (authorId == null ||
        authorId.isEmpty ||
        !state.hasMoreClass ||
        state.isLoadingMoreClass) {
      return;
    }

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoadingMoreClass: true, onPageError: ''));

        final output = await _getClassFeedsUseCase.execute(
          GetClassFeedsInput(
            authorId: authorId,
            viewerUserId: state.viewerUserId,
            cursor: state.classNextCursor,
          ),
        );

        emit(
          state.copyWith(
            isLoadingMoreClass: false,
            classFeeds: [...state.classFeeds, ...output.response.feeds],
            classNextCursor: output.response.nextCursor,
            hasMoreClass: output.response.hasMore,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isLoadingMoreClass: false, onPageError: e.toString()),
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

        final output = await _getExploreFeedsUseCase.execute(
          GetExploreFeedsInput(
            viewerUserId: state.viewerUserId ?? '',
            cursor: state.exploreNextCursor,
          ),
        );

        emit(
          state.copyWith(
            isLoadingMoreExplore: false,
            exploreFeeds: [...state.exploreFeeds, ...output.response.feeds],
            exploreNextCursor: output.response.nextCursor,
            hasMoreExplore: output.response.hasMore,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoadingMoreExplore: false,
            onPageError: e.toString(),
          ),
        );
      },
    );
  }

  Future<void> _loadClassFeeds(
    Emitter<FeedState> emit, {
    required String authorId,
  }) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoadingClass: true,
            onPageError: '',
            classFeeds: const [],
            classNextCursor: null,
            hasMoreClass: false,
          ),
        );

        final output = await _getClassFeedsUseCase.execute(
          GetClassFeedsInput(
            authorId: authorId,
            viewerUserId: state.viewerUserId ?? authorId,
          ),
        );

        emit(
          state.copyWith(
            isLoadingClass: false,
            classFeeds: output.response.feeds,
            classNextCursor: output.response.nextCursor,
            hasMoreClass: output.response.hasMore,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isLoadingClass: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _loadExploreFeeds(
    Emitter<FeedState> emit, {
    required String viewerUserId,
  }) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoadingExplore: true,
            onPageError: '',
            exploreFeeds: const [],
            exploreNextCursor: null,
            hasMoreExplore: false,
          ),
        );

        final output = await _getExploreFeedsUseCase.execute(
          GetExploreFeedsInput(viewerUserId: viewerUserId),
        );

        emit(
          state.copyWith(
            isLoadingExplore: false,
            exploreFeeds: output.response.feeds,
            exploreNextCursor: output.response.nextCursor,
            hasMoreExplore: output.response.hasMore,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isLoadingExplore: false, onPageError: e.toString()),
        );
      },
    );
  }
}
