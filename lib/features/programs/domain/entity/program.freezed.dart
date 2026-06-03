// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'program.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Program {
  int get id => throw _privateConstructorUsedError;
  int get classId => throw _privateConstructorUsedError;
  int get createdBy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  int get targetAgeFromMonth => throw _privateConstructorUsedError;
  int get targetAgeToMonth => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Classroom? get classroom => throw _privateConstructorUsedError;
  ProgramCreator? get creator => throw _privateConstructorUsedError;
  List<ProgramFile> get files => throw _privateConstructorUsedError;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramCopyWith<Program> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCopyWith<$Res> {
  factory $ProgramCopyWith(Program value, $Res Function(Program) then) =
      _$ProgramCopyWithImpl<$Res, Program>;
  @useResult
  $Res call({
    int id,
    int classId,
    int createdBy,
    String title,
    String description,
    String version,
    int targetAgeFromMonth,
    int targetAgeToMonth,
    String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Classroom? classroom,
    ProgramCreator? creator,
    List<ProgramFile> files,
  });

  $ClassroomCopyWith<$Res>? get classroom;
  $ProgramCreatorCopyWith<$Res>? get creator;
}

/// @nodoc
class _$ProgramCopyWithImpl<$Res, $Val extends Program>
    implements $ProgramCopyWith<$Res> {
  _$ProgramCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? createdBy = null,
    Object? title = null,
    Object? description = null,
    Object? version = null,
    Object? targetAgeFromMonth = null,
    Object? targetAgeToMonth = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? creator = freezed,
    Object? files = null,
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
            createdBy: null == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            version: null == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                      as String,
            targetAgeFromMonth: null == targetAgeFromMonth
                ? _value.targetAgeFromMonth
                : targetAgeFromMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            targetAgeToMonth: null == targetAgeToMonth
                ? _value.targetAgeToMonth
                : targetAgeToMonth // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            classroom: freezed == classroom
                ? _value.classroom
                : classroom // ignore: cast_nullable_to_non_nullable
                      as Classroom?,
            creator: freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                      as ProgramCreator?,
            files: null == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<ProgramFile>,
          )
          as $Val,
    );
  }

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res>? get classroom {
    if (_value.classroom == null) {
      return null;
    }

    return $ClassroomCopyWith<$Res>(_value.classroom!, (value) {
      return _then(_value.copyWith(classroom: value) as $Val);
    });
  }

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramCreatorCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $ProgramCreatorCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProgramImplCopyWith<$Res> implements $ProgramCopyWith<$Res> {
  factory _$$ProgramImplCopyWith(
    _$ProgramImpl value,
    $Res Function(_$ProgramImpl) then,
  ) = __$$ProgramImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int classId,
    int createdBy,
    String title,
    String description,
    String version,
    int targetAgeFromMonth,
    int targetAgeToMonth,
    String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Classroom? classroom,
    ProgramCreator? creator,
    List<ProgramFile> files,
  });

  @override
  $ClassroomCopyWith<$Res>? get classroom;
  @override
  $ProgramCreatorCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$ProgramImplCopyWithImpl<$Res>
    extends _$ProgramCopyWithImpl<$Res, _$ProgramImpl>
    implements _$$ProgramImplCopyWith<$Res> {
  __$$ProgramImplCopyWithImpl(
    _$ProgramImpl _value,
    $Res Function(_$ProgramImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classId = null,
    Object? createdBy = null,
    Object? title = null,
    Object? description = null,
    Object? version = null,
    Object? targetAgeFromMonth = null,
    Object? targetAgeToMonth = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? classroom = freezed,
    Object? creator = freezed,
    Object? files = null,
  }) {
    return _then(
      _$ProgramImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdBy: null == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        version: null == version
            ? _value.version
            : version // ignore: cast_nullable_to_non_nullable
                  as String,
        targetAgeFromMonth: null == targetAgeFromMonth
            ? _value.targetAgeFromMonth
            : targetAgeFromMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        targetAgeToMonth: null == targetAgeToMonth
            ? _value.targetAgeToMonth
            : targetAgeToMonth // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        classroom: freezed == classroom
            ? _value.classroom
            : classroom // ignore: cast_nullable_to_non_nullable
                  as Classroom?,
        creator: freezed == creator
            ? _value.creator
            : creator // ignore: cast_nullable_to_non_nullable
                  as ProgramCreator?,
        files: null == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<ProgramFile>,
      ),
    );
  }
}

/// @nodoc

class _$ProgramImpl implements _Program {
  const _$ProgramImpl({
    this.id = 0,
    this.classId = 0,
    this.createdBy = 0,
    this.title = '',
    this.description = '',
    this.version = '',
    this.targetAgeFromMonth = 0,
    this.targetAgeToMonth = 0,
    this.status = '',
    this.createdAt,
    this.updatedAt,
    this.classroom,
    this.creator,
    final List<ProgramFile> files = const [],
  }) : _files = files;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int classId;
  @override
  @JsonKey()
  final int createdBy;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String version;
  @override
  @JsonKey()
  final int targetAgeFromMonth;
  @override
  @JsonKey()
  final int targetAgeToMonth;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Classroom? classroom;
  @override
  final ProgramCreator? creator;
  final List<ProgramFile> _files;
  @override
  @JsonKey()
  List<ProgramFile> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'Program(id: $id, classId: $classId, createdBy: $createdBy, title: $title, description: $description, version: $version, targetAgeFromMonth: $targetAgeFromMonth, targetAgeToMonth: $targetAgeToMonth, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, classroom: $classroom, creator: $creator, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.targetAgeFromMonth, targetAgeFromMonth) ||
                other.targetAgeFromMonth == targetAgeFromMonth) &&
            (identical(other.targetAgeToMonth, targetAgeToMonth) ||
                other.targetAgeToMonth == targetAgeToMonth) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    classId,
    createdBy,
    title,
    description,
    version,
    targetAgeFromMonth,
    targetAgeToMonth,
    status,
    createdAt,
    updatedAt,
    classroom,
    creator,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      __$$ProgramImplCopyWithImpl<_$ProgramImpl>(this, _$identity);
}

abstract class _Program implements Program {
  const factory _Program({
    final int id,
    final int classId,
    final int createdBy,
    final String title,
    final String description,
    final String version,
    final int targetAgeFromMonth,
    final int targetAgeToMonth,
    final String status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Classroom? classroom,
    final ProgramCreator? creator,
    final List<ProgramFile> files,
  }) = _$ProgramImpl;

  @override
  int get id;
  @override
  int get classId;
  @override
  int get createdBy;
  @override
  String get title;
  @override
  String get description;
  @override
  String get version;
  @override
  int get targetAgeFromMonth;
  @override
  int get targetAgeToMonth;
  @override
  String get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Classroom? get classroom;
  @override
  ProgramCreator? get creator;
  @override
  List<ProgramFile> get files;

  /// Create a copy of Program
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramImplCopyWith<_$ProgramImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgramCreator {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of ProgramCreator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProgramCreatorCopyWith<ProgramCreator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramCreatorCopyWith<$Res> {
  factory $ProgramCreatorCopyWith(
    ProgramCreator value,
    $Res Function(ProgramCreator) then,
  ) = _$ProgramCreatorCopyWithImpl<$Res, ProgramCreator>;
  @useResult
  $Res call({int id, String fullName, String email});
}

/// @nodoc
class _$ProgramCreatorCopyWithImpl<$Res, $Val extends ProgramCreator>
    implements $ProgramCreatorCopyWith<$Res> {
  _$ProgramCreatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProgramCreator
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
abstract class _$$ProgramCreatorImplCopyWith<$Res>
    implements $ProgramCreatorCopyWith<$Res> {
  factory _$$ProgramCreatorImplCopyWith(
    _$ProgramCreatorImpl value,
    $Res Function(_$ProgramCreatorImpl) then,
  ) = __$$ProgramCreatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, String email});
}

/// @nodoc
class __$$ProgramCreatorImplCopyWithImpl<$Res>
    extends _$ProgramCreatorCopyWithImpl<$Res, _$ProgramCreatorImpl>
    implements _$$ProgramCreatorImplCopyWith<$Res> {
  __$$ProgramCreatorImplCopyWithImpl(
    _$ProgramCreatorImpl _value,
    $Res Function(_$ProgramCreatorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProgramCreator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
  }) {
    return _then(
      _$ProgramCreatorImpl(
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

class _$ProgramCreatorImpl implements _ProgramCreator {
  const _$ProgramCreatorImpl({
    this.id = 0,
    this.fullName = '',
    this.email = '',
  });

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
    return 'ProgramCreator(id: $id, fullName: $fullName, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramCreatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email);

  /// Create a copy of ProgramCreator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramCreatorImplCopyWith<_$ProgramCreatorImpl> get copyWith =>
      __$$ProgramCreatorImplCopyWithImpl<_$ProgramCreatorImpl>(
        this,
        _$identity,
      );
}

abstract class _ProgramCreator implements ProgramCreator {
  const factory _ProgramCreator({
    final int id,
    final String fullName,
    final String email,
  }) = _$ProgramCreatorImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get email;

  /// Create a copy of ProgramCreator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgramCreatorImplCopyWith<_$ProgramCreatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
