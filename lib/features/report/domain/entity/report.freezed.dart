// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Report {
  int get id => throw _privateConstructorUsedError;
  int get studentId => throw _privateConstructorUsedError;
  String get reportMonth => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  int get approvedBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get teacherComment => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Student? get student => throw _privateConstructorUsedError;
  Creator? get creator => throw _privateConstructorUsedError;
  int get approver => throw _privateConstructorUsedError;
  List<File> get files => throw _privateConstructorUsedError;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res, Report>;
  @useResult
  $Res call({
    int id,
    int studentId,
    String reportMonth,
    int createdBy,
    int approvedBy,
    String title,
    String teacherComment,
    ReportStatus status,
    DateTime? sentAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Student? student,
    Creator? creator,
    int approver,
    List<File> files,
  });

  $StudentCopyWith<$Res>? get student;
  $CreatorCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ReportCopyWithImpl<$Res, $Val extends Report>
    implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? reportMonth = null,
    Object? createdBy = null,
    Object? approvedBy = null,
    Object? title = null,
    Object? teacherComment = null,
    Object? status = null,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? student = freezed,
    Object? creator = freezed,
    Object? approver = null,
    Object? files = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            reportMonth: null == reportMonth
                ? _value.reportMonth
                : reportMonth // ignore: cast_nullable_to_non_nullable
                      as String,
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int,
            approvedBy: null == approvedBy
                ? _value.approvedBy
                : approvedBy // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            teacherComment: null == teacherComment
                ? _value.teacherComment
                : teacherComment // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus,
            sentAt: freezed == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            student: freezed == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as Student?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as Creator?,
            approver: null == approver
                ? _value.approver
                : approver // ignore: cast_nullable_to_non_nullable
                      as int,
            files: null == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<File>,
          )
          as $Val,
    );
  }

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $StudentCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreatorCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $CreatorCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportImplCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$$ReportImplCopyWith(
    _$ReportImpl value,
    $Res Function(_$ReportImpl) then,
  ) = __$$ReportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int studentId,
    String reportMonth,
    int createdBy,
    int approvedBy,
    String title,
    String teacherComment,
    ReportStatus status,
    DateTime? sentAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Student? student,
    Creator? creator,
    int approver,
    List<File> files,
  });

  @override
  $StudentCopyWith<$Res>? get student;
  @override
  $CreatorCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$ReportImplCopyWithImpl<$Res>
    extends _$ReportCopyWithImpl<$Res, _$ReportImpl>
    implements _$$ReportImplCopyWith<$Res> {
  __$$ReportImplCopyWithImpl(
    _$ReportImpl _value,
    $Res Function(_$ReportImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? studentId = null,
    Object? reportMonth = null,
    Object? createdBy = null,
    Object? approvedBy = null,
    Object? title = null,
    Object? teacherComment = null,
    Object? status = null,
    Object? sentAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? student = freezed,
    Object? creator = freezed,
    Object? approver = null,
    Object? files = null,
  }) {
    return _then(
      _$ReportImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        reportMonth: null == reportMonth
            ? _value.reportMonth
            : reportMonth // ignore: cast_nullable_to_non_nullable
                  as String,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int,
        approvedBy: null == approvedBy
            ? _value.approvedBy
            : approvedBy // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        teacherComment: null == teacherComment
            ? _value.teacherComment
            : teacherComment // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus,
        sentAt: freezed == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        student: freezed == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as Student?,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as Creator?,
        approver: null == approver
            ? _value.approver
            : approver // ignore: cast_nullable_to_non_nullable
                  as int,
        files: null == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<File>,
      ),
    );
  }
}

/// @nodoc

class _$ReportImpl implements _Report {
  const _$ReportImpl({
    this.id = 0,
    this.studentId = 0,
    this.reportMonth = '',
    this.createdBy = 0,
    this.approvedBy = 0,
    this.title = '',
    this.teacherComment = '',
    this.status = ReportStatus.draft,
    this.sentAt,
    this.createdAt,
    this.updatedAt,
    this.student,
    this.creator,
    this.approver = 0,
    final List<File> files = const [],
  }) : _files = files;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int studentId;
  @override
  @JsonKey()
  final String reportMonth;
  @override
  @JsonKey()
  final int createdBy;
  @override
  @JsonKey()
  final int approvedBy;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String teacherComment;
  @override
  @JsonKey()
  final ReportStatus status;
  @override
  final DateTime? sentAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Student? student;
  @override
  final Creator? creator;
  @override
  @JsonKey()
  final int approver;
  final List<File> _files;
  @override
  @JsonKey()
  List<File> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'Report(id: $id, studentId: $studentId, reportMonth: $reportMonth, createdBy: $createdBy, approvedBy: $approvedBy, title: $title, teacherComment: $teacherComment, status: $status, sentAt: $sentAt, createdAt: $createdAt, updatedAt: $updatedAt, student: $student, creator: $creator, approver: $approver, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportImpl &&
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

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      __$$ReportImplCopyWithImpl<_$ReportImpl>(this, _$identity);
}

abstract class _Report implements Report {
  const factory _Report({
    final int id,
    final int studentId,
    final String reportMonth,
    final int createdBy,
    final int approvedBy,
    final String title,
    final String teacherComment,
    final ReportStatus status,
    final DateTime? sentAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Student? student,
    final Creator? creator,
    final int approver,
    final List<File> files,
  }) = _$ReportImpl;

  @override
  int get id;
  @override
  int get studentId;
  @override
  String get reportMonth;
  @override
  int get createdBy;
  @override
  int get approvedBy;
  @override
  String get title;
  @override
  String get teacherComment;
  @override
  ReportStatus get status;
  @override
  DateTime? get sentAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Student? get student;
  @override
  Creator? get creator;
  @override
  int get approver;
  @override
  List<File> get files;

  /// Create a copy of Report
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportImplCopyWith<_$ReportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Creator {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of Creator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatorCopyWith<Creator> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorCopyWith<$Res> {
  factory $CreatorCopyWith(Creator value, $Res Function(Creator) then) =
      _$CreatorCopyWithImpl<$Res, Creator>;
  @useResult
  $Res call({int id, String fullName, String email});
}

/// @nodoc
class _$CreatorCopyWithImpl<$Res, $Val extends Creator>
    implements $CreatorCopyWith<$Res> {
  _$CreatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Creator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreatorImplCopyWith<$Res> implements $CreatorCopyWith<$Res> {
  factory _$$CreatorImplCopyWith(
    _$CreatorImpl value,
    $Res Function(_$CreatorImpl) then,
  ) = __$$CreatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, String email});
}

/// @nodoc
class __$$CreatorImplCopyWithImpl<$Res>
    extends _$CreatorCopyWithImpl<$Res, _$CreatorImpl>
    implements _$$CreatorImplCopyWith<$Res> {
  __$$CreatorImplCopyWithImpl(
    _$CreatorImpl _value,
    $Res Function(_$CreatorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Creator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
  }) {
    return _then(
      _$CreatorImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreatorImpl implements _Creator {
  const _$CreatorImpl({this.id = 0, this.fullName = '', this.email = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String email;

  @override
  String toString() {
    return 'Creator(id: $id, fullName: $fullName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email);

  /// Create a copy of Creator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorImplCopyWith<_$CreatorImpl> get copyWith =>
      __$$CreatorImplCopyWithImpl<_$CreatorImpl>(this, _$identity);
}

abstract class _Creator implements Creator {
  const factory _Creator({
    final int id,
    final String fullName,
    final String email,
  }) = _$CreatorImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;

  /// Create a copy of Creator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatorImplCopyWith<_$CreatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
