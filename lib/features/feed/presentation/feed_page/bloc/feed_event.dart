part of 'feed_bloc.dart';

abstract class FeedEvent {
  const FeedEvent();
}

@freezed
class FeedStarted extends FeedEvent with _$FeedStarted {
  const factory FeedStarted({
    required int authorId,
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
class ToggleFeedLike extends FeedEvent with _$ToggleFeedLike {
  const factory ToggleFeedLike({required FeedPost feed}) = _ToggleFeedLike;
}

@freezed
class UpdateFeedPost extends FeedEvent with _$UpdateFeedPost {
  const factory UpdateFeedPost({required FeedPost feed}) = _UpdateFeedPost;
}
