import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_data.freezed.dart';
part 'contact_data.g.dart';

@freezed
class ContactData with _$ContactData {
  const factory ContactData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'classId') String? classId,
  }) = _ContactData;

  factory ContactData.fromJson(Map<String, dynamic> json) =>
      _$ContactDataFromJson(json);
}
