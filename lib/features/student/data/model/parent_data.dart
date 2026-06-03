import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/data/model/user_data.dart';

part 'parent_data.freezed.dart';
part 'parent_data.g.dart';

@freezed
class ParentData with _$ParentData {
  const factory ParentData({
    @JsonKey() int? id,
    @JsonKey() String? address,
    @JsonKey() String? occupation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() UserData? user,
  }) = _ParentData;

  const ParentData._();

  factory ParentData.fromJson(Map<String, dynamic> json) =>
      _$ParentDataFromJson(json);
}
