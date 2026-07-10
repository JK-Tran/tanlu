// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceRecordData _$AttendanceRecordDataFromJson(Map<String, dynamic> json) {
  return _AttendanceRecordData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceRecordData {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentCode')
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkInTime')
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'checkOutTime')
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'leaveRequest')
  LeaveRequestData? get leaveRequest => throw _privateConstructorUsedError;

  /// Serializes this AttendanceRecordData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceRecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceRecordDataCopyWith<AttendanceRecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceRecordDataCopyWith<$Res> {
  factory $AttendanceRecordDataCopyWith(
    AttendanceRecordData value,
    $Res Function(AttendanceRecordData) then,
  ) = _$AttendanceRecordDataCopyWithImpl<$Res, AttendanceRecordData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  });

  $LeaveRequestDataCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class _$AttendanceRecordDataCopyWithImpl<
  $Res,
  $Val extends AttendanceRecordData
>
    implements $AttendanceRecordDataCopyWith<$Res> {
  _$AttendanceRecordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceRecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
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

  /// Create a copy of AttendanceRecordData
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
abstract class _$$AttendanceRecordDataImplCopyWith<$Res>
    implements $AttendanceRecordDataCopyWith<$Res> {
  factory _$$AttendanceRecordDataImplCopyWith(
    _$AttendanceRecordDataImpl value,
    $Res Function(_$AttendanceRecordDataImpl) then,
  ) = __$$AttendanceRecordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  });

  @override
  $LeaveRequestDataCopyWith<$Res>? get leaveRequest;
}

/// @nodoc
class __$$AttendanceRecordDataImplCopyWithImpl<$Res>
    extends _$AttendanceRecordDataCopyWithImpl<$Res, _$AttendanceRecordDataImpl>
    implements _$$AttendanceRecordDataImplCopyWith<$Res> {
  __$$AttendanceRecordDataImplCopyWithImpl(
    _$AttendanceRecordDataImpl _value,
    $Res Function(_$AttendanceRecordDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceRecordData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? leaveRequest = freezed,
  }) {
    return _then(
      _$AttendanceRecordDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$AttendanceRecordDataImpl extends _AttendanceRecordData {
  const _$AttendanceRecordDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'studentId') this.studentId,
    @JsonKey(name: 'studentCode') this.studentCode,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'checkInTime') this.checkInTime,
    @JsonKey(name: 'checkOutTime') this.checkOutTime,
    @JsonKey(name: 'leaveRequest') this.leaveRequest,
  }) : super._();

  factory _$AttendanceRecordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceRecordDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
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
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'status')
  final String? status;
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
    return 'AttendanceRecordData(id: $id, studentId: $studentId, studentCode: $studentCode, fullName: $fullName, avatarUrl: $avatarUrl, status: $status, note: $note, checkInTime: $checkInTime, checkOutTime: $checkOutTime, leaveRequest: $leaveRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceRecordDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AttendanceRecordData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceRecordDataImplCopyWith<_$AttendanceRecordDataImpl>
  get copyWith =>
      __$$AttendanceRecordDataImplCopyWithImpl<_$AttendanceRecordDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceRecordDataImplToJson(this);
  }
}

abstract class _AttendanceRecordData extends AttendanceRecordData {
  const factory _AttendanceRecordData({
    @JsonKey(name: 'id') final String? id,
    @JsonKey(name: 'studentId') final int? studentId,
    @JsonKey(name: 'studentCode') final String? studentCode,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'note') final String? note,
    @JsonKey(name: 'checkInTime') final DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') final DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') final LeaveRequestData? leaveRequest,
  }) = _$AttendanceRecordDataImpl;
  const _AttendanceRecordData._() : super._();

  factory _AttendanceRecordData.fromJson(Map<String, dynamic> json) =
      _$AttendanceRecordDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
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
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'status')
  String? get status;
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

  /// Create a copy of AttendanceRecordData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceRecordDataImplCopyWith<_$AttendanceRecordDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
