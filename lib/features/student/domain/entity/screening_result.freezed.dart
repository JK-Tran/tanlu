// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screening_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScreeningResult {
  int get id => throw _privateConstructorUsedError;
  int get screeningTestId => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  int get totalScore => throw _privateConstructorUsedError;
  String get riskLevel => throw _privateConstructorUsedError;
  String get recommendation => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ScreeningTest get screeningTest => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreeningResultCopyWith<ScreeningResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreeningResultCopyWith<$Res> {
  factory $ScreeningResultCopyWith(
    ScreeningResult value,
    $Res Function(ScreeningResult) then,
  ) = _$ScreeningResultCopyWithImpl<$Res, ScreeningResult>;
  @useResult
  $Res call({
    int id,
    int screeningTestId,
    int studentId,
    int createdBy,
    int totalScore,
    String riskLevel,
    String recommendation,
    DateTime? createdAt,
    DateTime? updatedAt,
    ScreeningTest screeningTest,
    User creator,
  });

  $ScreeningTestCopyWith<$Res> get screeningTest;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$ScreeningResultCopyWithImpl<$Res, $Val extends ScreeningResult>
    implements $ScreeningResultCopyWith<$Res> {
  _$ScreeningResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? screeningTestId = null,
    Object? studentId = null,
    Object? createdBy = null,
    Object? totalScore = null,
    Object? riskLevel = null,
    Object? recommendation = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? screeningTest = null,
    Object? creator = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            screeningTestId: null == screeningTestId
                ? _value.screeningTestId
                : screeningTestId // ignore: cast_nullable_to_non_nullable
                      as int,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int,
            totalScore: null == totalScore
                ? _value.totalScore
                : totalScore // ignore: cast_nullable_to_non_nullable
                      as int,
            riskLevel: null == riskLevel
                ? _value.riskLevel
                : riskLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            recommendation: null == recommendation
                ? _value.recommendation
                : recommendation // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            screeningTest: null == screeningTest
                ? _value.screeningTest
                : screeningTest // ignore: cast_nullable_to_non_nullable
                      as ScreeningTest,
            creator: null == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as User,
          )
          as $Val,
    );
  }

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ScreeningTestCopyWith<$Res> get screeningTest {
    return $ScreeningTestCopyWith<$Res>(_value.screeningTest, (value) {
      return _then(_value.copyWith(screeningTest: value) as $Val);
    });
  }

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScreeningResultImplCopyWith<$Res>
    implements $ScreeningResultCopyWith<$Res> {
  factory _$$ScreeningResultImplCopyWith(
    _$ScreeningResultImpl value,
    $Res Function(_$ScreeningResultImpl) then,
  ) = __$$ScreeningResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int screeningTestId,
    int studentId,
    int createdBy,
    int totalScore,
    String riskLevel,
    String recommendation,
    DateTime? createdAt,
    DateTime? updatedAt,
    ScreeningTest screeningTest,
    User creator,
  });

  @override
  $ScreeningTestCopyWith<$Res> get screeningTest;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$ScreeningResultImplCopyWithImpl<$Res>
    extends _$ScreeningResultCopyWithImpl<$Res, _$ScreeningResultImpl>
    implements _$$ScreeningResultImplCopyWith<$Res> {
  __$$ScreeningResultImplCopyWithImpl(
    _$ScreeningResultImpl _value,
    $Res Function(_$ScreeningResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? screeningTestId = null,
    Object? studentId = null,
    Object? createdBy = null,
    Object? totalScore = null,
    Object? riskLevel = null,
    Object? recommendation = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? screeningTest = null,
    Object? creator = null,
  }) {
    return _then(
      _$ScreeningResultImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        screeningTestId: null == screeningTestId
            ? _value.screeningTestId
            : screeningTestId // ignore: cast_nullable_to_non_nullable
                  as int,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int,
        totalScore: null == totalScore
            ? _value.totalScore
            : totalScore // ignore: cast_nullable_to_non_nullable
                  as int,
        riskLevel: null == riskLevel
            ? _value.riskLevel
            : riskLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        recommendation: null == recommendation
            ? _value.recommendation
            : recommendation // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        screeningTest: null == screeningTest
            ? _value.screeningTest
            : screeningTest // ignore: cast_nullable_to_non_nullable
                  as ScreeningTest,
        creator: null == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$ScreeningResultImpl implements _ScreeningResult {
  const _$ScreeningResultImpl({
    this.id = 0,
    this.screeningTestId = 0,
    this.studentId = 0,
    this.createdBy = 0,
    this.totalScore = 0,
    this.riskLevel = '',
    this.recommendation = '',
    this.createdAt,
    this.updatedAt,
    this.screeningTest = const ScreeningTest(),
    this.creator = const User(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int screeningTestId;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final int createdBy;
  @override
  @JsonKey()
  final int totalScore;
  @override
  @JsonKey()
  final String riskLevel;
  @override
  @JsonKey()
  final String recommendation;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final ScreeningTest screeningTest;
  @override
  @JsonKey()
  final User creator;

  @override
  String toString() {
    return 'ScreeningResult(id: $id, screeningTestId: $screeningTestId, studentId: $studentId, createdBy: $createdBy, totalScore: $totalScore, riskLevel: $riskLevel, recommendation: $recommendation, createdAt: $createdAt, updatedAt: $updatedAt, screeningTest: $screeningTest, creator: $creator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreeningResultImpl &&
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

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreeningResultImplCopyWith<_$ScreeningResultImpl> get copyWith =>
      __$$ScreeningResultImplCopyWithImpl<_$ScreeningResultImpl>(
        this,
        _$identity,
      );
}

abstract class _ScreeningResult implements ScreeningResult {
  const factory _ScreeningResult({
    final int id,
    final int screeningTestId,
    final int studentId,
    final int createdBy,
    final int totalScore,
    final String riskLevel,
    final String recommendation,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final ScreeningTest screeningTest,
    final User creator,
  }) = _$ScreeningResultImpl;

  @override
  int get id;
  @override
  int get screeningTestId;
  @override
  int get studentId;
  @override
  int get createdBy;
  @override
  int get totalScore;
  @override
  String get riskLevel;
  @override
  String get recommendation;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  ScreeningTest get screeningTest;
  @override
  User get creator;

  /// Create a copy of ScreeningResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreeningResultImplCopyWith<_$ScreeningResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
