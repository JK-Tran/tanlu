// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_student_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetStudentInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentInputCopyWith<GetStudentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentInputCopyWith<$Res> {
  factory $GetStudentInputCopyWith(
    GetStudentInput value,
    $Res Function(GetStudentInput) then,
  ) = _$GetStudentInputCopyWithImpl<$Res, GetStudentInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetStudentInputCopyWithImpl<$Res, $Val extends GetStudentInput>
    implements $GetStudentInputCopyWith<$Res> {
  _$GetStudentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentInput
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
abstract class _$$GetStudentInputImplCopyWith<$Res>
    implements $GetStudentInputCopyWith<$Res> {
  factory _$$GetStudentInputImplCopyWith(
    _$GetStudentInputImpl value,
    $Res Function(_$GetStudentInputImpl) then,
  ) = __$$GetStudentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetStudentInputImplCopyWithImpl<$Res>
    extends _$GetStudentInputCopyWithImpl<$Res, _$GetStudentInputImpl>
    implements _$$GetStudentInputImplCopyWith<$Res> {
  __$$GetStudentInputImplCopyWithImpl(
    _$GetStudentInputImpl _value,
    $Res Function(_$GetStudentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetStudentInputImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentInputImpl implements _GetStudentInput {
  const _$GetStudentInputImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GetStudentInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentInputImplCopyWith<_$GetStudentInputImpl> get copyWith =>
      __$$GetStudentInputImplCopyWithImpl<_$GetStudentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetStudentInput implements GetStudentInput {
  const factory _GetStudentInput(final int id) = _$GetStudentInputImpl;

  @override
  int get id;

  /// Create a copy of GetStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentInputImplCopyWith<_$GetStudentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetStudentOutput {
  Student get student => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentOutputCopyWith<GetStudentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentOutputCopyWith<$Res> {
  factory $GetStudentOutputCopyWith(
    GetStudentOutput value,
    $Res Function(GetStudentOutput) then,
  ) = _$GetStudentOutputCopyWithImpl<$Res, GetStudentOutput>;
  @useResult
  $Res call({Student student});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$GetStudentOutputCopyWithImpl<$Res, $Val extends GetStudentOutput>
    implements $GetStudentOutputCopyWith<$Res> {
  _$GetStudentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? student = null}) {
    return _then(
      _value.copyWith(
            student: null == student
                ? _value.student
                : student // ignore: cast_nullable_to_non_nullable
                      as Student,
          )
          as $Val,
    );
  }

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStudentOutputImplCopyWith<$Res>
    implements $GetStudentOutputCopyWith<$Res> {
  factory _$$GetStudentOutputImplCopyWith(
    _$GetStudentOutputImpl value,
    $Res Function(_$GetStudentOutputImpl) then,
  ) = __$$GetStudentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Student student});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$GetStudentOutputImplCopyWithImpl<$Res>
    extends _$GetStudentOutputCopyWithImpl<$Res, _$GetStudentOutputImpl>
    implements _$$GetStudentOutputImplCopyWith<$Res> {
  __$$GetStudentOutputImplCopyWithImpl(
    _$GetStudentOutputImpl _value,
    $Res Function(_$GetStudentOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? student = null}) {
    return _then(
      _$GetStudentOutputImpl(
        null == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as Student,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentOutputImpl extends _GetStudentOutput {
  const _$GetStudentOutputImpl(this.student) : super._();

  @override
  final Student student;

  @override
  String toString() {
    return 'GetStudentOutput(student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentOutputImpl &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentOutputImplCopyWith<_$GetStudentOutputImpl> get copyWith =>
      __$$GetStudentOutputImplCopyWithImpl<_$GetStudentOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetStudentOutput extends GetStudentOutput {
  const factory _GetStudentOutput(final Student student) =
      _$GetStudentOutputImpl;
  const _GetStudentOutput._() : super._();

  @override
  Student get student;

  /// Create a copy of GetStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentOutputImplCopyWith<_$GetStudentOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
