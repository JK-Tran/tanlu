// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LeaveRequestData _$LeaveRequestDataFromJson(Map<String, dynamic> json) {
  return _LeaveRequestData.fromJson(json);
}

/// @nodoc
mixin _$LeaveRequestData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentId')
  String? get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentName')
  String? get studentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentId')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderName')
  String? get senderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderAvatarUrl')
  String? get senderAvatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentAvatarUrl')
  String? get studentAvatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'submittedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewedBy')
  String? get reviewedBy => throw _privateConstructorUsedError;

  /// Serializes this LeaveRequestData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestDataCopyWith<LeaveRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestDataCopyWith<$Res> {
  factory $LeaveRequestDataCopyWith(
    LeaveRequestData value,
    $Res Function(LeaveRequestData) then,
  ) = _$LeaveRequestDataCopyWithImpl<$Res, LeaveRequestData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'senderName') String? senderName,
    @JsonKey(name: 'senderAvatarUrl') String? senderAvatarUrl,
    @JsonKey(name: 'studentAvatarUrl') String? studentAvatarUrl,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'submittedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? submittedAt,
    @JsonKey(name: 'reviewedBy') String? reviewedBy,
  });
}

/// @nodoc
class _$LeaveRequestDataCopyWithImpl<$Res, $Val extends LeaveRequestData>
    implements $LeaveRequestDataCopyWith<$Res> {
  _$LeaveRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? studentName = freezed,
    Object? classId = freezed,
    Object? parentId = freezed,
    Object? senderName = freezed,
    Object? senderAvatarUrl = freezed,
    Object? studentAvatarUrl = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? submittedAt = freezed,
    Object? reviewedBy = freezed,
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
            studentName: freezed == studentName
                ? _value.studentName
                : studentName // ignore: cast_nullable_to_non_nullable
                      as String?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
            senderName: freezed == senderName
                ? _value.senderName
                : senderName // ignore: cast_nullable_to_non_nullable
                      as String?,
            senderAvatarUrl: freezed == senderAvatarUrl
                ? _value.senderAvatarUrl
                : senderAvatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            studentAvatarUrl: freezed == studentAvatarUrl
                ? _value.studentAvatarUrl
                : studentAvatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            reviewedBy: freezed == reviewedBy
                ? _value.reviewedBy
                : reviewedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaveRequestDataImplCopyWith<$Res>
    implements $LeaveRequestDataCopyWith<$Res> {
  factory _$$LeaveRequestDataImplCopyWith(
    _$LeaveRequestDataImpl value,
    $Res Function(_$LeaveRequestDataImpl) then,
  ) = __$$LeaveRequestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'senderName') String? senderName,
    @JsonKey(name: 'senderAvatarUrl') String? senderAvatarUrl,
    @JsonKey(name: 'studentAvatarUrl') String? studentAvatarUrl,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'submittedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? submittedAt,
    @JsonKey(name: 'reviewedBy') String? reviewedBy,
  });
}

/// @nodoc
class __$$LeaveRequestDataImplCopyWithImpl<$Res>
    extends _$LeaveRequestDataCopyWithImpl<$Res, _$LeaveRequestDataImpl>
    implements _$$LeaveRequestDataImplCopyWith<$Res> {
  __$$LeaveRequestDataImplCopyWithImpl(
    _$LeaveRequestDataImpl _value,
    $Res Function(_$LeaveRequestDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? studentName = freezed,
    Object? classId = freezed,
    Object? parentId = freezed,
    Object? senderName = freezed,
    Object? senderAvatarUrl = freezed,
    Object? studentAvatarUrl = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? submittedAt = freezed,
    Object? reviewedBy = freezed,
  }) {
    return _then(
      _$LeaveRequestDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentName: freezed == studentName
            ? _value.studentName
            : studentName // ignore: cast_nullable_to_non_nullable
                  as String?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderName: freezed == senderName
            ? _value.senderName
            : senderName // ignore: cast_nullable_to_non_nullable
                  as String?,
        senderAvatarUrl: freezed == senderAvatarUrl
            ? _value.senderAvatarUrl
            : senderAvatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentAvatarUrl: freezed == studentAvatarUrl
            ? _value.studentAvatarUrl
            : studentAvatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        reviewedBy: freezed == reviewedBy
            ? _value.reviewedBy
            : reviewedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestDataImpl implements _LeaveRequestData {
  const _$LeaveRequestDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'studentId') this.studentId,
    @JsonKey(name: 'studentName') this.studentName,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'parentId') this.parentId,
    @JsonKey(name: 'senderName') this.senderName,
    @JsonKey(name: 'senderAvatarUrl') this.senderAvatarUrl,
    @JsonKey(name: 'studentAvatarUrl') this.studentAvatarUrl,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) this.date,
    @JsonKey(name: 'reason') this.reason,
    @JsonKey(name: 'status') this.status,
    @JsonKey(
      name: 'submittedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.submittedAt,
    @JsonKey(name: 'reviewedBy') this.reviewedBy,
  });

  factory _$LeaveRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'studentId')
  final String? studentId;
  @override
  @JsonKey(name: 'studentName')
  final String? studentName;
  @override
  @JsonKey(name: 'classId')
  final String? classId;
  @override
  @JsonKey(name: 'parentId')
  final String? parentId;
  @override
  @JsonKey(name: 'senderName')
  final String? senderName;
  @override
  @JsonKey(name: 'senderAvatarUrl')
  final String? senderAvatarUrl;
  @override
  @JsonKey(name: 'studentAvatarUrl')
  final String? studentAvatarUrl;
  @override
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  final String? date;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(
    name: 'submittedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? submittedAt;
  @override
  @JsonKey(name: 'reviewedBy')
  final String? reviewedBy;

  @override
  String toString() {
    return 'LeaveRequestData(id: $id, studentId: $studentId, studentName: $studentName, classId: $classId, parentId: $parentId, senderName: $senderName, senderAvatarUrl: $senderAvatarUrl, studentAvatarUrl: $studentAvatarUrl, date: $date, reason: $reason, status: $status, submittedAt: $submittedAt, reviewedBy: $reviewedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderAvatarUrl, senderAvatarUrl) ||
                other.senderAvatarUrl == senderAvatarUrl) &&
            (identical(other.studentAvatarUrl, studentAvatarUrl) ||
                other.studentAvatarUrl == studentAvatarUrl) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    studentName,
    classId,
    parentId,
    senderName,
    senderAvatarUrl,
    studentAvatarUrl,
    date,
    reason,
    status,
    submittedAt,
    reviewedBy,
  );

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestDataImplCopyWith<_$LeaveRequestDataImpl> get copyWith =>
      __$$LeaveRequestDataImplCopyWithImpl<_$LeaveRequestDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaveRequestDataImplToJson(this);
  }
}

abstract class _LeaveRequestData implements LeaveRequestData {
  const factory _LeaveRequestData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'studentId') final String? studentId,
    @JsonKey(name: 'studentName') final String? studentName,
    @JsonKey(name: 'classId') final String? classId,
    @JsonKey(name: 'parentId') final String? parentId,
    @JsonKey(name: 'senderName') final String? senderName,
    @JsonKey(name: 'senderAvatarUrl') final String? senderAvatarUrl,
    @JsonKey(name: 'studentAvatarUrl') final String? studentAvatarUrl,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
    final String? date,
    @JsonKey(name: 'reason') final String? reason,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(
      name: 'submittedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? submittedAt,
    @JsonKey(name: 'reviewedBy') final String? reviewedBy,
  }) = _$LeaveRequestDataImpl;

  factory _LeaveRequestData.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'studentId')
  String? get studentId;
  @override
  @JsonKey(name: 'studentName')
  String? get studentName;
  @override
  @JsonKey(name: 'classId')
  String? get classId;
  @override
  @JsonKey(name: 'parentId')
  String? get parentId;
  @override
  @JsonKey(name: 'senderName')
  String? get senderName;
  @override
  @JsonKey(name: 'senderAvatarUrl')
  String? get senderAvatarUrl;
  @override
  @JsonKey(name: 'studentAvatarUrl')
  String? get studentAvatarUrl;
  @override
  @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
  String? get date;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(
    name: 'submittedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get submittedAt;
  @override
  @JsonKey(name: 'reviewedBy')
  String? get reviewedBy;

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestDataImplCopyWith<_$LeaveRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
