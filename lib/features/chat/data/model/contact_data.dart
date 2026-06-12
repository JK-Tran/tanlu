import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_data.freezed.dart';
part 'contact_data.g.dart';

@freezed
class ContactData with _$ContactData {
  const factory ContactData({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
    @JsonKey() RoleData? role,
  }) = _ContactData;

  const ContactData._();

  factory ContactData.fromJson(Map<String, dynamic> json) =>
      _$ContactDataFromJson(json);
}

@freezed
class RoleData with _$RoleData {
  const factory RoleData({
    @JsonKey() String? code,
  }) = _RoleData;

  const RoleData._();

  factory RoleData.fromJson(Map<String, dynamic> json) =>
      _$RoleDataFromJson(json);
}
