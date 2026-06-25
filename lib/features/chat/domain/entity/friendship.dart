import 'package:freezed_annotation/freezed_annotation.dart';

part 'friendship.freezed.dart';

@freezed
class Friendship with _$Friendship {
  const factory Friendship({
    @Default('') String id,
    @Default([]) List<String> userIds,
    DateTime? createdAt,
  }) = _Friendship;
}
