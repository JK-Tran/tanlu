// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_student_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceStudentData _$AttendanceStudentDataFromJson(
  Map<String, dynamic> json,
) {
  return _AttendanceStudentData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStudentData {
  @JsonKey(name: 'studentId')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentCode')
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isExcused')
  bool? get isExcused => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkInTime')
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkOutTime')
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'leaveRequest')
  LeaveRequestData? get leaveRequest => throw _privateConstructorUsedError;

  /// Serializes this AttendanceStudentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceStudentDataCopyWith<AttendanceStudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStudentDataCopyWith<$Res> {
  factory $AttendanceStudentDataCopyWith(
    AttendanceStudentData value,
    $Res Function(AttendanceStudentData) then,
  ) = _$AttendanceStudentDataCopyWithImpl<$Res, AttendanceStudentData>;
  @useResult
  $Res call({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'isExcused') bool? isExcused,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  });

  $LeaveRequestDataCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class _$AttendanceStudentDataCopyWithImpl<
  $Res,
  $Val extends AttendanceStudentData
>
    implements $AttendanceStudentDataCopyWith<$Res> {
  _$AttendanceStudentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? isExcused = freezed,
    Object? note = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = freezed,
  }) {
    return _then(
      _value.copyWith(
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentCode: freezed == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            nickName: freezed == nickName
                ? _value.nickName
                : nickName // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            isExcused: freezed == isExcused
                ? _value.isExcused
                : isExcused // ignore: cast_nullable_to_non_nullable
                      as bool?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOutTime: freezed == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            leaveRequest: freezed == leaveRequest
                ? _value.leaveRequest
                : leaveRequest // ignore: cast_nullable_to_non_nullable
                      as LeaveRequestData?,
          )
          as $Val,
    );
  }

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveRequestDataCopyWith<$Res>? get leaveRequest {
    if (_value.leaveRequest == null) {
      return null;
    }

    return $LeaveRequestDataCopyWith<$Res>(_value.leaveRequest!, (value) {
      return _then(_value.copyWith(leaveRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceStudentDataImplCopyWith<$Res>
    implements $AttendanceStudentDataCopyWith<$Res> {
  factory _$$AttendanceStudentDataImplCopyWith(
    _$AttendanceStudentDataImpl value,
    $Res Function(_$AttendanceStudentDataImpl) then,
  ) = __$$AttendanceStudentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'isExcused') bool? isExcused,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  });

  @override
  $LeaveRequestDataCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class __$$AttendanceStudentDataImplCopyWithImpl<$Res>
    extends
        _$AttendanceStudentDataCopyWithImpl<$Res, _$AttendanceStudentDataImpl>
    implements _$$AttendanceStudentDataImplCopyWith<$Res> {
  __$$AttendanceStudentDataImplCopyWithImpl(
    _$AttendanceStudentDataImpl _value,
    $Res Function(_$AttendanceStudentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? isExcused = freezed,
    Object? note = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = freezed,
  }) {
    return _then(
      _$AttendanceStudentDataImpl(
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentCode: freezed == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        nickName: freezed == nickName
            ? _value.nickName
            : nickName // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        isExcused: freezed == isExcused
            ? _value.isExcused
            : isExcused // ignore: cast_nullable_to_non_nullable
                  as bool?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOutTime: freezed == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        leaveRequest: freezed == leaveRequest
            ? _value.leaveRequest
            : leaveRequest // ignore: cast_nullable_to_non_nullable
                  as LeaveRequestData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceStudentDataImpl extends _AttendanceStudentData {
  const _$AttendanceStudentDataImpl({
    @JsonKey(name: 'studentId') this.studentId,
    @JsonKey(name: 'studentCode') this.studentCode,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'nickName') this.nickName,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'isExcused') this.isExcused,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'checkInTime') this.checkInTime,
    @JsonKey(name: 'checkOutTime') this.checkOutTime,
    @JsonKey(name: 'leaveRequest') this.leaveRequest,
  }) : super._();

  factory _$AttendanceStudentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceStudentDataImplFromJson(json);

  @override
  @JsonKey(name: 'studentId')
  final int? studentId;
  @override
  @JsonKey(name: 'studentCode')
  final String? studentCode;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'isExcused')
  final bool? isExcused;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'checkInTime')
  final DateTime? checkInTime;
  @override
  @JsonKey(name: 'checkOutTime')
  final DateTime? checkOutTime;
  @override
  @JsonKey(name: 'leaveRequest')
  final LeaveRequestData? leaveRequest;

  @override
  String toString() {
    return 'AttendanceStudentData(studentId: $studentId, studentCode: $studentCode, fullName: $fullName, nickName: $nickName, avatarUrl: $avatarUrl, status: $status, isExcused: $isExcused, note: $note, checkInTime: $checkInTime, checkOutTime: $checkOutTime, leaveRequest: $leaveRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceStudentDataImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isExcused, isExcused) ||
                other.isExcused == isExcused) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.leaveRequest, leaveRequest) ||
                other.leaveRequest == leaveRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentId,
    studentCode,
    fullName,
    nickName,
    avatarUrl,
    status,
    isExcused,
    note,
    checkInTime,
    checkOutTime,
    leaveRequest,
  );

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceStudentDataImplCopyWith<_$AttendanceStudentDataImpl>
  get copyWith =>
      __$$AttendanceStudentDataImplCopyWithImpl<_$AttendanceStudentDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceStudentDataImplToJson(this);
  }
}

abstract class _AttendanceStudentData extends AttendanceStudentData {
  const factory _AttendanceStudentData({
    @JsonKey(name: 'studentId') final int? studentId,
    @JsonKey(name: 'studentCode') final String? studentCode,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'nickName') final String? nickName,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'isExcused') final bool? isExcused,
    @JsonKey(name: 'note') final String? note,
    @JsonKey(name: 'checkInTime') final DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') final DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') final LeaveRequestData? leaveRequest,
  }) = _$AttendanceStudentDataImpl;
  const _AttendanceStudentData._() : super._();

  factory _AttendanceStudentData.fromJson(Map<String, dynamic> json) =
      _$AttendanceStudentDataImpl.fromJson;

  @override
  @JsonKey(name: 'studentId')
  int? get studentId;
  @override
  @JsonKey(name: 'studentCode')
  String? get studentCode;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'isExcused')
  bool? get isExcused;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'checkInTime')
  DateTime? get checkInTime;
  @override
  @JsonKey(name: 'checkOutTime')
  DateTime? get checkOutTime;
  @override
  @JsonKey(name: 'leaveRequest')
  LeaveRequestData? get leaveRequest;

  /// Create a copy of AttendanceStudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceStudentDataImplCopyWith<_$AttendanceStudentDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
