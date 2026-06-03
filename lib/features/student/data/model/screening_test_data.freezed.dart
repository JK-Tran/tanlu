// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screening_test_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScreeningTestData _$ScreeningTestDataFromJson(Map<String, dynamic> json) {
  return _ScreeningTestData.fromJson(json);
}

/// @nodoc
mixin _$ScreeningTestData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this ScreeningTestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreeningTestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreeningTestDataCopyWith<ScreeningTestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreeningTestDataCopyWith<$Res> {
  factory $ScreeningTestDataCopyWith(
    ScreeningTestData value,
    $Res Function(ScreeningTestData) then,
  ) = _$ScreeningTestDataCopyWithImpl<$Res, ScreeningTestData>;
  @useResult
  $Res call({@JsonKey() int? id, @JsonKey() String? title});
}

/// @nodoc
class _$ScreeningTestDataCopyWithImpl<$Res, $Val extends ScreeningTestData>
    implements $ScreeningTestDataCopyWith<$Res> {
  _$ScreeningTestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreeningTestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? title = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ScreeningTestDataImplCopyWith<$Res>
    implements $ScreeningTestDataCopyWith<$Res> {
  factory _$$ScreeningTestDataImplCopyWith(
    _$ScreeningTestDataImpl value,
    $Res Function(_$ScreeningTestDataImpl) then,
  ) = __$$ScreeningTestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() int? id, @JsonKey() String? title});
}

/// @nodoc
class __$$ScreeningTestDataImplCopyWithImpl<$Res>
    extends _$ScreeningTestDataCopyWithImpl<$Res, _$ScreeningTestDataImpl>
    implements _$$ScreeningTestDataImplCopyWith<$Res> {
  __$$ScreeningTestDataImplCopyWithImpl(
    _$ScreeningTestDataImpl _value,
    $Res Function(_$ScreeningTestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreeningTestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? title = freezed}) {
    return _then(
      _$ScreeningTestDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreeningTestDataImpl extends _ScreeningTestData {
  const _$ScreeningTestDataImpl({@JsonKey() this.id, @JsonKey() this.title})
    : super._();

  factory _$ScreeningTestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreeningTestDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'ScreeningTestData(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreeningTestDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ScreeningTestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreeningTestDataImplCopyWith<_$ScreeningTestDataImpl> get copyWith =>
      __$$ScreeningTestDataImplCopyWithImpl<_$ScreeningTestDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreeningTestDataImplToJson(this);
  }
}

abstract class _ScreeningTestData extends ScreeningTestData {
  const factory _ScreeningTestData({
    @JsonKey() final int? id,
    @JsonKey() final String? title,
  }) = _$ScreeningTestDataImpl;
  const _ScreeningTestData._() : super._();

  factory _ScreeningTestData.fromJson(Map<String, dynamic> json) =
      _$ScreeningTestDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get title;

  /// Create a copy of ScreeningTestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreeningTestDataImplCopyWith<_$ScreeningTestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
