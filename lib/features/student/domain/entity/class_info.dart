import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_info.freezed.dart';

@freezed
class ClassInfo with _$ClassInfo {
  const factory ClassInfo({@Default(0) int id, @Default('') String name}) =
      _ClassInfo;
}
