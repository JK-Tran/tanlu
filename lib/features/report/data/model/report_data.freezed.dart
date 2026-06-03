// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportData _$ReportDataFromJson(Map<String, dynamic> json) {
  return _ReportData.fromJson(json);
}

/// @nodoc
mixin _$ReportData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get studentId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get reportMonth => throw _privateConstructorUsedError;
  @JsonKey()
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey()
  int? get approvedBy => throw _privateConstructorUsedError;
  @JsonKey()
  String? get title => throw _privateConstructorUsedError;
  @JsonKey()
  String? get teacherComment => throw _privateConstructorUsedError;
  @JsonKey()
  String? get status => throw _privateConstructorUsedError;
  @JsonKey()
  String? get sentAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey()
  StudentData? get student => throw _privateConstructorUsedError;
  @JsonKey()
  CreatorData? get creator => throw _privateConstructorUsedError;
  @JsonKey()
  int? get approver => throw _privateConstructorUsedError;
  @JsonKey()
  List<FileData>? get files => throw _privateConstructorUsedError;

  /// Serializes this ReportData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportDataCopyWith<ReportData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDataCopyWith<$Res> {
  factory $ReportDataCopyWith(
    ReportData value,
    $Res Function(ReportData) then,
  ) = _$ReportDataCopyWithImpl<$Res, ReportData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() String? reportMonth,
    @JsonKey() int? createdBy,
    @JsonKey() int? approvedBy,
    @JsonKey() String? title,
    @JsonKey() String? teacherComment,
    @JsonKey() String? status,
    @JsonKey() String? sentAt,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() StudentData? student,
    @JsonKey() CreatorData? creator,
    @JsonKey() int? approver,
    @JsonKey() List<FileData>? files,
  });

  $StudentDataCopyWith<$Res>? get student;
  $CreatorDataCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ReportDataCopyWithImpl<$Res, $Val extends ReportData>
    implements $ReportDataCopyWith<$Res> {
  _$ReportDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? reportMonth = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? title = freezed,
    Object? teacherComment = freezed,
    Object? status = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? student = freezed,
    Object? creator = freezed,
    Object? approver = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentId: freezed == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            reportMonth: freezed == reportMonth
                ? _value.reportMonth
                : reportMonth // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            approvedBy: freezed == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            teacherComment: freezed == teacherComment
                ? _value.teacherComment
                : teacherComment // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            sentAt: freezed == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            student: freezed == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as StudentData?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as CreatorData?,
            approver: freezed == approver
                ? _value.approver
                : approver // ignore: cast_nullable_to_non_nullable
                      as int?,
            files: freezed == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<FileData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentDataCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentDataCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatorDataCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $CreatorDataCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportDataImplCopyWith<$Res>
    implements $ReportDataCopyWith<$Res> {
  factory _$$ReportDataImplCopyWith(
    _$ReportDataImpl value,
    $Res Function(_$ReportDataImpl) then,
  ) = __$$ReportDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? studentId,
    @JsonKey() String? reportMonth,
    @JsonKey() int? createdBy,
    @JsonKey() int? approvedBy,
    @JsonKey() String? title,
    @JsonKey() String? teacherComment,
    @JsonKey() String? status,
    @JsonKey() String? sentAt,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() StudentData? student,
    @JsonKey() CreatorData? creator,
    @JsonKey() int? approver,
    @JsonKey() List<FileData>? files,
  });

  @override
  $StudentDataCopyWith<$Res>? get student;
  @override
  $CreatorDataCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$ReportDataImplCopyWithImpl<$Res>
    extends _$ReportDataCopyWithImpl<$Res, _$ReportDataImpl>
    implements _$$ReportDataImplCopyWith<$Res> {
  __$$ReportDataImplCopyWithImpl(
    _$ReportDataImpl _value,
    $Res Function(_$ReportDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? studentId = freezed,
    Object? reportMonth = freezed,
    Object? createdBy = freezed,
    Object? approvedBy = freezed,
    Object? title = freezed,
    Object? teacherComment = freezed,
    Object? status = freezed,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? student = freezed,
    Object? creator = freezed,
    Object? approver = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _$ReportDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentId: freezed == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        reportMonth: freezed == reportMonth
            ? _value.reportMonth
            : reportMonth // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        approvedBy: freezed == approvedBy
            ? _value.approvedBy
            : approvedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        teacherComment: freezed == teacherComment
            ? _value.teacherComment
            : teacherComment // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        sentAt: freezed == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        student: freezed == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as StudentData?,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as CreatorData?,
        approver: freezed == approver
            ? _value.approver
            : approver // ignore: cast_nullable_to_non_nullable
                  as int?,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<FileData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportDataImpl extends _ReportData {
  const _$ReportDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.studentId,
    @JsonKey() this.reportMonth,
    @JsonKey() this.createdBy,
    @JsonKey() this.approvedBy,
    @JsonKey() this.title,
    @JsonKey() this.teacherComment,
    @JsonKey() this.status,
    @JsonKey() this.sentAt,
    @JsonKey() this.createdAt,
    @JsonKey() this.updatedAt,
    @JsonKey() this.student,
    @JsonKey() this.creator,
    @JsonKey() this.approver,
    @JsonKey() final List<FileData>? files,
  }) : _files = files,
       super._();

  factory _$ReportDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? studentId;
  @override
  @JsonKey()
  final String? reportMonth;
  @override
  @JsonKey()
  final int? createdBy;
  @override
  @JsonKey()
  final int? approvedBy;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? teacherComment;
  @override
  @JsonKey()
  final String? status;
  @override
  @JsonKey()
  final String? sentAt;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final String? updatedAt;
  @override
  @JsonKey()
  final StudentData? student;
  @override
  @JsonKey()
  final CreatorData? creator;
  @override
  @JsonKey()
  final int? approver;
  final List<FileData>? _files;
  @override
  @JsonKey()
  List<FileData>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportData(id: $id, studentId: $studentId, reportMonth: $reportMonth, createdBy: $createdBy, approvedBy: $approvedBy, title: $title, teacherComment: $teacherComment, status: $status, sentAt: $sentAt, createdAt: $createdAt, updatedAt: $updatedAt, student: $student, creator: $creator, approver: $approver, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.reportMonth, reportMonth) ||
                other.reportMonth == reportMonth) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.approvedBy, approvedBy) ||
                other.approvedBy == approvedBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.teacherComment, teacherComment) ||
                other.teacherComment == teacherComment) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.approver, approver) ||
                other.approver == approver) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    studentId,
    reportMonth,
    createdBy,
    approvedBy,
    title,
    teacherComment,
    status,
    sentAt,
    createdAt,
    updatedAt,
    student,
    creator,
    approver,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportDataImplCopyWith<_$ReportDataImpl> get copyWith =>
      __$$ReportDataImplCopyWithImpl<_$ReportDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportDataImplToJson(this);
  }
}

abstract class _ReportData extends ReportData {
  const factory _ReportData({
    @JsonKey() final int? id,
    @JsonKey() final int? studentId,
    @JsonKey() final String? reportMonth,
    @JsonKey() final int? createdBy,
    @JsonKey() final int? approvedBy,
    @JsonKey() final String? title,
    @JsonKey() final String? teacherComment,
    @JsonKey() final String? status,
    @JsonKey() final String? sentAt,
    @JsonKey() final String? createdAt,
    @JsonKey() final String? updatedAt,
    @JsonKey() final StudentData? student,
    @JsonKey() final CreatorData? creator,
    @JsonKey() final int? approver,
    @JsonKey() final List<FileData>? files,
  }) = _$ReportDataImpl;
  const _ReportData._() : super._();

  factory _ReportData.fromJson(Map<String, dynamic> json) =
      _$ReportDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get studentId;
  @override
  @JsonKey()
  String? get reportMonth;
  @override
  @JsonKey()
  int? get createdBy;
  @override
  @JsonKey()
  int? get approvedBy;
  @override
  @JsonKey()
  String? get title;
  @override
  @JsonKey()
  String? get teacherComment;
  @override
  @JsonKey()
  String? get status;
  @override
  @JsonKey()
  String? get sentAt;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  String? get updatedAt;
  @override
  @JsonKey()
  StudentData? get student;
  @override
  @JsonKey()
  CreatorData? get creator;
  @override
  @JsonKey()
  int? get approver;
  @override
  @JsonKey()
  List<FileData>? get files;

  /// Create a copy of ReportData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportDataImplCopyWith<_$ReportDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatorData _$CreatorDataFromJson(Map<String, dynamic> json) {
  return _CreatorData.fromJson(json);
}

/// @nodoc
mixin _$CreatorData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey()
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this CreatorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatorDataCopyWith<CreatorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorDataCopyWith<$Res> {
  factory $CreatorDataCopyWith(
    CreatorData value,
    $Res Function(CreatorData) then,
  ) = _$CreatorDataCopyWithImpl<$Res, CreatorData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  });
}

/// @nodoc
class _$CreatorDataCopyWithImpl<$Res, $Val extends CreatorData>
    implements $CreatorDataCopyWith<$Res> {
  _$CreatorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreatorDataImplCopyWith<$Res>
    implements $CreatorDataCopyWith<$Res> {
  factory _$$CreatorDataImplCopyWith(
    _$CreatorDataImpl value,
    $Res Function(_$CreatorDataImpl) then,
  ) = __$$CreatorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  });
}

/// @nodoc
class __$$CreatorDataImplCopyWithImpl<$Res>
    extends _$CreatorDataCopyWithImpl<$Res, _$CreatorDataImpl>
    implements _$$CreatorDataImplCopyWith<$Res> {
  __$$CreatorDataImplCopyWithImpl(
    _$CreatorDataImpl _value,
    $Res Function(_$CreatorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreatorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
  }) {
    return _then(
      _$CreatorDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatorDataImpl extends _CreatorData {
  const _$CreatorDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.fullName,
    @JsonKey() this.email,
  }) : super._();

  factory _$CreatorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatorDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? fullName;
  @override
  @JsonKey()
  final String? email;

  @override
  String toString() {
    return 'CreatorData(id: $id, fullName: $fullName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email);

  /// Create a copy of CreatorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorDataImplCopyWith<_$CreatorDataImpl> get copyWith =>
      __$$CreatorDataImplCopyWithImpl<_$CreatorDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatorDataImplToJson(this);
  }
}

abstract class _CreatorData extends CreatorData {
  const factory _CreatorData({
    @JsonKey() final int? id,
    @JsonKey() final String? fullName,
    @JsonKey() final String? email,
  }) = _$CreatorDataImpl;
  const _CreatorData._() : super._();

  factory _CreatorData.fromJson(Map<String, dynamic> json) =
      _$CreatorDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  String? get fullName;
  @override
  @JsonKey()
  String? get email;

  /// Create a copy of CreatorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatorDataImplCopyWith<_$CreatorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportsResponseData _$ReportsResponseDataFromJson(Map<String, dynamic> json) {
  return _ReportsResponseData.fromJson(json);
}

/// @nodoc
mixin _$ReportsResponseData {
  @JsonKey(name: 'reports')
  List<ReportData> get reports => throw _privateConstructorUsedError;

  /// Serializes this ReportsResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportsResponseDataCopyWith<ReportsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportsResponseDataCopyWith<$Res> {
  factory $ReportsResponseDataCopyWith(
    ReportsResponseData value,
    $Res Function(ReportsResponseData) then,
  ) = _$ReportsResponseDataCopyWithImpl<$Res, ReportsResponseData>;
  @useResult
  $Res call({@JsonKey(name: 'reports') List<ReportData> reports});
}

/// @nodoc
class _$ReportsResponseDataCopyWithImpl<$Res, $Val extends ReportsResponseData>
    implements $ReportsResponseDataCopyWith<$Res> {
  _$ReportsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reports = null}) {
    return _then(
      _value.copyWith(
            reports: null == reports
                ? _value.reports
                : reports // ignore: cast_nullable_to_non_nullable
                      as List<ReportData>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportsResponseDataImplCopyWith<$Res>
    implements $ReportsResponseDataCopyWith<$Res> {
  factory _$$ReportsResponseDataImplCopyWith(
    _$ReportsResponseDataImpl value,
    $Res Function(_$ReportsResponseDataImpl) then,
  ) = __$$ReportsResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'reports') List<ReportData> reports});
}

/// @nodoc
class __$$ReportsResponseDataImplCopyWithImpl<$Res>
    extends _$ReportsResponseDataCopyWithImpl<$Res, _$ReportsResponseDataImpl>
    implements _$$ReportsResponseDataImplCopyWith<$Res> {
  __$$ReportsResponseDataImplCopyWithImpl(
    _$ReportsResponseDataImpl _value,
    $Res Function(_$ReportsResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reports = null}) {
    return _then(
      _$ReportsResponseDataImpl(
        reports: null == reports
            ? _value._reports
            : reports // ignore: cast_nullable_to_non_nullable
                  as List<ReportData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportsResponseDataImpl implements _ReportsResponseData {
  const _$ReportsResponseDataImpl({
    @JsonKey(name: 'reports') required final List<ReportData> reports,
  }) : _reports = reports;

  factory _$ReportsResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportsResponseDataImplFromJson(json);

  final List<ReportData> _reports;
  @override
  @JsonKey(name: 'reports')
  List<ReportData> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'ReportsResponseData(reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportsResponseDataImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reports));

  /// Create a copy of ReportsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportsResponseDataImplCopyWith<_$ReportsResponseDataImpl> get copyWith =>
      __$$ReportsResponseDataImplCopyWithImpl<_$ReportsResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportsResponseDataImplToJson(this);
  }
}

abstract class _ReportsResponseData implements ReportsResponseData {
  const factory _ReportsResponseData({
    @JsonKey(name: 'reports') required final List<ReportData> reports,
  }) = _$ReportsResponseDataImpl;

  factory _ReportsResponseData.fromJson(Map<String, dynamic> json) =
      _$ReportsResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'reports')
  List<ReportData> get reports;

  /// Create a copy of ReportsResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportsResponseDataImplCopyWith<_$ReportsResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
