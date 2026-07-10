import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent.freezed.dart';

@freezed
class Parent with _$Parent {
  const factory Parent({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String phone,
    @Default('') String avatarUrl,
  }) = _Parent;
}
