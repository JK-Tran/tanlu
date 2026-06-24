part of 'feed_bloc.dart';

abstract class FeedEvent {
  const FeedEvent();
}

@freezed
class FeedStarted extends FeedEvent with _$FeedStarted {
  const factory FeedStarted({
    required String authorId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
  }) = _FeedStarted;
}

@freezed
class FeedTabChanged extends FeedEvent with _$FeedTabChanged {
  const factory FeedTabChanged({required FeedTab tab}) = _FeedTabChanged;
}

@freezed
class RefreshClassFeeds extends FeedEvent with _$RefreshClassFeeds {
  const factory RefreshClassFeeds() = _RefreshClassFeeds;
}

@freezed
class RefreshExploreFeeds extends FeedEvent with _$RefreshExploreFeeds {
  const factory RefreshExploreFeeds() = _RefreshExploreFeeds;
}

@freezed
class LoadMoreClassFeeds extends FeedEvent with _$LoadMoreClassFeeds {
  const factory LoadMoreClassFeeds() = _LoadMoreClassFeeds;
}

@freezed
class LoadMoreExploreFeeds extends FeedEvent with _$LoadMoreExploreFeeds {
  const factory LoadMoreExploreFeeds() = _LoadMoreExploreFeeds;
}

@freezed
class SubmitFeedLike extends FeedEvent with _$SubmitFeedLike {
  const factory SubmitFeedLike({required String feedId}) = _SubmitFeedLike;
}

@freezed
class _ClassFeedsStatsUpdated extends FeedEvent with _$ClassFeedsStatsUpdated {
  const factory _ClassFeedsStatsUpdated(List<Feed> feeds) =
      __ClassFeedsStatsUpdated;
}

@freezed
class _ExploreFeedsStatsUpdated extends FeedEvent with _$ExploreFeedsStatsUpdated {
  const factory _ExploreFeedsStatsUpdated(List<Feed> feeds) =
      __ExploreFeedsStatsUpdated;
}
