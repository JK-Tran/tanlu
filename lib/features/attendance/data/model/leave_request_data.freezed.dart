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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'student')
  StudentData? get student => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  ClassInfoData? get classInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'reason')
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  ParentData? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'submittedAt')
  String? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'decidedAt')
  String? get decidedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'decidedBy')
  int? get decidedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'decisionNote')
  String? get decisionNote => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student') StudentData? student,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'submittedAt') String? submittedAt,
    @JsonKey(name: 'decidedAt') String? decidedAt,
    @JsonKey(name: 'decidedBy') int? decidedBy,
    @JsonKey(name: 'decisionNote') String? decisionNote,
  });

  $StudentDataCopyWith<$Res>? get student;
  $ClassInfoDataCopyWith<$Res>? get classInfo;
  $ParentDataCopyWith<$Res>? get parent;
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
    Object? student = freezed,
    Object? classInfo = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? parent = freezed,
    Object? submittedAt = freezed,
    Object? decidedAt = freezed,
    Object? decidedBy = freezed,
    Object? decisionNote = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            student: freezed == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as StudentData?,
            classInfo: freezed == classInfo
                ? _value.classInfo
                : classInfo // ignore: cast_nullable_to_non_nullable
                      as ClassInfoData?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            parent: freezed == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as ParentData?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            decidedAt: freezed == decidedAt
                ? _value.decidedAt
                : decidedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            decidedBy: freezed == decidedBy
                ? _value.decidedBy
                : decidedBy // ignore: cast_nullable_to_non_nullable
                      as int?,
            decisionNote: freezed == decisionNote
                ? _value.decisionNote
                : decisionNote // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of LeaveRequestData
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

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoDataCopyWith<$Res>? get classInfo {
    if (_value.classInfo == null) {
      return null;
    }

    return $ClassInfoDataCopyWith<$Res>(_value.classInfo!, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentDataCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentDataCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
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
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'student') StudentData? student,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'submittedAt') String? submittedAt,
    @JsonKey(name: 'decidedAt') String? decidedAt,
    @JsonKey(name: 'decidedBy') int? decidedBy,
    @JsonKey(name: 'decisionNote') String? decisionNote,
  });

  @override
  $StudentDataCopyWith<$Res>? get student;
  @override
  $ClassInfoDataCopyWith<$Res>? get classInfo;
  @override
  $ParentDataCopyWith<$Res>? get parent;
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
    Object? student = freezed,
    Object? classInfo = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
    Object? parent = freezed,
    Object? submittedAt = freezed,
    Object? decidedAt = freezed,
    Object? decidedBy = freezed,
    Object? decisionNote = freezed,
  }) {
    return _then(
      _$LeaveRequestDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        student: freezed == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as StudentData?,
        classInfo: freezed == classInfo
            ? _value.classInfo
            : classInfo // ignore: cast_nullable_to_non_nullable
                  as ClassInfoData?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        parent: freezed == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as ParentData?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        decidedAt: freezed == decidedAt
            ? _value.decidedAt
            : decidedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        decidedBy: freezed == decidedBy
            ? _value.decidedBy
            : decidedBy // ignore: cast_nullable_to_non_nullable
                  as int?,
        decisionNote: freezed == decisionNote
            ? _value.decisionNote
            : decisionNote // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaveRequestDataImpl extends _LeaveRequestData {
  const _$LeaveRequestDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'student') this.student,
    @JsonKey(name: 'class') this.classInfo,
    @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'reason') this.reason,
    @JsonKey(name: 'note') this.note,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'parent') this.parent,
    @JsonKey(name: 'submittedAt') this.submittedAt,
    @JsonKey(name: 'decidedAt') this.decidedAt,
    @JsonKey(name: 'decidedBy') this.decidedBy,
    @JsonKey(name: 'decisionNote') this.decisionNote,
  }) : super._();

  factory _$LeaveRequestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaveRequestDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'student')
  final StudentData? student;
  @override
  @JsonKey(name: 'class')
  final ClassInfoData? classInfo;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'reason')
  final String? reason;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'parent')
  final ParentData? parent;
  @override
  @JsonKey(name: 'submittedAt')
  final String? submittedAt;
  @override
  @JsonKey(name: 'decidedAt')
  final String? decidedAt;
  @override
  @JsonKey(name: 'decidedBy')
  final int? decidedBy;
  @override
  @JsonKey(name: 'decisionNote')
  final String? decisionNote;

  @override
  String toString() {
    return 'LeaveRequestData(id: $id, student: $student, classInfo: $classInfo, date: $date, reason: $reason, note: $note, status: $status, parent: $parent, submittedAt: $submittedAt, decidedAt: $decidedAt, decidedBy: $decidedBy, decisionNote: $decisionNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaveRequestDataImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

abstract class _LeaveRequestData extends LeaveRequestData {
  const factory _LeaveRequestData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'student') final StudentData? student,
    @JsonKey(name: 'class') final ClassInfoData? classInfo,
    @JsonKey(name: 'date') final String? date,
    @JsonKey(name: 'reason') final String? reason,
    @JsonKey(name: 'note') final String? note,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'parent') final ParentData? parent,
    @JsonKey(name: 'submittedAt') final String? submittedAt,
    @JsonKey(name: 'decidedAt') final String? decidedAt,
    @JsonKey(name: 'decidedBy') final int? decidedBy,
    @JsonKey(name: 'decisionNote') final String? decisionNote,
  }) = _$LeaveRequestDataImpl;
  const _LeaveRequestData._() : super._();

  factory _LeaveRequestData.fromJson(Map<String, dynamic> json) =
      _$LeaveRequestDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'student')
  StudentData? get student;
  @override
  @JsonKey(name: 'class')
  ClassInfoData? get classInfo;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'reason')
  String? get reason;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'parent')
  ParentData? get parent;
  @override
  @JsonKey(name: 'submittedAt')
  String? get submittedAt;
  @override
  @JsonKey(name: 'decidedAt')
  String? get decidedAt;
  @override
  @JsonKey(name: 'decidedBy')
  int? get decidedBy;
  @override
  @JsonKey(name: 'decisionNote')
  String? get decisionNote;

  /// Create a copy of LeaveRequestData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaveRequestDataImplCopyWith<_$LeaveRequestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
