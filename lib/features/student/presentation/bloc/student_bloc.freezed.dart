// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentStarted {}

/// @nodoc
abstract class $StudentStartedCopyWith<$Res> {
  factory $StudentStartedCopyWith(
    StudentStarted value,
    $Res Function(StudentStarted) then,
  ) = _$StudentStartedCopyWithImpl<$Res, StudentStarted>;
}

/// @nodoc
class _$StudentStartedCopyWithImpl<$Res, $Val extends StudentStarted>
    implements $StudentStartedCopyWith<$Res> {
  _$StudentStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentStarted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StudentStartedImplCopyWith<$Res> {
  factory _$$StudentStartedImplCopyWith(
    _$StudentStartedImpl value,
    $Res Function(_$StudentStartedImpl) then,
  ) = __$$StudentStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StudentStartedImplCopyWithImpl<$Res>
    extends _$StudentStartedCopyWithImpl<$Res, _$StudentStartedImpl>
    implements _$$StudentStartedImplCopyWith<$Res> {
  __$$StudentStartedImplCopyWithImpl(
    _$StudentStartedImpl _value,
    $Res Function(_$StudentStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentStarted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StudentStartedImpl implements _StudentStarted {
  const _$StudentStartedImpl();

  @override
  String toString() {
    return 'StudentStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StudentStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _StudentStarted implements StudentStarted {
  const factory _StudentStarted() = _$StudentStartedImpl;
}

/// @nodoc
mixin _$FetchStudents {}

/// @nodoc
abstract class $FetchStudentsCopyWith<$Res> {
  factory $FetchStudentsCopyWith(
    FetchStudents value,
    $Res Function(FetchStudents) then,
  ) = _$FetchStudentsCopyWithImpl<$Res, FetchStudents>;
}

/// @nodoc
class _$FetchStudentsCopyWithImpl<$Res, $Val extends FetchStudents>
    implements $FetchStudentsCopyWith<$Res> {
  _$FetchStudentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchStudents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchStudentsImplCopyWith<$Res> {
  factory _$$FetchStudentsImplCopyWith(
    _$FetchStudentsImpl value,
    $Res Function(_$FetchStudentsImpl) then,
  ) = __$$FetchStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStudentsImplCopyWithImpl<$Res>
    extends _$FetchStudentsCopyWithImpl<$Res, _$FetchStudentsImpl>
    implements _$$FetchStudentsImplCopyWith<$Res> {
  __$$FetchStudentsImplCopyWithImpl(
    _$FetchStudentsImpl _value,
    $Res Function(_$FetchStudentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FetchStudents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchStudentsImpl implements _FetchStudents {
  const _$FetchStudentsImpl();

  @override
  String toString() {
    return 'FetchStudents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FetchStudents implements FetchStudents {
  const factory _FetchStudents() = _$FetchStudentsImpl;
}

/// @nodoc
mixin _$FetchStudentById {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of FetchStudentById
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchStudentByIdCopyWith<FetchStudentById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchStudentByIdCopyWith<$Res> {
  factory $FetchStudentByIdCopyWith(
    FetchStudentById value,
    $Res Function(FetchStudentById) then,
  ) = _$FetchStudentByIdCopyWithImpl<$Res, FetchStudentById>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$FetchStudentByIdCopyWithImpl<$Res, $Val extends FetchStudentById>
    implements $FetchStudentByIdCopyWith<$Res> {
  _$FetchStudentByIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchStudentById
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FetchStudentByIdImplCopyWith<$Res>
    implements $FetchStudentByIdCopyWith<$Res> {
  factory _$$FetchStudentByIdImplCopyWith(
    _$FetchStudentByIdImpl value,
    $Res Function(_$FetchStudentByIdImpl) then,
  ) = __$$FetchStudentByIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchStudentByIdImplCopyWithImpl<$Res>
    extends _$FetchStudentByIdCopyWithImpl<$Res, _$FetchStudentByIdImpl>
    implements _$$FetchStudentByIdImplCopyWith<$Res> {
  __$$FetchStudentByIdImplCopyWithImpl(
    _$FetchStudentByIdImpl _value,
    $Res Function(_$FetchStudentByIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FetchStudentById
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$FetchStudentByIdImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchStudentByIdImpl implements _FetchStudentById {
  const _$FetchStudentByIdImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'FetchStudentById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStudentByIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of FetchStudentById
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStudentByIdImplCopyWith<_$FetchStudentByIdImpl> get copyWith =>
      __$$FetchStudentByIdImplCopyWithImpl<_$FetchStudentByIdImpl>(
        this,
        _$identity,
      );
}

abstract class _FetchStudentById implements FetchStudentById {
  const factory _FetchStudentById(final int id) = _$FetchStudentByIdImpl;

  @override
  int get id;

  /// Create a copy of FetchStudentById
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchStudentByIdImplCopyWith<_$FetchStudentByIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefreshStudents {}

/// @nodoc
abstract class $RefreshStudentsCopyWith<$Res> {
  factory $RefreshStudentsCopyWith(
    RefreshStudents value,
    $Res Function(RefreshStudents) then,
  ) = _$RefreshStudentsCopyWithImpl<$Res, RefreshStudents>;
}

/// @nodoc
class _$RefreshStudentsCopyWithImpl<$Res, $Val extends RefreshStudents>
    implements $RefreshStudentsCopyWith<$Res> {
  _$RefreshStudentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshStudents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefreshStudentsImplCopyWith<$Res> {
  factory _$$RefreshStudentsImplCopyWith(
    _$RefreshStudentsImpl value,
    $Res Function(_$RefreshStudentsImpl) then,
  ) = __$$RefreshStudentsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshStudentsImplCopyWithImpl<$Res>
    extends _$RefreshStudentsCopyWithImpl<$Res, _$RefreshStudentsImpl>
    implements _$$RefreshStudentsImplCopyWith<$Res> {
  __$$RefreshStudentsImplCopyWithImpl(
    _$RefreshStudentsImpl _value,
    $Res Function(_$RefreshStudentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshStudents
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshStudentsImpl implements _RefreshStudents {
  const _$RefreshStudentsImpl();

  @override
  String toString() {
    return 'RefreshStudents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshStudentsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RefreshStudents implements RefreshStudents {
  const factory _RefreshStudents() = _$RefreshStudentsImpl;
}

/// @nodoc
mixin _$UpdateStudent {
  int get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStudentCopyWith<UpdateStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStudentCopyWith<$Res> {
  factory $UpdateStudentCopyWith(
    UpdateStudent value,
    $Res Function(UpdateStudent) then,
  ) = _$UpdateStudentCopyWithImpl<$Res, UpdateStudent>;
  @useResult
  $Res call({int id, Map<String, dynamic> data});
}

/// @nodoc
class _$UpdateStudentCopyWithImpl<$Res, $Val extends UpdateStudent>
    implements $UpdateStudentCopyWith<$Res> {
  _$UpdateStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateStudentImplCopyWith<$Res>
    implements $UpdateStudentCopyWith<$Res> {
  factory _$$UpdateStudentImplCopyWith(
    _$UpdateStudentImpl value,
    $Res Function(_$UpdateStudentImpl) then,
  ) = __$$UpdateStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<String, dynamic> data});
}

/// @nodoc
class __$$UpdateStudentImplCopyWithImpl<$Res>
    extends _$UpdateStudentCopyWithImpl<$Res, _$UpdateStudentImpl>
    implements _$$UpdateStudentImplCopyWith<$Res> {
  __$$UpdateStudentImplCopyWithImpl(
    _$UpdateStudentImpl _value,
    $Res Function(_$UpdateStudentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateStudent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? data = null}) {
    return _then(
      _$UpdateStudentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateStudentImpl implements _UpdateStudent {
  const _$UpdateStudentImpl({
    required this.id,
    required final Map<String, dynamic> data,
  }) : _data = data;

  @override
  final int id;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'UpdateStudent(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UpdateStudent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentImplCopyWith<_$UpdateStudentImpl> get copyWith =>
      __$$UpdateStudentImplCopyWithImpl<_$UpdateStudentImpl>(this, _$identity);
}

abstract class _UpdateStudent implements UpdateStudent {
  const factory _UpdateStudent({
    required final int id,
    required final Map<String, dynamic> data,
  }) = _$UpdateStudentImpl;

  @override
  int get id;
  @override
  Map<String, dynamic> get data;

  /// Create a copy of UpdateStudent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStudentImplCopyWith<_$UpdateStudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentState {
  List<Student> get students => throw _privateConstructorUsedError;
  Student? get currentStudent => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
    StudentState value,
    $Res Function(StudentState) then,
  ) = _$StudentStateCopyWithImpl<$Res, StudentState>;
  @useResult
  $Res call({
    List<Student> students,
    Student? currentStudent,
    String onPageError,
    bool isLoading,
  });

  $StudentCopyWith<$Res>? get currentStudent;
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? currentStudent = freezed,
    Object? onPageError = null,
    Object? isLoading = null,
  }) {
    return _then(
      _value.copyWith(
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<Student>,
            currentStudent: freezed == currentStudent
                ? _value.currentStudent
                : currentStudent // ignore: cast_nullable_to_non_nullable
                      as Student?,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res>? get currentStudent {
    if (_value.currentStudent == null) {
      return null;
    }

    return $StudentCopyWith<$Res>(_value.currentStudent!, (value) {
      return _then(_value.copyWith(currentStudent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StudentStateImplCopyWith<$Res>
    implements $StudentStateCopyWith<$Res> {
  factory _$$StudentStateImplCopyWith(
    _$StudentStateImpl value,
    $Res Function(_$StudentStateImpl) then,
  ) = __$$StudentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Student> students,
    Student? currentStudent,
    String onPageError,
    bool isLoading,
  });

  @override
  $StudentCopyWith<$Res>? get currentStudent;
}

/// @nodoc
class __$$StudentStateImplCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$StudentStateImpl>
    implements _$$StudentStateImplCopyWith<$Res> {
  __$$StudentStateImplCopyWithImpl(
    _$StudentStateImpl _value,
    $Res Function(_$StudentStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
    Object? currentStudent = freezed,
    Object? onPageError = null,
    Object? isLoading = null,
  }) {
    return _then(
      _$StudentStateImpl(
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
        currentStudent: freezed == currentStudent
            ? _value.currentStudent
            : currentStudent // ignore: cast_nullable_to_non_nullable
                  as Student?,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$StudentStateImpl implements _StudentState {
  const _$StudentStateImpl({
    final List<Student> students = const [],
    this.currentStudent,
    this.onPageError = '',
    this.isLoading = false,
  }) : _students = students;

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  final Student? currentStudent;
  @override
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'StudentState(students: $students, currentStudent: $currentStudent, onPageError: $onPageError, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentStateImpl &&
            const DeepCollectionEquality().equals(other._students, _students) &&
            (identical(other.currentStudent, currentStudent) ||
                other.currentStudent == currentStudent) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_students),
    currentStudent,
    onPageError,
    isLoading,
  );

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentStateImplCopyWith<_$StudentStateImpl> get copyWith =>
      __$$StudentStateImplCopyWithImpl<_$StudentStateImpl>(this, _$identity);
}

abstract class _StudentState implements StudentState {
  const factory _StudentState({
    final List<Student> students,
    final Student? currentStudent,
    final String onPageError,
    final bool isLoading,
  }) = _$StudentStateImpl;

  @override
  List<Student> get students;
  @override
  Student? get currentStudent;
  @override
  String get onPageError;
  @override
  bool get isLoading;

  /// Create a copy of StudentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentStateImplCopyWith<_$StudentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
