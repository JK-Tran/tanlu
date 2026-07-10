// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentAttendanceData _$StudentAttendanceDataFromJson(
  Map<String, dynamic> json,
) {
  return _StudentAttendanceData.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendanceData {
  @JsonKey(name: 'studentId')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkInTime')
  String? get checkInTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this StudentAttendanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttendanceDataCopyWith<StudentAttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceDataCopyWith<$Res> {
  factory $StudentAttendanceDataCopyWith(
    StudentAttendanceData value,
    $Res Function(StudentAttendanceData) then,
  ) = _$StudentAttendanceDataCopyWithImpl<$Res, StudentAttendanceData>;
  @useResult
  $Res call({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'checkInTime') String? checkInTime,
    @JsonKey(name: 'note') String? note,
  });
}

/// @nodoc
class _$StudentAttendanceDataCopyWithImpl<
  $Res,
  $Val extends StudentAttendanceData
>
    implements $StudentAttendanceDataCopyWith<$Res> {
  _$StudentAttendanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? status = freezed,
    Object? checkInTime = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentAttendanceDataImplCopyWith<$Res>
    implements $StudentAttendanceDataCopyWith<$Res> {
  factory _$$StudentAttendanceDataImplCopyWith(
    _$StudentAttendanceDataImpl value,
    $Res Function(_$StudentAttendanceDataImpl) then,
  ) = __$$StudentAttendanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'checkInTime') String? checkInTime,
    @JsonKey(name: 'note') String? note,
  });
}

/// @nodoc
class __$$StudentAttendanceDataImplCopyWithImpl<$Res>
    extends
        _$StudentAttendanceDataCopyWithImpl<$Res, _$StudentAttendanceDataImpl>
    implements _$$StudentAttendanceDataImplCopyWith<$Res> {
  __$$StudentAttendanceDataImplCopyWithImpl(
    _$StudentAttendanceDataImpl _value,
    $Res Function(_$StudentAttendanceDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? status = freezed,
    Object? checkInTime = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$StudentAttendanceDataImpl(
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAttendanceDataImpl extends _StudentAttendanceData {
  const _$StudentAttendanceDataImpl({
    @JsonKey(name: 'studentId') this.studentId,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'checkInTime') this.checkInTime,
    @JsonKey(name: 'note') this.note,
  }) : super._();

  factory _$StudentAttendanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAttendanceDataImplFromJson(json);

  @override
  @JsonKey(name: 'studentId')
  final int? studentId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'checkInTime')
  final String? checkInTime;
  @override
  @JsonKey(name: 'note')
  final String? note;

  @override
  String toString() {
    return 'StudentAttendanceData(studentId: $studentId, status: $status, checkInTime: $checkInTime, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttendanceDataImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, studentId, status, checkInTime, note);

  /// Create a copy of StudentAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttendanceDataImplCopyWith<_$StudentAttendanceDataImpl>
  get copyWith =>
      __$$StudentAttendanceDataImplCopyWithImpl<_$StudentAttendanceDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAttendanceDataImplToJson(this);
  }
}

abstract class _StudentAttendanceData extends StudentAttendanceData {
  const factory _StudentAttendanceData({
    @JsonKey(name: 'studentId') final int? studentId,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'checkInTime') final String? checkInTime,
    @JsonKey(name: 'note') final String? note,
  }) = _$StudentAttendanceDataImpl;
  const _StudentAttendanceData._() : super._();

  factory _StudentAttendanceData.fromJson(Map<String, dynamic> json) =
      _$StudentAttendanceDataImpl.fromJson;

  @override
  @JsonKey(name: 'studentId')
  int? get studentId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'checkInTime')
  String? get checkInTime;
  @override
  @JsonKey(name: 'note')
  String? get note;

  /// Create a copy of StudentAttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttendanceDataImplCopyWith<_$StudentAttendanceDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
