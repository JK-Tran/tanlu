// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'development_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DevelopmentResult {
  int get id => throw _privateConstructorUsedError;
  int get developmentAssessmentId => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  int get estimatedDevelopmentAgeMonth => throw _privateConstructorUsedError;
  String get strengths => throw _privateConstructorUsedError;
  String get weaknesses => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DevelopmentAssessment get developmentAssessment =>
      throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevelopmentResultCopyWith<DevelopmentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentResultCopyWith<$Res> {
  factory $DevelopmentResultCopyWith(
    DevelopmentResult value,
    $Res Function(DevelopmentResult) then,
  ) = _$DevelopmentResultCopyWithImpl<$Res, DevelopmentResult>;
  @useResult
  $Res call({
    int id,
    int developmentAssessmentId,
    int studentId,
    int createdBy,
    int estimatedDevelopmentAgeMonth,
    String strengths,
    String weaknesses,
    DateTime? createdAt,
    DateTime? updatedAt,
    DevelopmentAssessment developmentAssessment,
    User creator,
  });

  $DevelopmentAssessmentCopyWith<$Res> get developmentAssessment;
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$DevelopmentResultCopyWithImpl<$Res, $Val extends DevelopmentResult>
    implements $DevelopmentResultCopyWith<$Res> {
  _$DevelopmentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? developmentAssessmentId = null,
    Object? studentId = null,
    Object? createdBy = null,
    Object? estimatedDevelopmentAgeMonth = null,
    Object? strengths = null,
    Object? weaknesses = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? developmentAssessment = null,
    Object? creator = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            developmentAssessmentId: null == developmentAssessmentId
                ? _value.developmentAssessmentId
                : developmentAssessmentId // ignore: cast_nullable_to_non_nullable
                      as int,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int,
            estimatedDevelopmentAgeMonth: null == estimatedDevelopmentAgeMonth
                ? _value.estimatedDevelopmentAgeMonth
                : estimatedDevelopmentAgeMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            strengths: null == strengths
                ? _value.strengths
                : strengths // ignore: cast_nullable_to_non_nullable
                      as String,
            weaknesses: null == weaknesses
                ? _value.weaknesses
                : weaknesses // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            developmentAssessment: null == developmentAssessment
                ? _value.developmentAssessment
                : developmentAssessment // ignore: cast_nullable_to_non_nullable
                      as DevelopmentAssessment,
            creator: null == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as User,
          )
          as $Val,
    );
  }

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DevelopmentAssessmentCopyWith<$Res> get developmentAssessment {
    return $DevelopmentAssessmentCopyWith<$Res>(_value.developmentAssessment, (
      value,
    ) {
      return _then(_value.copyWith(developmentAssessment: value) as $Val);
    });
  }

  /// Create a copy of DevelopmentResult
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
abstract class _$$DevelopmentResultImplCopyWith<$Res>
    implements $DevelopmentResultCopyWith<$Res> {
  factory _$$DevelopmentResultImplCopyWith(
    _$DevelopmentResultImpl value,
    $Res Function(_$DevelopmentResultImpl) then,
  ) = __$$DevelopmentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int developmentAssessmentId,
    int studentId,
    int createdBy,
    int estimatedDevelopmentAgeMonth,
    String strengths,
    String weaknesses,
    DateTime? createdAt,
    DateTime? updatedAt,
    DevelopmentAssessment developmentAssessment,
    User creator,
  });

  @override
  $DevelopmentAssessmentCopyWith<$Res> get developmentAssessment;
  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$DevelopmentResultImplCopyWithImpl<$Res>
    extends _$DevelopmentResultCopyWithImpl<$Res, _$DevelopmentResultImpl>
    implements _$$DevelopmentResultImplCopyWith<$Res> {
  __$$DevelopmentResultImplCopyWithImpl(
    _$DevelopmentResultImpl _value,
    $Res Function(_$DevelopmentResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? developmentAssessmentId = null,
    Object? studentId = null,
    Object? createdBy = null,
    Object? estimatedDevelopmentAgeMonth = null,
    Object? strengths = null,
    Object? weaknesses = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? developmentAssessment = null,
    Object? creator = null,
  }) {
    return _then(
      _$DevelopmentResultImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        developmentAssessmentId: null == developmentAssessmentId
            ? _value.developmentAssessmentId
            : developmentAssessmentId // ignore: cast_nullable_to_non_nullable
                  as int,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int,
        estimatedDevelopmentAgeMonth: null == estimatedDevelopmentAgeMonth
            ? _value.estimatedDevelopmentAgeMonth
            : estimatedDevelopmentAgeMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        strengths: null == strengths
            ? _value.strengths
            : strengths // ignore: cast_nullable_to_non_nullable
                  as String,
        weaknesses: null == weaknesses
            ? _value.weaknesses
            : weaknesses // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        developmentAssessment: null == developmentAssessment
            ? _value.developmentAssessment
            : developmentAssessment // ignore: cast_nullable_to_non_nullable
                  as DevelopmentAssessment,
        creator: null == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$DevelopmentResultImpl implements _DevelopmentResult {
  const _$DevelopmentResultImpl({
    this.id = 0,
    this.developmentAssessmentId = 0,
    this.studentId = 0,
    this.createdBy = 0,
    this.estimatedDevelopmentAgeMonth = 0,
    this.strengths = '',
    this.weaknesses = '',
    this.createdAt,
    this.updatedAt,
    this.developmentAssessment = const DevelopmentAssessment(),
    this.creator = const User(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int developmentAssessmentId;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final int createdBy;
  @override
  @JsonKey()
  final int estimatedDevelopmentAgeMonth;
  @override
  @JsonKey()
  final String strengths;
  @override
  @JsonKey()
  final String weaknesses;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final DevelopmentAssessment developmentAssessment;
  @override
  @JsonKey()
  final User creator;

  @override
  String toString() {
    return 'DevelopmentResult(id: $id, developmentAssessmentId: $developmentAssessmentId, studentId: $studentId, createdBy: $createdBy, estimatedDevelopmentAgeMonth: $estimatedDevelopmentAgeMonth, strengths: $strengths, weaknesses: $weaknesses, createdAt: $createdAt, updatedAt: $updatedAt, developmentAssessment: $developmentAssessment, creator: $creator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevelopmentResultImpl &&
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

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevelopmentResultImplCopyWith<_$DevelopmentResultImpl> get copyWith =>
      __$$DevelopmentResultImplCopyWithImpl<_$DevelopmentResultImpl>(
        this,
        _$identity,
      );
}

abstract class _DevelopmentResult implements DevelopmentResult {
  const factory _DevelopmentResult({
    final int id,
    final int developmentAssessmentId,
    final int studentId,
    final int createdBy,
    final int estimatedDevelopmentAgeMonth,
    final String strengths,
    final String weaknesses,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final DevelopmentAssessment developmentAssessment,
    final User creator,
  }) = _$DevelopmentResultImpl;

  @override
  int get id;
  @override
  int get developmentAssessmentId;
  @override
  int get studentId;
  @override
  int get createdBy;
  @override
  int get estimatedDevelopmentAgeMonth;
  @override
  String get strengths;
  @override
  String get weaknesses;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DevelopmentAssessment get developmentAssessment;
  @override
  User get creator;

  /// Create a copy of DevelopmentResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevelopmentResultImplCopyWith<_$DevelopmentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
