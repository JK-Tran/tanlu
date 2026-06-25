part of 'feed_bloc.dart';

@freezed
class FeedState with _$FeedState {
  const factory FeedState({
    @Default([]) List<Feed> classFeeds,
    @Default([]) List<Feed> exploreFeeds,
    @Default(FeedTab.myClass) FeedTab selectedTab,
    @Default(false) bool isLoadingClass,
    @Default(false) bool isLoadingExplore,
    @Default(false) bool isLoadingMoreClass,
    @Default(false) bool isLoadingMoreExplore,
    @Default(false) bool hasMoreClass,
    @Default(false) bool hasMoreExplore,
    String? classNextCursor,
    String? exploreNextCursor,
    @Default(0) int newFeedCount,
    @Default('') String onPageError,
    String? authorId,
    String? viewerUserId,
    @Default('') String viewerFullName,
    @Default('') String viewerAvatar,
    @Default('') String viewerRole,
  }) = _FeedState;
}
