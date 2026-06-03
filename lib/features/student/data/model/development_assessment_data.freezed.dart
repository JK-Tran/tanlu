// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'development_assessment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DevelopmentAssessmentData _$DevelopmentAssessmentDataFromJson(
  Map<String, dynamic> json,
) {
  return _DevelopmentAssessmentData.fromJson(json);
}

/// @nodoc
mixin _$DevelopmentAssessmentData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this DevelopmentAssessmentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DevelopmentAssessmentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevelopmentAssessmentDataCopyWith<DevelopmentAssessmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentAssessmentDataCopyWith<$Res> {
  factory $DevelopmentAssessmentDataCopyWith(
    DevelopmentAssessmentData value,
    $Res Function(DevelopmentAssessmentData) then,
  ) = _$DevelopmentAssessmentDataCopyWithImpl<$Res, DevelopmentAssessmentData>;
  @useResult
  $Res call({@JsonKey() int? id, @JsonKey() String? title});
}

/// @nodoc
class _$DevelopmentAssessmentDataCopyWithImpl<
  $Res,
  $Val extends DevelopmentAssessmentData
>
    implements $DevelopmentAssessmentDataCopyWith<$Res> {
  _$DevelopmentAssessmentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevelopmentAssessmentData
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
abstract class _$$DevelopmentAssessmentDataImplCopyWith<$Res>
    implements $DevelopmentAssessmentDataCopyWith<$Res> {
  factory _$$DevelopmentAssessmentDataImplCopyWith(
    _$DevelopmentAssessmentDataImpl value,
    $Res Function(_$DevelopmentAssessmentDataImpl) then,
  ) = __$$DevelopmentAssessmentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() int? id, @JsonKey() String? title});
}

/// @nodoc
class __$$DevelopmentAssessmentDataImplCopyWithImpl<$Res>
    extends
        _$DevelopmentAssessmentDataCopyWithImpl<
          $Res,
          _$DevelopmentAssessmentDataImpl
        >
    implements _$$DevelopmentAssessmentDataImplCopyWith<$Res> {
  __$$DevelopmentAssessmentDataImplCopyWithImpl(
    _$DevelopmentAssessmentDataImpl _value,
    $Res Function(_$DevelopmentAssessmentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DevelopmentAssessmentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? title = freezed}) {
    return _then(
      _$DevelopmentAssessmentDataImpl(
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
class _$DevelopmentAssessmentDataImpl extends _DevelopmentAssessmentData {
  const _$DevelopmentAssessmentDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.title,
  }) : super._();

  factory _$DevelopmentAssessmentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevelopmentAssessmentDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'DevelopmentAssessmentData(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevelopmentAssessmentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of DevelopmentAssessmentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevelopmentAssessmentDataImplCopyWith<_$DevelopmentAssessmentDataImpl>
  get copyWith =>
      __$$DevelopmentAssessmentDataImplCopyWithImpl<
        _$DevelopmentAssessmentDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DevelopmentAssessmentDataImplToJson(this);
  }
}

abstract class _DevelopmentAssessmentData extends DevelopmentAssessmentData {
  const factory _DevelopmentAssessmentData({
    @JsonKey() final int? id,
    @JsonKey() final String? title,
  }) = _$DevelopmentAssessmentDataImpl;
  const _DevelopmentAssessmentData._() : super._();

  factory _DevelopmentAssessmentData.fromJson(Map<String, dynamic> json) =
      _$DevelopmentAssessmentDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get title;

  /// Create a copy of DevelopmentAssessmentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevelopmentAssessmentDataImplCopyWith<_$DevelopmentAssessmentDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
