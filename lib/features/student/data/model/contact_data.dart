import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_data.freezed.dart';
part 'contact_data.g.dart';

@freezed
class ContactData with _$ContactData {
  const factory ContactData({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'relationship') String? relationship,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'dob') String? dob,
  }) = _ContactData;

  const ContactData._();
  factory ContactData.fromJson(Map<String, dynamic> json) =>
      _$ContactDataFromJson(json);
}
