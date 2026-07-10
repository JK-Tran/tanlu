// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LeaveRequest {
  int get id => throw _privateConstructorUsedError;
  Student get student => throw _privateConstructorUsedError;
  ClassInfo get classInfo => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  Parent get parent => throw _privateConstructorUsedError;
  DateTime? get submittedAt => throw _privateConstructorUsedError;
  DateTime? get decidedAt => throw _privateConstructorUsedError;
  int get decidedBy => throw _privateConstructorUsedError;
  String get decisionNote => throw _privateConstructorUsedError;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaveRequestCopyWith<LeaveRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveRequestCopyWith<$Res> {
  factory $LeaveRequestCopyWith(
    LeaveRequest value,
    $Res Function(LeaveRequest) then,
  ) = _$LeaveRequestCopyWithImpl<$Res, LeaveRequest>;
  @useResult
  $Res call({
    int id,
    Student student,
    ClassInfo classInfo,
    DateTime? date,
    String reason,
    String note,
    String status,
    Parent parent,
    DateTime? submittedAt,
    DateTime? decidedAt,
    int decidedBy,
    String decisionNote,
  });

  $StudentCopyWith<$Res> get student;
  $ClassInfoCopyWith<$Res> get classInfo;
  $ParentCopyWith<$Res> get parent;
}

/// @nodoc
class _$LeaveRequestCopyWithImpl<$Res, $Val extends LeaveRequest>
    implements $LeaveRequestCopyWith<$Res> {
  _$LeaveRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student = null,
    Object? classInfo = null,
    Object? date = freezed,
    Object? reason = null,
    Object? note = null,
    Object? status = null,
    Object? parent = null,
    Object? submittedAt = freezed,
    Object? decidedAt = freezed,
    Object? decidedBy = null,
    Object? decisionNote = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            student: null == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as Student,
            classInfo: null == classInfo
                ? _value.classInfo
                : classInfo // ignore: cast_nullable_to_non_nullable
                      as ClassInfo,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            parent: null == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as Parent,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            decidedAt: freezed == decidedAt
                ? _value.decidedAt
                : decidedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            decidedBy: null == decidedBy
                ? _value.decidedBy
                : decidedBy // ignore: cast_nullable_to_non_nullable
                      as int,
            decisionNote: null == decisionNote
                ? _value.decisionNote
                : decisionNote // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoCopyWith<$Res> get classInfo {
    return $ClassInfoCopyWith<$Res>(_value.classInfo, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res> get parent {
    return $ParentCopyWith<$Res>(_value.parent, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LeaveRequestImplCopyWith<$Res>
    implements $LeaveRequestCopyWith<$Res> {
  factory _$$LeaveRequestImplCopyWith(
    _$LeaveRequestImpl value,
    $Res Function(_$LeaveRequestImpl) then,
  ) = __$$LeaveRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    Student student,
    ClassInfo classInfo,
    DateTime? date,
    String reason,
    String note,
    String status,
    Parent parent,
    DateTime? submittedAt,
    DateTime? decidedAt,
    int decidedBy,
    String decisionNote,
  });

  @override
  $StudentCopyWith<$Res> get student;
  @override
  $ClassInfoCopyWith<$Res> get classInfo;
  @override
  $ParentCopyWith<$Res> get parent;
}

/// @nodoc
class __$$LeaveRequestImplCopyWithImpl<$Res>
    extends _$LeaveRequestCopyWithImpl<$Res, _$LeaveRequestImpl>
    implements _$$LeaveRequestImplCopyWith<$Res> {
  __$$LeaveRequestImplCopyWithImpl(
    _$LeaveRequestImpl _value,
    $Res Function(_$LeaveRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? student = null,
    Object? classInfo = null,
    Object? date = freezed,
    Object? reason = null,
    Object? note = null,
    Object? status = null,
    Object? parent = null,
    Object? submittedAt = freezed,
    Object? decidedAt = freezed,
    Object? decidedBy = null,
    Object? decisionNote = null,
  }) {
    return _then(
      _$LeaveRequestImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        student: null == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as Student,
        classInfo: null == classInfo
            ? _value.classInfo
            : classInfo // ignore: cast_nullable_to_non_nullable
                  as ClassInfo,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        parent: null == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as Parent,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        decidedAt: freezed == decidedAt
            ? _value.decidedAt
            : decidedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        decidedBy: null == decidedBy
            ? _value.decidedBy
            : decidedBy // ignore: cast_nullable_to_non_nullable
                  as int,
        decisionNote: null == decisionNote
            ? _value.decisionNote
            : decisionNote // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LeaveRequestImpl implements _LeaveRequest {
  const _$LeaveRequestImpl({
    this.id = 0,
    this.student = const Student(),
    this.classInfo = const ClassInfo(),
    this.date,
    this.reason = '',
    this.note = '',
    this.status = '',
    this.parent = const Parent(),
    this.submittedAt,
    this.decidedAt,
    this.decidedBy = 0,
    this.decisionNote = '',
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final Student student;
  @override
  @JsonKey()
  final ClassInfo classInfo;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final String reason;
  @override
  @JsonKey()
  final String note;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final Parent parent;
  @override
  final DateTime? submittedAt;
  @override
  final DateTime? decidedAt;
  @override
  @JsonKey()
  final int decidedBy;
  @override
  @JsonKey()
  final String decisionNote;

  @override
  String toString() {
    return 'LeaveRequest(id: $id, student: $student, classInfo: $classInfo, date: $date, reason: $reason, note: $note, status: $status, parent: $parent, submittedAt: $submittedAt, decidedAt: $decidedAt, decidedBy: $decidedBy, decisionNote: $decisionNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.classInfo, classInfo) ||
                other.classInfo == classInfo) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.decidedAt, decidedAt) ||
                other.decidedAt == decidedAt) &&
            (identical(other.decidedBy, decidedBy) ||
                other.decidedBy == decidedBy) &&
            (identical(other.decisionNote, decisionNote) ||
                other.decisionNote == decisionNote));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    student,
    classInfo,
    date,
    reason,
    note,
    status,
    parent,
    submittedAt,
    decidedAt,
    decidedBy,
    decisionNote,
  );

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      __$$LeaveRequestImplCopyWithImpl<_$LeaveRequestImpl>(this, _$identity);
}

abstract class _LeaveRequest implements LeaveRequest {
  const factory _LeaveRequest({
    final int id,
    final Student student,
    final ClassInfo classInfo,
    final DateTime? date,
    final String reason,
    final String note,
    final String status,
    final Parent parent,
    final DateTime? submittedAt,
    final DateTime? decidedAt,
    final int decidedBy,
    final String decisionNote,
  }) = _$LeaveRequestImpl;

  @override
  int get id;
  @override
  Student get student;
  @override
  ClassInfo get classInfo;
  @override
  DateTime? get date;
  @override
  String get reason;
  @override
  String get note;
  @override
  String get status;
  @override
  Parent get parent;
  @override
  DateTime? get submittedAt;
  @override
  DateTime? get decidedAt;
  @override
  int get decidedBy;
  @override
  String get decisionNote;

  /// Create a copy of LeaveRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestImplCopyWith<_$LeaveRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
