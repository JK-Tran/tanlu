import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';

@freezed
class Author with _$Author {
  const factory Author({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String role,
    @Default('') String avatar,
    String? className,
  }) = _Author;
}
