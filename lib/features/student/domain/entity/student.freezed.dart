// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Student {
  int get id => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String get avatarFileId => throw _privateConstructorUsedError;
  String get studentCode => throw _privateConstructorUsedError;
  DateTime? get enrollmentDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get initialReason => throw _privateConstructorUsedError;
  String get diagnosisSummary => throw _privateConstructorUsedError;
  int get developmentAgeMonth => throw _privateConstructorUsedError;
  String get supportLevel => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Classroom get classroom => throw _privateConstructorUsedError;
  List<StudentParent> get studentParents => throw _privateConstructorUsedError;
  List<StudentTeacher> get studentTeachers =>
      throw _privateConstructorUsedError;
  List<ScreeningResult> get screeningResults =>
      throw _privateConstructorUsedError;
  List<DevelopmentResult> get developmentResults =>
      throw _privateConstructorUsedError;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call({
    int id,
    int classId,
    String fullName,
    String nickname,
    String gender,
    DateTime? dateOfBirth,
    String avatarFileId,
    String studentCode,
    DateTime? enrollmentDate,
    String status,
    String initialReason,
    String diagnosisSummary,
    int developmentAgeMonth,
    String supportLevel,
    String note,
    DateTime? createdAt,
    DateTime? updatedAt,
    Classroom classroom,
    List<StudentParent> studentParents,
    List<StudentTeacher> studentTeachers,
    List<ScreeningResult> screeningResults,
    List<DevelopmentResult> developmentResults,
  });

  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? fullName = null,
    Object? nickname = null,
    Object? gender = null,
    Object? dateOfBirth = freezed,
    Object? avatarFileId = null,
    Object? studentCode = null,
    Object? enrollmentDate = freezed,
    Object? status = null,
    Object? initialReason = null,
    Object? diagnosisSummary = null,
    Object? developmentAgeMonth = null,
    Object? supportLevel = null,
    Object? note = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = null,
    Object? studentParents = null,
    Object? studentTeachers = null,
    Object? screeningResults = null,
    Object? developmentResults = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            nickname: null == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            avatarFileId: null == avatarFileId
                ? _value.avatarFileId
                : avatarFileId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentCode: null == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String,
            enrollmentDate: freezed == enrollmentDate
                ? _value.enrollmentDate
                : enrollmentDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            initialReason: null == initialReason
                ? _value.initialReason
                : initialReason // ignore: cast_nullable_to_non_nullable
                      as String,
            diagnosisSummary: null == diagnosisSummary
                ? _value.diagnosisSummary
                : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                      as String,
            developmentAgeMonth: null == developmentAgeMonth
                ? _value.developmentAgeMonth
                : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            supportLevel: null == supportLevel
                ? _value.supportLevel
                : supportLevel // ignore: cast_nullable_to_non_nullable
                      as String,
            note: null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            classroom: null == classroom
                ? _value.classroom
                : classroom // ignore: cast_nullable_to_non_nullable
                      as Classroom,
            studentParents: null == studentParents
                ? _value.studentParents
                : studentParents // ignore: cast_nullable_to_non_nullable
                      as List<StudentParent>,
            studentTeachers: null == studentTeachers
                ? _value.studentTeachers
                : studentTeachers // ignore: cast_nullable_to_non_nullable
                      as List<StudentTeacher>,
            screeningResults: null == screeningResults
                ? _value.screeningResults
                : screeningResults // ignore: cast_nullable_to_non_nullable
                      as List<ScreeningResult>,
            developmentResults: null == developmentResults
                ? _value.developmentResults
                : developmentResults // ignore: cast_nullable_to_non_nullable
                      as List<DevelopmentResult>,
          )
          as $Val,
    );
  }

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res> get classroom {
    return $ClassroomCopyWith<$Res>(_value.classroom, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
    _$StudentImpl value,
    $Res Function(_$StudentImpl) then,
  ) = __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int classId,
    String fullName,
    String nickname,
    String gender,
    DateTime? dateOfBirth,
    String avatarFileId,
    String studentCode,
    DateTime? enrollmentDate,
    String status,
    String initialReason,
    String diagnosisSummary,
    int developmentAgeMonth,
    String supportLevel,
    String note,
    DateTime? createdAt,
    DateTime? updatedAt,
    Classroom classroom,
    List<StudentParent> studentParents,
    List<StudentTeacher> studentTeachers,
    List<ScreeningResult> screeningResults,
    List<DevelopmentResult> developmentResults,
  });

  @override
  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
    _$StudentImpl _value,
    $Res Function(_$StudentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? fullName = null,
    Object? nickname = null,
    Object? gender = null,
    Object? dateOfBirth = freezed,
    Object? avatarFileId = null,
    Object? studentCode = null,
    Object? enrollmentDate = freezed,
    Object? status = null,
    Object? initialReason = null,
    Object? diagnosisSummary = null,
    Object? developmentAgeMonth = null,
    Object? supportLevel = null,
    Object? note = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = null,
    Object? studentParents = null,
    Object? studentTeachers = null,
    Object? screeningResults = null,
    Object? developmentResults = null,
  }) {
    return _then(
      _$StudentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        nickname: null == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        avatarFileId: null == avatarFileId
            ? _value.avatarFileId
            : avatarFileId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentCode: null == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String,
        enrollmentDate: freezed == enrollmentDate
            ? _value.enrollmentDate
            : enrollmentDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        initialReason: null == initialReason
            ? _value.initialReason
            : initialReason // ignore: cast_nullable_to_non_nullable
                  as String,
        diagnosisSummary: null == diagnosisSummary
            ? _value.diagnosisSummary
            : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                  as String,
        developmentAgeMonth: null == developmentAgeMonth
            ? _value.developmentAgeMonth
            : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        supportLevel: null == supportLevel
            ? _value.supportLevel
            : supportLevel // ignore: cast_nullable_to_non_nullable
                  as String,
        note: null == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        classroom: null == classroom
            ? _value.classroom
            : classroom // ignore: cast_nullable_to_non_nullable
                  as Classroom,
        studentParents: null == studentParents
            ? _value._studentParents
            : studentParents // ignore: cast_nullable_to_non_nullable
                  as List<StudentParent>,
        studentTeachers: null == studentTeachers
            ? _value._studentTeachers
            : studentTeachers // ignore: cast_nullable_to_non_nullable
                  as List<StudentTeacher>,
        screeningResults: null == screeningResults
            ? _value._screeningResults
            : screeningResults // ignore: cast_nullable_to_non_nullable
                  as List<ScreeningResult>,
        developmentResults: null == developmentResults
            ? _value._developmentResults
            : developmentResults // ignore: cast_nullable_to_non_nullable
                  as List<DevelopmentResult>,
      ),
    );
  }
}

/// @nodoc

class _$StudentImpl implements _Student {
  const _$StudentImpl({
    this.id = 0,
    this.classId = 0,
    this.fullName = '',
    this.nickname = '',
    this.gender = '',
    this.dateOfBirth,
    this.avatarFileId = '',
    this.studentCode = '',
    this.enrollmentDate,
    this.status = '',
    this.initialReason = '',
    this.diagnosisSummary = '',
    this.developmentAgeMonth = 0,
    this.supportLevel = '',
    this.note = '',
    this.createdAt,
    this.updatedAt,
    this.classroom = const Classroom(),
    final List<StudentParent> studentParents = const [],
    final List<StudentTeacher> studentTeachers = const [],
    final List<ScreeningResult> screeningResults = const [],
    final List<DevelopmentResult> developmentResults = const [],
  }) : _studentParents = studentParents,
       _studentTeachers = studentTeachers,
       _screeningResults = screeningResults,
       _developmentResults = developmentResults;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int classId;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final String gender;
  @override
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final String avatarFileId;
  @override
  @JsonKey()
  final String studentCode;
  @override
  final DateTime? enrollmentDate;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String initialReason;
  @override
  @JsonKey()
  final String diagnosisSummary;
  @override
  @JsonKey()
  final int developmentAgeMonth;
  @override
  @JsonKey()
  final String supportLevel;
  @override
  @JsonKey()
  final String note;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final Classroom classroom;
  final List<StudentParent> _studentParents;
  @override
  @JsonKey()
  List<StudentParent> get studentParents {
    if (_studentParents is EqualUnmodifiableListView) return _studentParents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentParents);
  }

  final List<StudentTeacher> _studentTeachers;
  @override
  @JsonKey()
  List<StudentTeacher> get studentTeachers {
    if (_studentTeachers is EqualUnmodifiableListView) return _studentTeachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentTeachers);
  }

  final List<ScreeningResult> _screeningResults;
  @override
  @JsonKey()
  List<ScreeningResult> get screeningResults {
    if (_screeningResults is EqualUnmodifiableListView)
      return _screeningResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screeningResults);
  }

  final List<DevelopmentResult> _developmentResults;
  @override
  @JsonKey()
  List<DevelopmentResult> get developmentResults {
    if (_developmentResults is EqualUnmodifiableListView)
      return _developmentResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_developmentResults);
  }

  @override
  String toString() {
    return 'Student(id: $id, classId: $classId, fullName: $fullName, nickname: $nickname, gender: $gender, dateOfBirth: $dateOfBirth, avatarFileId: $avatarFileId, studentCode: $studentCode, enrollmentDate: $enrollmentDate, status: $status, initialReason: $initialReason, diagnosisSummary: $diagnosisSummary, developmentAgeMonth: $developmentAgeMonth, supportLevel: $supportLevel, note: $note, createdAt: $createdAt, updatedAt: $updatedAt, classroom: $classroom, studentParents: $studentParents, studentTeachers: $studentTeachers, screeningResults: $screeningResults, developmentResults: $developmentResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.avatarFileId, avatarFileId) ||
                other.avatarFileId == avatarFileId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.enrollmentDate, enrollmentDate) ||
                other.enrollmentDate == enrollmentDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initialReason, initialReason) ||
                other.initialReason == initialReason) &&
            (identical(other.diagnosisSummary, diagnosisSummary) ||
                other.diagnosisSummary == diagnosisSummary) &&
            (identical(other.developmentAgeMonth, developmentAgeMonth) ||
                other.developmentAgeMonth == developmentAgeMonth) &&
            (identical(other.supportLevel, supportLevel) ||
                other.supportLevel == supportLevel) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            const DeepCollectionEquality().equals(
              other._studentParents,
              _studentParents,
            ) &&
            const DeepCollectionEquality().equals(
              other._studentTeachers,
              _studentTeachers,
            ) &&
            const DeepCollectionEquality().equals(
              other._screeningResults,
              _screeningResults,
            ) &&
            const DeepCollectionEquality().equals(
              other._developmentResults,
              _developmentResults,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    classId,
    fullName,
    nickname,
    gender,
    dateOfBirth,
    avatarFileId,
    studentCode,
    enrollmentDate,
    status,
    initialReason,
    diagnosisSummary,
    developmentAgeMonth,
    supportLevel,
    note,
    createdAt,
    updatedAt,
    classroom,
    const DeepCollectionEquality().hash(_studentParents),
    const DeepCollectionEquality().hash(_studentTeachers),
    const DeepCollectionEquality().hash(_screeningResults),
    const DeepCollectionEquality().hash(_developmentResults),
  ]);

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);
}

abstract class _Student implements Student {
  const factory _Student({
    final int id,
    final int classId,
    final String fullName,
    final String nickname,
    final String gender,
    final DateTime? dateOfBirth,
    final String avatarFileId,
    final String studentCode,
    final DateTime? enrollmentDate,
    final String status,
    final String initialReason,
    final String diagnosisSummary,
    final int developmentAgeMonth,
    final String supportLevel,
    final String note,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Classroom classroom,
    final List<StudentParent> studentParents,
    final List<StudentTeacher> studentTeachers,
    final List<ScreeningResult> screeningResults,
    final List<DevelopmentResult> developmentResults,
  }) = _$StudentImpl;

  @override
  int get id;
  @override
  int get classId;
  @override
  String get fullName;
  @override
  String get nickname;
  @override
  String get gender;
  @override
  DateTime? get dateOfBirth;
  @override
  String get avatarFileId;
  @override
  String get studentCode;
  @override
  DateTime? get enrollmentDate;
  @override
  String get status;
  @override
  String get initialReason;
  @override
  String get diagnosisSummary;
  @override
  int get developmentAgeMonth;
  @override
  String get supportLevel;
  @override
  String get note;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Classroom get classroom;
  @override
  List<StudentParent> get studentParents;
  @override
  List<StudentTeacher> get studentTeachers;
  @override
  List<ScreeningResult> get screeningResults;
  @override
  List<DevelopmentResult> get developmentResults;

  /// Create a copy of Student
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Classroom {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  Center get center => throw _privateConstructorUsedError;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call({int id, String name, String code, Center center});

  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? center = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            center: null == center
                ? _value.center
                : center // ignore: cast_nullable_to_non_nullable
                      as Center,
          )
          as $Val,
    );
  }

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CenterCopyWith<$Res> get center {
    return $CenterCopyWith<$Res>(_value.center, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassroomImplCopyWith<$Res>
    implements $ClassroomCopyWith<$Res> {
  factory _$$ClassroomImplCopyWith(
    _$ClassroomImpl value,
    $Res Function(_$ClassroomImpl) then,
  ) = __$$ClassroomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String code, Center center});

  @override
  $CenterCopyWith<$Res> get center;
}

/// @nodoc
class __$$ClassroomImplCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$ClassroomImpl>
    implements _$$ClassroomImplCopyWith<$Res> {
  __$$ClassroomImplCopyWithImpl(
    _$ClassroomImpl _value,
    $Res Function(_$ClassroomImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? code = null,
    Object? center = null,
  }) {
    return _then(
      _$ClassroomImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        center: null == center
            ? _value.center
            : center // ignore: cast_nullable_to_non_nullable
                  as Center,
      ),
    );
  }
}

/// @nodoc

class _$ClassroomImpl implements _Classroom {
  const _$ClassroomImpl({
    this.id = 0,
    this.name = '',
    this.code = '',
    this.center = const Center(),
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final Center center;

  @override
  String toString() {
    return 'Classroom(id: $id, name: $name, code: $code, center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.center, center) || other.center == center));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, code, center);

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      __$$ClassroomImplCopyWithImpl<_$ClassroomImpl>(this, _$identity);
}

abstract class _Classroom implements Classroom {
  const factory _Classroom({
    final int id,
    final String name,
    final String code,
    final Center center,
  }) = _$ClassroomImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  Center get center;

  /// Create a copy of Classroom
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassroomImplCopyWith<_$ClassroomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
