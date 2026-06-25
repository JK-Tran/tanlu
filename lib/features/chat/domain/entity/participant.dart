import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';

@freezed
class Participant with _$Participant {
  const factory Participant({
    @Default('') String userId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
    @Default(0) int unreadCount,
    DateTime? lastReadAt,
  }) = _Participant;
}
