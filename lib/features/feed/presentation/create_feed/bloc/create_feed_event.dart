part of 'create_feed_bloc.dart';

abstract class CreateFeedEvent {
  const CreateFeedEvent();
}

@freezed
class CreateFeedStarted extends CreateFeedEvent with _$CreateFeedStarted {
  const factory CreateFeedStarted({
    required String authorId,
    required String fullName,
    @Default('') String avatar,
    required String role,
    required String classId,
    @Default('') String centerId,
  }) = _CreateFeedStarted;
}

@freezed
class CreateFeedContentChanged extends CreateFeedEvent
    with _$CreateFeedContentChanged {
  const factory CreateFeedContentChanged({required String content}) =
      _CreateFeedContentChanged;
}

@freezed
class CreateFeedIsPublicChanged extends CreateFeedEvent
    with _$CreateFeedIsPublicChanged {
  const factory CreateFeedIsPublicChanged({required bool isPublic}) =
      _CreateFeedIsPublicChanged;
}

@freezed
class CreateFeedAllowCommentsChanged extends CreateFeedEvent
    with _$CreateFeedAllowCommentsChanged {
  const factory CreateFeedAllowCommentsChanged({required bool allowComments}) =
      _CreateFeedAllowCommentsChanged;
}

@freezed
class CreateFeedMediaPicked extends CreateFeedEvent with _$CreateFeedMediaPicked {
  const factory CreateFeedMediaPicked({required List<CreateFeedLocalMedia> items}) =
      _CreateFeedMediaPicked;
}

@freezed
class CreateFeedMediaRemoved extends CreateFeedEvent
    with _$CreateFeedMediaRemoved {
  const factory CreateFeedMediaRemoved({required int index}) =
      _CreateFeedMediaRemoved;
}

@freezed
class CreateFeedSubmitted extends CreateFeedEvent with _$CreateFeedSubmitted {
  const factory CreateFeedSubmitted() = _CreateFeedSubmitted;
}
