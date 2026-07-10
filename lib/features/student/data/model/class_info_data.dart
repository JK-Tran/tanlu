import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_info_data.freezed.dart';
part 'class_info_data.g.dart';

@freezed
class ClassInfoData with _$ClassInfoData {
  const factory ClassInfoData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _ClassInfoData;

  const ClassInfoData._();
  factory ClassInfoData.fromJson(Map<String, dynamic> json) =>
      _$ClassInfoDataFromJson(json);
}
