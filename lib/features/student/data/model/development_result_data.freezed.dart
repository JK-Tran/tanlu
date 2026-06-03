// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'development_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DevelopmentResultData _$DevelopmentResultDataFromJson(
  Map<String, dynamic> json,
) {
  return _DevelopmentResultData.fromJson(json);
}

/// @nodoc
mixin _$DevelopmentResultData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get developmentAssessmentId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey()
  int? get estimatedDevelopmentAgeMonth => throw _privateConstructorUsedError;
  @JsonKey()
  String? get strengths => throw _privateConstructorUsedError;
  @JsonKey()
  String? get weaknesses => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  DevelopmentAssessmentData? get developmentAssessment =>
      throw _privateConstructorUsedError;
  @JsonKey()
  UserData? get creator => throw _privateConstructorUsedError;

  /// Serializes this DevelopmentResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevelopmentResultDataCopyWith<DevelopmentResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentResultDataCopyWith<$Res> {
  factory $DevelopmentResultDataCopyWith(
    DevelopmentResultData value,
    $Res Function(DevelopmentResultData) then,
  ) = _$DevelopmentResultDataCopyWithImpl<$Res, DevelopmentResultData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? developmentAssessmentId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? estimatedDevelopmentAgeMonth,
    @JsonKey() String? strengths,
    @JsonKey() String? weaknesses,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() DevelopmentAssessmentData? developmentAssessment,
    @JsonKey() UserData? creator,
  });

  $DevelopmentAssessmentDataCopyWith<$Res>? get developmentAssessment;
  $UserDataCopyWith<$Res>? get creator;
}

/// @nodoc
class _$DevelopmentResultDataCopyWithImpl<
  $Res,
  $Val extends DevelopmentResultData
>
    implements $DevelopmentResultDataCopyWith<$Res> {
  _$DevelopmentResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? developmentAssessmentId = freezed,
    Object? studentId = freezed,
    Object? createdBy = freezed,
    Object? estimatedDevelopmentAgeMonth = freezed,
    Object? strengths = freezed,
    Object? weaknesses = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? developmentAssessment = freezed,
    Object? creator = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            developmentAssessmentId: freezed == developmentAssessmentId
                ? _value.developmentAssessmentId
                : developmentAssessmentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            estimatedDevelopmentAgeMonth:
                freezed == estimatedDevelopmentAgeMonth
                ? _value.estimatedDevelopmentAgeMonth
                : estimatedDevelopmentAgeMonth // ignore: cast_nullable_to_non_nullable
                      as int?,
            strengths: freezed == strengths
                ? _value.strengths
                : strengths // ignore: cast_nullable_to_non_nullable
                      as String?,
            weaknesses: freezed == weaknesses
                ? _value.weaknesses
                : weaknesses // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            developmentAssessment: freezed == developmentAssessment
                ? _value.developmentAssessment
                : developmentAssessment // ignore: cast_nullable_to_non_nullable
                      as DevelopmentAssessmentData?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as UserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevelopmentAssessmentDataCopyWith<$Res>? get developmentAssessment {
    if (_value.developmentAssessment == null) {
      return null;
    }

    return $DevelopmentAssessmentDataCopyWith<$Res>(
      _value.developmentAssessment!,
      (value) {
        return _then(_value.copyWith(developmentAssessment: value) as $Val);
      },
    );
  }

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DevelopmentResultDataImplCopyWith<$Res>
    implements $DevelopmentResultDataCopyWith<$Res> {
  factory _$$DevelopmentResultDataImplCopyWith(
    _$DevelopmentResultDataImpl value,
    $Res Function(_$DevelopmentResultDataImpl) then,
  ) = __$$DevelopmentResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? developmentAssessmentId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? estimatedDevelopmentAgeMonth,
    @JsonKey() String? strengths,
    @JsonKey() String? weaknesses,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() DevelopmentAssessmentData? developmentAssessment,
    @JsonKey() UserData? creator,
  });

  @override
  $DevelopmentAssessmentDataCopyWith<$Res>? get developmentAssessment;
  @override
  $UserDataCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$DevelopmentResultDataImplCopyWithImpl<$Res>
    extends
        _$DevelopmentResultDataCopyWithImpl<$Res, _$DevelopmentResultDataImpl>
    implements _$$DevelopmentResultDataImplCopyWith<$Res> {
  __$$DevelopmentResultDataImplCopyWithImpl(
    _$DevelopmentResultDataImpl _value,
    $Res Function(_$DevelopmentResultDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? developmentAssessmentId = freezed,
    Object? studentId = freezed,
    Object? createdBy = freezed,
    Object? estimatedDevelopmentAgeMonth = freezed,
    Object? strengths = freezed,
    Object? weaknesses = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? developmentAssessment = freezed,
    Object? creator = freezed,
  }) {
    return _then(
      _$DevelopmentResultDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        developmentAssessmentId: freezed == developmentAssessmentId
            ? _value.developmentAssessmentId
            : developmentAssessmentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        estimatedDevelopmentAgeMonth: freezed == estimatedDevelopmentAgeMonth
            ? _value.estimatedDevelopmentAgeMonth
            : estimatedDevelopmentAgeMonth // ignore: cast_nullable_to_non_nullable
                  as int?,
        strengths: freezed == strengths
            ? _value.strengths
            : strengths // ignore: cast_nullable_to_non_nullable
                  as String?,
        weaknesses: freezed == weaknesses
            ? _value.weaknesses
            : weaknesses // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        developmentAssessment: freezed == developmentAssessment
            ? _value.developmentAssessment
            : developmentAssessment // ignore: cast_nullable_to_non_nullable
                  as DevelopmentAssessmentData?,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as UserData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DevelopmentResultDataImpl extends _DevelopmentResultData {
  const _$DevelopmentResultDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.developmentAssessmentId,
    @JsonKey() this.studentId,
    @JsonKey() this.createdBy,
    @JsonKey() this.estimatedDevelopmentAgeMonth,
    @JsonKey() this.strengths,
    @JsonKey() this.weaknesses,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.developmentAssessment,
    @JsonKey() this.creator,
  }) : super._();

  factory _$DevelopmentResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DevelopmentResultDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? developmentAssessmentId;
  @override
  @JsonKey()
  final int? studentId;
  @override
  @JsonKey()
  final int? createdBy;
  @override
  @JsonKey()
  final int? estimatedDevelopmentAgeMonth;
  @override
  @JsonKey()
  final String? strengths;
  @override
  @JsonKey()
  final String? weaknesses;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final DevelopmentAssessmentData? developmentAssessment;
  @override
  @JsonKey()
  final UserData? creator;

  @override
  String toString() {
    return 'DevelopmentResultData(id: $id, developmentAssessmentId: $developmentAssessmentId, studentId: $studentId, createdBy: $createdBy, estimatedDevelopmentAgeMonth: $estimatedDevelopmentAgeMonth, strengths: $strengths, weaknesses: $weaknesses, createdAt: $createdAt, updatedAt: $updatedAt, developmentAssessment: $developmentAssessment, creator: $creator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevelopmentResultDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                  other.developmentAssessmentId,
                  developmentAssessmentId,
                ) ||
                other.developmentAssessmentId == developmentAssessmentId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(
                  other.estimatedDevelopmentAgeMonth,
                  estimatedDevelopmentAgeMonth,
                ) ||
                other.estimatedDevelopmentAgeMonth ==
                    estimatedDevelopmentAgeMonth) &&
            (identical(other.strengths, strengths) ||
                other.strengths == strengths) &&
            (identical(other.weaknesses, weaknesses) ||
                other.weaknesses == weaknesses) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.developmentAssessment, developmentAssessment) ||
                other.developmentAssessment == developmentAssessment) &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    developmentAssessmentId,
    studentId,
    createdBy,
    estimatedDevelopmentAgeMonth,
    strengths,
    weaknesses,
    createdAt,
    updatedAt,
    developmentAssessment,
    creator,
  );

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevelopmentResultDataImplCopyWith<_$DevelopmentResultDataImpl>
  get copyWith =>
      __$$DevelopmentResultDataImplCopyWithImpl<_$DevelopmentResultDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DevelopmentResultDataImplToJson(this);
  }
}

abstract class _DevelopmentResultData extends DevelopmentResultData {
  const factory _DevelopmentResultData({
    @JsonKey() final int? id,
    @JsonKey() final int? developmentAssessmentId,
    @JsonKey() final int? studentId,
    @JsonKey() final int? createdBy,
    @JsonKey() final int? estimatedDevelopmentAgeMonth,
    @JsonKey() final String? strengths,
    @JsonKey() final String? weaknesses,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final DevelopmentAssessmentData? developmentAssessment,
    @JsonKey() final UserData? creator,
  }) = _$DevelopmentResultDataImpl;
  const _DevelopmentResultData._() : super._();

  factory _DevelopmentResultData.fromJson(Map<String, dynamic> json) =
      _$DevelopmentResultDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get developmentAssessmentId;
  @override
  @JsonKey()
  int? get studentId;
  @override
  @JsonKey()
  int? get createdBy;
  @override
  @JsonKey()
  int? get estimatedDevelopmentAgeMonth;
  @override
  @JsonKey()
  String? get strengths;
  @override
  @JsonKey()
  String? get weaknesses;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  DevelopmentAssessmentData? get developmentAssessment;
  @override
  @JsonKey()
  UserData? get creator;

  /// Create a copy of DevelopmentResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevelopmentResultDataImplCopyWith<_$DevelopmentResultDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
