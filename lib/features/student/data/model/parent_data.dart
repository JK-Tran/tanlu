import 'package:freezed_annotation/freezed_annotation.dart';

part 'parent_data.freezed.dart';
part 'parent_data.g.dart';

@freezed
class ParentData with _$ParentData {
  const factory ParentData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  }) = _ParentData;

  const ParentData._();
  factory ParentData.fromJson(Map<String, dynamic> json) =>
      _$ParentDataFromJson(json);
}
