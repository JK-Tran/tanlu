// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screening_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ScreeningResultData _$ScreeningResultDataFromJson(Map<String, dynamic> json) {
  return _ScreeningResultData.fromJson(json);
}

/// @nodoc
mixin _$ScreeningResultData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get screeningTestId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey()
  int? get totalScore => throw _privateConstructorUsedError;
  @JsonKey()
  String? get riskLevel => throw _privateConstructorUsedError;
  @JsonKey()
  String? get recommendation => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  ScreeningTestData? get screeningTest => throw _privateConstructorUsedError;
  @JsonKey()
  UserData? get creator => throw _privateConstructorUsedError;

  /// Serializes this ScreeningResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreeningResultDataCopyWith<ScreeningResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreeningResultDataCopyWith<$Res> {
  factory $ScreeningResultDataCopyWith(
    ScreeningResultData value,
    $Res Function(ScreeningResultData) then,
  ) = _$ScreeningResultDataCopyWithImpl<$Res, ScreeningResultData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? screeningTestId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? totalScore,
    @JsonKey() String? riskLevel,
    @JsonKey() String? recommendation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ScreeningTestData? screeningTest,
    @JsonKey() UserData? creator,
  });

  $ScreeningTestDataCopyWith<$Res>? get screeningTest;
  $UserDataCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ScreeningResultDataCopyWithImpl<$Res, $Val extends ScreeningResultData>
    implements $ScreeningResultDataCopyWith<$Res> {
  _$ScreeningResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? screeningTestId = freezed,
    Object? studentId = freezed,
    Object? createdBy = freezed,
    Object? totalScore = freezed,
    Object? riskLevel = freezed,
    Object? recommendation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? screeningTest = freezed,
    Object? creator = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            screeningTestId: freezed == screeningTestId
                ? _value.screeningTestId
                : screeningTestId // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalScore: freezed == totalScore
                ? _value.totalScore
                : totalScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            riskLevel: freezed == riskLevel
                ? _value.riskLevel
                : riskLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
            recommendation: freezed == recommendation
                ? _value.recommendation
                : recommendation // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            screeningTest: freezed == screeningTest
                ? _value.screeningTest
                : screeningTest // ignore: cast_nullable_to_non_nullable
                      as ScreeningTestData?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as UserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreeningTestDataCopyWith<$Res>? get screeningTest {
    if (_value.screeningTest == null) {
      return null;
    }

    return $ScreeningTestDataCopyWith<$Res>(_value.screeningTest!, (value) {
      return _then(_value.copyWith(screeningTest: value) as $Val);
    });
  }

  /// Create a copy of ScreeningResultData
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
abstract class _$$ScreeningResultDataImplCopyWith<$Res>
    implements $ScreeningResultDataCopyWith<$Res> {
  factory _$$ScreeningResultDataImplCopyWith(
    _$ScreeningResultDataImpl value,
    $Res Function(_$ScreeningResultDataImpl) then,
  ) = __$$ScreeningResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? screeningTestId,
    @JsonKey() int? studentId,
    @JsonKey() int? createdBy,
    @JsonKey() int? totalScore,
    @JsonKey() String? riskLevel,
    @JsonKey() String? recommendation,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ScreeningTestData? screeningTest,
    @JsonKey() UserData? creator,
  });

  @override
  $ScreeningTestDataCopyWith<$Res>? get screeningTest;
  @override
  $UserDataCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$ScreeningResultDataImplCopyWithImpl<$Res>
    extends _$ScreeningResultDataCopyWithImpl<$Res, _$ScreeningResultDataImpl>
    implements _$$ScreeningResultDataImplCopyWith<$Res> {
  __$$ScreeningResultDataImplCopyWithImpl(
    _$ScreeningResultDataImpl _value,
    $Res Function(_$ScreeningResultDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? screeningTestId = freezed,
    Object? studentId = freezed,
    Object? createdBy = freezed,
    Object? totalScore = freezed,
    Object? riskLevel = freezed,
    Object? recommendation = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? screeningTest = freezed,
    Object? creator = freezed,
  }) {
    return _then(
      _$ScreeningResultDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        screeningTestId: freezed == screeningTestId
            ? _value.screeningTestId
            : screeningTestId // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalScore: freezed == totalScore
            ? _value.totalScore
            : totalScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        riskLevel: freezed == riskLevel
            ? _value.riskLevel
            : riskLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
        recommendation: freezed == recommendation
            ? _value.recommendation
            : recommendation // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        screeningTest: freezed == screeningTest
            ? _value.screeningTest
            : screeningTest // ignore: cast_nullable_to_non_nullable
                  as ScreeningTestData?,
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
class _$ScreeningResultDataImpl extends _ScreeningResultData {
  const _$ScreeningResultDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.screeningTestId,
    @JsonKey() this.studentId,
    @JsonKey() this.createdBy,
    @JsonKey() this.totalScore,
    @JsonKey() this.riskLevel,
    @JsonKey() this.recommendation,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.screeningTest,
    @JsonKey() this.creator,
  }) : super._();

  factory _$ScreeningResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreeningResultDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? screeningTestId;
  @override
  @JsonKey()
  final int? studentId;
  @override
  @JsonKey()
  final int? createdBy;
  @override
  @JsonKey()
  final int? totalScore;
  @override
  @JsonKey()
  final String? riskLevel;
  @override
  @JsonKey()
  final String? recommendation;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final ScreeningTestData? screeningTest;
  @override
  @JsonKey()
  final UserData? creator;

  @override
  String toString() {
    return 'ScreeningResultData(id: $id, screeningTestId: $screeningTestId, studentId: $studentId, createdBy: $createdBy, totalScore: $totalScore, riskLevel: $riskLevel, recommendation: $recommendation, createdAt: $createdAt, updatedAt: $updatedAt, screeningTest: $screeningTest, creator: $creator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreeningResultDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.screeningTestId, screeningTestId) ||
                other.screeningTestId == screeningTestId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            (identical(other.recommendation, recommendation) ||
                other.recommendation == recommendation) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.screeningTest, screeningTest) ||
                other.screeningTest == screeningTest) &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    screeningTestId,
    studentId,
    createdBy,
    totalScore,
    riskLevel,
    recommendation,
    createdAt,
    updatedAt,
    screeningTest,
    creator,
  );

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreeningResultDataImplCopyWith<_$ScreeningResultDataImpl> get copyWith =>
      __$$ScreeningResultDataImplCopyWithImpl<_$ScreeningResultDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreeningResultDataImplToJson(this);
  }
}

abstract class _ScreeningResultData extends ScreeningResultData {
  const factory _ScreeningResultData({
    @JsonKey() final int? id,
    @JsonKey() final int? screeningTestId,
    @JsonKey() final int? studentId,
    @JsonKey() final int? createdBy,
    @JsonKey() final int? totalScore,
    @JsonKey() final String? riskLevel,
    @JsonKey() final String? recommendation,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final ScreeningTestData? screeningTest,
    @JsonKey() final UserData? creator,
  }) = _$ScreeningResultDataImpl;
  const _ScreeningResultData._() : super._();

  factory _ScreeningResultData.fromJson(Map<String, dynamic> json) =
      _$ScreeningResultDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get screeningTestId;
  @override
  @JsonKey()
  int? get studentId;
  @override
  @JsonKey()
  int? get createdBy;
  @override
  @JsonKey()
  int? get totalScore;
  @override
  @JsonKey()
  String? get riskLevel;
  @override
  @JsonKey()
  String? get recommendation;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  ScreeningTestData? get screeningTest;
  @override
  @JsonKey()
  UserData? get creator;

  /// Create a copy of ScreeningResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreeningResultDataImplCopyWith<_$ScreeningResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
