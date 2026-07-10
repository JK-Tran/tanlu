// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_students_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetStudentsInput {}

/// @nodoc
abstract class $GetStudentsInputCopyWith<$Res> {
  factory $GetStudentsInputCopyWith(
    GetStudentsInput value,
    $Res Function(GetStudentsInput) then,
  ) = _$GetStudentsInputCopyWithImpl<$Res, GetStudentsInput>;
}

/// @nodoc
class _$GetStudentsInputCopyWithImpl<$Res, $Val extends GetStudentsInput>
    implements $GetStudentsInputCopyWith<$Res> {
  _$GetStudentsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetStudentsInputImplCopyWith<$Res> {
  factory _$$GetStudentsInputImplCopyWith(
    _$GetStudentsInputImpl value,
    $Res Function(_$GetStudentsInputImpl) then,
  ) = __$$GetStudentsInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStudentsInputImplCopyWithImpl<$Res>
    extends _$GetStudentsInputCopyWithImpl<$Res, _$GetStudentsInputImpl>
    implements _$$GetStudentsInputImplCopyWith<$Res> {
  __$$GetStudentsInputImplCopyWithImpl(
    _$GetStudentsInputImpl _value,
    $Res Function(_$GetStudentsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetStudentsInputImpl implements _GetStudentsInput {
  const _$GetStudentsInputImpl();

  @override
  String toString() {
    return 'GetStudentsInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStudentsInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetStudentsInput implements GetStudentsInput {
  const factory _GetStudentsInput() = _$GetStudentsInputImpl;
}

/// @nodoc
mixin _$GetStudentsOutput {
  List<Student> get students => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentsOutputCopyWith<GetStudentsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentsOutputCopyWith<$Res> {
  factory $GetStudentsOutputCopyWith(
    GetStudentsOutput value,
    $Res Function(GetStudentsOutput) then,
  ) = _$GetStudentsOutputCopyWithImpl<$Res, GetStudentsOutput>;
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class _$GetStudentsOutputCopyWithImpl<$Res, $Val extends GetStudentsOutput>
    implements $GetStudentsOutputCopyWith<$Res> {
  _$GetStudentsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentsOutput
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
abstract class _$$GetStudentsOutputImplCopyWith<$Res>
    implements $GetStudentsOutputCopyWith<$Res> {
  factory _$$GetStudentsOutputImplCopyWith(
    _$GetStudentsOutputImpl value,
    $Res Function(_$GetStudentsOutputImpl) then,
  ) = __$$GetStudentsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Student> students});
}

/// @nodoc
class __$$GetStudentsOutputImplCopyWithImpl<$Res>
    extends _$GetStudentsOutputCopyWithImpl<$Res, _$GetStudentsOutputImpl>
    implements _$$GetStudentsOutputImplCopyWith<$Res> {
  __$$GetStudentsOutputImplCopyWithImpl(
    _$GetStudentsOutputImpl _value,
    $Res Function(_$GetStudentsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? students = null}) {
    return _then(
      _$GetStudentsOutputImpl(
        students: null == students
            ? _value._students
            : students // ignore: cast_nullable_to_non_nullable
                  as List<Student>,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentsOutputImpl implements _GetStudentsOutput {
  const _$GetStudentsOutputImpl({final List<Student> students = const []})
    : _students = students;

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'GetStudentsOutput(students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentsOutputImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  /// Create a copy of GetStudentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentsOutputImplCopyWith<_$GetStudentsOutputImpl> get copyWith =>
      __$$GetStudentsOutputImplCopyWithImpl<_$GetStudentsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetStudentsOutput implements GetStudentsOutput {
  const factory _GetStudentsOutput({final List<Student> students}) =
      _$GetStudentsOutputImpl;

  @override
  List<Student> get students;

  /// Create a copy of GetStudentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentsOutputImplCopyWith<_$GetStudentsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
