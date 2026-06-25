import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_request.freezed.dart';

@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    @Default('') String id,
    @Default('') String fromUserId,
    @Default('') String toUserId,
    @Default('pending') String status,
    DateTime? createdAt,
  }) = _FriendRequest;
}
