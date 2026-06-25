// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceData _$AttendanceDataFromJson(Map<String, dynamic> json) {
  return _AttendanceData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'checkInTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'checkOutTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'recordedBy')
  String? get recordedBy => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AttendanceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceDataCopyWith<AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDataCopyWith<$Res> {
  factory $AttendanceDataCopyWith(
    AttendanceData value,
    $Res Function(AttendanceData) then,
  ) = _$AttendanceDataCopyWithImpl<$Res, AttendanceData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'checkInTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkInTime,
    @JsonKey(
      name: 'checkOutTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkOutTime,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'recordedBy') String? recordedBy,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res, $Val extends AttendanceData>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? classId = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? note = freezed,
    Object? recordedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
                      as String?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOutTime: freezed == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            recordedBy: freezed == recordedBy
                ? _value.recordedBy
                : recordedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceDataImplCopyWith<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  factory _$$AttendanceDataImplCopyWith(
    _$AttendanceDataImpl value,
    $Res Function(_$AttendanceDataImpl) then,
  ) = __$$AttendanceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'checkInTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkInTime,
    @JsonKey(
      name: 'checkOutTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkOutTime,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'recordedBy') String? recordedBy,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$AttendanceDataImplCopyWithImpl<$Res>
    extends _$AttendanceDataCopyWithImpl<$Res, _$AttendanceDataImpl>
    implements _$$AttendanceDataImplCopyWith<$Res> {
  __$$AttendanceDataImplCopyWithImpl(
    _$AttendanceDataImpl _value,
    $Res Function(_$AttendanceDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? classId = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? note = freezed,
    Object? recordedBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AttendanceDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOutTime: freezed == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        recordedBy: freezed == recordedBy
            ? _value.recordedBy
            : recordedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceDataImpl implements _AttendanceData {
  const _$AttendanceDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'studentId') this.studentId,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) this.date,
    @JsonKey(name: 'status') this.status,
    @JsonKey(
      name: 'checkInTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.checkInTime,
    @JsonKey(
      name: 'checkOutTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.checkOutTime,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'recordedBy') this.recordedBy,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.updatedAt,
  });

  factory _$AttendanceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'studentId')
  final String? studentId;
  @override
  @JsonKey(name: 'classId')
  final String? classId;
  @override
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  final String? date;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(
    name: 'checkInTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? checkInTime;
  @override
  @JsonKey(
    name: 'checkOutTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? checkOutTime;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'recordedBy')
  final String? recordedBy;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AttendanceData(id: $id, studentId: $studentId, classId: $classId, date: $date, status: $status, checkInTime: $checkInTime, checkOutTime: $checkOutTime, note: $note, recordedBy: $recordedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.recordedBy, recordedBy) ||
                other.recordedBy == recordedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    classId,
    date,
    status,
    checkInTime,
    checkOutTime,
    note,
    recordedBy,
    createdAt,
    updatedAt,
  );

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceDataImplCopyWith<_$AttendanceDataImpl> get copyWith =>
      __$$AttendanceDataImplCopyWithImpl<_$AttendanceDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceDataImplToJson(this);
  }
}

abstract class _AttendanceData implements AttendanceData {
  const factory _AttendanceData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'studentId') final String? studentId,
    @JsonKey(name: 'classId') final String? classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
    final String? date,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(
      name: 'checkInTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? checkInTime,
    @JsonKey(
      name: 'checkOutTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? checkOutTime,
    @JsonKey(name: 'note') final String? note,
    @JsonKey(name: 'recordedBy') final String? recordedBy,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? updatedAt,
  }) = _$AttendanceDataImpl;

  factory _AttendanceData.fromJson(Map<String, dynamic> json) =
      _$AttendanceDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'studentId')
  String? get studentId;
  @override
  @JsonKey(name: 'classId')
  String? get classId;
  @override
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  String? get date;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(
    name: 'checkInTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get checkInTime;
  @override
  @JsonKey(
    name: 'checkOutTime',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get checkOutTime;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'recordedBy')
  String? get recordedBy;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt;

  /// Create a copy of AttendanceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceDataImplCopyWith<_$AttendanceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
