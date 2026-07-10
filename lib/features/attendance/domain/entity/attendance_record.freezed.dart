// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceRecord {
  String get id => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  String get studentCode => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  LeaveRequest get leaveRequest => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceRecordCopyWith<AttendanceRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordCopyWith<$Res> {
  factory $AttendanceRecordCopyWith(
    AttendanceRecord value,
    $Res Function(AttendanceRecord) then,
  ) = _$AttendanceRecordCopyWithImpl<$Res, AttendanceRecord>;
  @useResult
  $Res call({
    String id,
    int studentId,
    String studentCode,
    String fullName,
    String avatarUrl,
    String status,
    String note,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    LeaveRequest leaveRequest,
  });

  $LeaveRequestCopyWith<$Res> get leaveRequest;
}

/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res, $Val extends AttendanceRecord>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentCode = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? status = null,
    Object? note = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            studentCode: null == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOutTime: freezed == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            leaveRequest: null == leaveRequest
                ? _value.leaveRequest
                : leaveRequest // ignore: cast_nullable_to_non_nullable
                      as LeaveRequest,
          )
          as $Val,
    );
  }

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveRequestCopyWith<$Res> get leaveRequest {
    return $LeaveRequestCopyWith<$Res>(_value.leaveRequest, (value) {
      return _then(_value.copyWith(leaveRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceRecordImplCopyWith<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  factory _$$AttendanceRecordImplCopyWith(
    _$AttendanceRecordImpl value,
    $Res Function(_$AttendanceRecordImpl) then,
  ) = __$$AttendanceRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int studentId,
    String studentCode,
    String fullName,
    String avatarUrl,
    String status,
    String note,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    LeaveRequest leaveRequest,
  });

  @override
  $LeaveRequestCopyWith<$Res> get leaveRequest;
}

/// @nodoc
class __$$AttendanceRecordImplCopyWithImpl<$Res>
    extends _$AttendanceRecordCopyWithImpl<$Res, _$AttendanceRecordImpl>
    implements _$$AttendanceRecordImplCopyWith<$Res> {
  __$$AttendanceRecordImplCopyWithImpl(
    _$AttendanceRecordImpl _value,
    $Res Function(_$AttendanceRecordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? studentCode = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? status = null,
    Object? note = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = null,
  }) {
    return _then(
      _$AttendanceRecordImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        studentCode: null == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOutTime: freezed == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        leaveRequest: null == leaveRequest
            ? _value.leaveRequest
            : leaveRequest // ignore: cast_nullable_to_non_nullable
                  as LeaveRequest,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceRecordImpl implements _AttendanceRecord {
  const _$AttendanceRecordImpl({
    this.id = '',
    this.studentId = 0,
    this.studentCode = '',
    this.fullName = '',
    this.avatarUrl = '',
    this.status = '',
    this.note = '',
    this.checkInTime,
    this.checkOutTime,
    this.leaveRequest = const LeaveRequest(),
  });

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final String studentCode;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String avatarUrl;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String note;
  @override
  final DateTime? checkInTime;
  @override
  final DateTime? checkOutTime;
  @override
  @JsonKey()
  final LeaveRequest leaveRequest;

  @override
  String toString() {
    return 'AttendanceRecord(id: $id, studentId: $studentId, studentCode: $studentCode, fullName: $fullName, avatarUrl: $avatarUrl, status: $status, note: $note, checkInTime: $checkInTime, checkOutTime: $checkOutTime, leaveRequest: $leaveRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceRecordImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.leaveRequest, leaveRequest) ||
                other.leaveRequest == leaveRequest));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    studentCode,
    fullName,
    avatarUrl,
    status,
    note,
    checkInTime,
    checkOutTime,
    leaveRequest,
  );

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceRecordImplCopyWith<_$AttendanceRecordImpl> get copyWith =>
      __$$AttendanceRecordImplCopyWithImpl<_$AttendanceRecordImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceRecord implements AttendanceRecord {
  const factory _AttendanceRecord({
    final String id,
    final int studentId,
    final String studentCode,
    final String fullName,
    final String avatarUrl,
    final String status,
    final String note,
    final DateTime? checkInTime,
    final DateTime? checkOutTime,
    final LeaveRequest leaveRequest,
  }) = _$AttendanceRecordImpl;

  @override
  String get id;
  @override
  int get studentId;
  @override
  String get studentCode;
  @override
  String get fullName;
  @override
  String get avatarUrl;
  @override
  String get status;
  @override
  String get note;
  @override
  DateTime? get checkInTime;
  @override
  DateTime? get checkOutTime;
  @override
  LeaveRequest get leaveRequest;

  /// Create a copy of AttendanceRecord
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceRecordImplCopyWith<_$AttendanceRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
