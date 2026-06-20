// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_student_by_class_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAllStudentByClassIdInput {
  String get classId => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get searchKeyword => throw _privateConstructorUsedError;

  /// Create a copy of GetAllStudentByClassIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllStudentByClassIdInputCopyWith<GetAllStudentByClassIdInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllStudentByClassIdInputCopyWith<$Res> {
  factory $GetAllStudentByClassIdInputCopyWith(
    GetAllStudentByClassIdInput value,
    $Res Function(GetAllStudentByClassIdInput) then,
  ) =
      _$GetAllStudentByClassIdInputCopyWithImpl<
        $Res,
        GetAllStudentByClassIdInput
      >;
  @useResult
  $Res call({String classId, String? gender, String? searchKeyword});
}

/// @nodoc
class _$GetAllStudentByClassIdInputCopyWithImpl<
  $Res,
  $Val extends GetAllStudentByClassIdInput
>
    implements $GetAllStudentByClassIdInputCopyWith<$Res> {
  _$GetAllStudentByClassIdInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllStudentByClassIdInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? gender = freezed,
    Object? searchKeyword = freezed,
  }) {
    return _then(
      _value.copyWith(
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            searchKeyword: freezed == searchKeyword
                ? _value.searchKeyword
                : searchKeyword // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAllStudentByClassIdInputImplCopyWith<$Res>
    implements $GetAllStudentByClassIdInputCopyWith<$Res> {
  factory _$$GetAllStudentByClassIdInputImplCopyWith(
    _$GetAllStudentByClassIdInputImpl value,
    $Res Function(_$GetAllStudentByClassIdInputImpl) then,
  ) = __$$GetAllStudentByClassIdInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, String? gender, String? searchKeyword});
}

/// @nodoc
class __$$GetAllStudentByClassIdInputImplCopyWithImpl<$Res>
    extends
        _$GetAllStudentByClassIdInputCopyWithImpl<
          $Res,
          _$GetAllStudentByClassIdInputImpl
        >
    implements _$$GetAllStudentByClassIdInputImplCopyWith<$Res> {
  __$$GetAllStudentByClassIdInputImplCopyWithImpl(
    _$GetAllStudentByClassIdInputImpl _value,
    $Res Function(_$GetAllStudentByClassIdInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllStudentByClassIdInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
    Object? gender = freezed,
    Object? searchKeyword = freezed,
  }) {
    return _then(
      _$GetAllStudentByClassIdInputImpl(
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        searchKeyword: freezed == searchKeyword
            ? _value.searchKeyword
            : searchKeyword // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GetAllStudentByClassIdInputImpl
    with DiagnosticableTreeMixin
    implements _GetAllStudentByClassIdInput {
  const _$GetAllStudentByClassIdInputImpl({
    required this.classId,
    this.gender,
    this.searchKeyword,
  });

  @override
  final String classId;
  @override
  final String? gender;
  @override
  final String? searchKeyword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetAllStudentByClassIdInput(classId: $classId, gender: $gender, searchKeyword: $searchKeyword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetAllStudentByClassIdInput'))
      ..add(DiagnosticsProperty('classId', classId))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('searchKeyword', searchKeyword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllStudentByClassIdInputImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.searchKeyword, searchKeyword) ||
                other.searchKeyword == searchKeyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId, gender, searchKeyword);

  /// Create a copy of GetAllStudentByClassIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllStudentByClassIdInputImplCopyWith<_$GetAllStudentByClassIdInputImpl>
  get copyWith =>
      __$$GetAllStudentByClassIdInputImplCopyWithImpl<
        _$GetAllStudentByClassIdInputImpl
      >(this, _$identity);
}

abstract class _GetAllStudentByClassIdInput
    implements GetAllStudentByClassIdInput {
  const factory _GetAllStudentByClassIdInput({
    required final String classId,
    final String? gender,
    final String? searchKeyword,
  }) = _$GetAllStudentByClassIdInputImpl;

  @override
  String get classId;
  @override
  String? get gender;
  @override
  String? get searchKeyword;

  /// Create a copy of GetAllStudentByClassIdInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllStudentByClassIdInputImplCopyWith<_$GetAllStudentByClassIdInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAllStudentByClassIdOutput {
  List<Student> get students => throw _privateConstructorUsedError;

  /// Create a copy of GetAllStudentByClassIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAllStudentByClassIdOutputCopyWith<GetAllStudentByClassIdOutput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllStudentByClassIdOutputCopyWith<$Res> {
  factory $GetAllStudentByClassIdOutputCopyWith(
    GetAllStudentByClassIdOutput value,
    $Res Function(GetAllStudentByClassIdOutput) then,
  ) =
      _$GetAllStudentByClassIdOutputCopyWithImpl<
        $Res,
        GetAllStudentByClassIdOutput
      >;
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class _$GetAllStudentByClassIdOutputCopyWithImpl<
  $Res,
  $Val extends GetAllStudentByClassIdOutput
>
    implements $GetAllStudentByClassIdOutputCopyWith<$Res> {
  _$GetAllStudentByClassIdOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAllStudentByClassIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? students = null}) {
    return _then(
      _value.copyWith(
            students: null == students
                ? _value.students
                : students // ignore: cast_nullable_to_non_nullable
                      as List<Student>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAllStudentByClassIdOutputImplCopyWith<$Res>
    implements $GetAllStudentByClassIdOutputCopyWith<$Res> {
  factory _$$GetAllStudentByClassIdOutputImplCopyWith(
    _$GetAllStudentByClassIdOutputImpl value,
    $Res Function(_$GetAllStudentByClassIdOutputImpl) then,
  ) = __$$GetAllStudentByClassIdOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class __$$GetAllStudentByClassIdOutputImplCopyWithImpl<$Res>
    extends
        _$GetAllStudentByClassIdOutputCopyWithImpl<
          $Res,
          _$GetAllStudentByClassIdOutputImpl
        >
    implements _$$GetAllStudentByClassIdOutputImplCopyWith<$Res> {
  __$$GetAllStudentByClassIdOutputImplCopyWithImpl(
    _$GetAllStudentByClassIdOutputImpl _value,
    $Res Function(_$GetAllStudentByClassIdOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAllStudentByClassIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? students = null}) {
    return _then(
      _$GetAllStudentByClassIdOutputImpl(
        null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
      ),
    );
  }
}

/// @nodoc

class _$GetAllStudentByClassIdOutputImpl extends _GetAllStudentByClassIdOutput
    with DiagnosticableTreeMixin {
  const _$GetAllStudentByClassIdOutputImpl(final List<Student> students)
    : _students = students,
      super._();

  final List<Student> _students;
  @override
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetAllStudentByClassIdOutput(students: $students)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetAllStudentByClassIdOutput'))
      ..add(DiagnosticsProperty('students', students));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllStudentByClassIdOutputImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  /// Create a copy of GetAllStudentByClassIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllStudentByClassIdOutputImplCopyWith<
    _$GetAllStudentByClassIdOutputImpl
  >
  get copyWith =>
      __$$GetAllStudentByClassIdOutputImplCopyWithImpl<
        _$GetAllStudentByClassIdOutputImpl
      >(this, _$identity);
}

abstract class _GetAllStudentByClassIdOutput
    extends GetAllStudentByClassIdOutput {
  const factory _GetAllStudentByClassIdOutput(final List<Student> students) =
      _$GetAllStudentByClassIdOutputImpl;
  const _GetAllStudentByClassIdOutput._() : super._();

  @override
  List<Student> get students;

  /// Create a copy of GetAllStudentByClassIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllStudentByClassIdOutputImplCopyWith<
    _$GetAllStudentByClassIdOutputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
