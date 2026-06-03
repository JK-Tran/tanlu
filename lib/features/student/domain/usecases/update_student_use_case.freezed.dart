// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_student_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateStudentInput {
  int get id => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStudentInputCopyWith<UpdateStudentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStudentInputCopyWith<$Res> {
  factory $UpdateStudentInputCopyWith(
    UpdateStudentInput value,
    $Res Function(UpdateStudentInput) then,
  ) = _$UpdateStudentInputCopyWithImpl<$Res, UpdateStudentInput>;
  @useResult
  $Res call({int id, Map<String, dynamic> data});
}

/// @nodoc
class _$UpdateStudentInputCopyWithImpl<$Res, $Val extends UpdateStudentInput>
    implements $UpdateStudentInputCopyWith<$Res> {
  _$UpdateStudentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStudentInput
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
abstract class _$$UpdateStudentInputImplCopyWith<$Res>
    implements $UpdateStudentInputCopyWith<$Res> {
  factory _$$UpdateStudentInputImplCopyWith(
    _$UpdateStudentInputImpl value,
    $Res Function(_$UpdateStudentInputImpl) then,
  ) = __$$UpdateStudentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Map<String, dynamic> data});
}

/// @nodoc
class __$$UpdateStudentInputImplCopyWithImpl<$Res>
    extends _$UpdateStudentInputCopyWithImpl<$Res, _$UpdateStudentInputImpl>
    implements _$$UpdateStudentInputImplCopyWith<$Res> {
  __$$UpdateStudentInputImplCopyWithImpl(
    _$UpdateStudentInputImpl _value,
    $Res Function(_$UpdateStudentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? data = null}) {
    return _then(
      _$UpdateStudentInputImpl(
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

class _$UpdateStudentInputImpl implements _UpdateStudentInput {
  const _$UpdateStudentInputImpl({
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
    return 'UpdateStudentInput(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudentInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UpdateStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentInputImplCopyWith<_$UpdateStudentInputImpl> get copyWith =>
      __$$UpdateStudentInputImplCopyWithImpl<_$UpdateStudentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateStudentInput implements UpdateStudentInput {
  const factory _UpdateStudentInput({
    required final int id,
    required final Map<String, dynamic> data,
  }) = _$UpdateStudentInputImpl;

  @override
  int get id;
  @override
  Map<String, dynamic> get data;

  /// Create a copy of UpdateStudentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStudentInputImplCopyWith<_$UpdateStudentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateStudentOutput {
  Student get student => throw _privateConstructorUsedError;

  /// Create a copy of UpdateStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateStudentOutputCopyWith<UpdateStudentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateStudentOutputCopyWith<$Res> {
  factory $UpdateStudentOutputCopyWith(
    UpdateStudentOutput value,
    $Res Function(UpdateStudentOutput) then,
  ) = _$UpdateStudentOutputCopyWithImpl<$Res, UpdateStudentOutput>;
  @useResult
  $Res call({Student student});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class _$UpdateStudentOutputCopyWithImpl<$Res, $Val extends UpdateStudentOutput>
    implements $UpdateStudentOutputCopyWith<$Res> {
  _$UpdateStudentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateStudentOutput
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

  /// Create a copy of UpdateStudentOutput
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
abstract class _$$UpdateStudentOutputImplCopyWith<$Res>
    implements $UpdateStudentOutputCopyWith<$Res> {
  factory _$$UpdateStudentOutputImplCopyWith(
    _$UpdateStudentOutputImpl value,
    $Res Function(_$UpdateStudentOutputImpl) then,
  ) = __$$UpdateStudentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Student student});

  @override
  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$UpdateStudentOutputImplCopyWithImpl<$Res>
    extends _$UpdateStudentOutputCopyWithImpl<$Res, _$UpdateStudentOutputImpl>
    implements _$$UpdateStudentOutputImplCopyWith<$Res> {
  __$$UpdateStudentOutputImplCopyWithImpl(
    _$UpdateStudentOutputImpl _value,
    $Res Function(_$UpdateStudentOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? student = null}) {
    return _then(
      _$UpdateStudentOutputImpl(
        null == student
            ? _value.student
            : student // ignore: cast_nullable_to_non_nullable
                  as Student,
      ),
    );
  }
}

/// @nodoc

class _$UpdateStudentOutputImpl extends _UpdateStudentOutput {
  const _$UpdateStudentOutputImpl(this.student) : super._();

  @override
  final Student student;

  @override
  String toString() {
    return 'UpdateStudentOutput(student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStudentOutputImpl &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  /// Create a copy of UpdateStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStudentOutputImplCopyWith<_$UpdateStudentOutputImpl> get copyWith =>
      __$$UpdateStudentOutputImplCopyWithImpl<_$UpdateStudentOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateStudentOutput extends UpdateStudentOutput {
  const factory _UpdateStudentOutput(final Student student) =
      _$UpdateStudentOutputImpl;
  const _UpdateStudentOutput._() : super._();

  @override
  Student get student;

  /// Create a copy of UpdateStudentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateStudentOutputImplCopyWith<_$UpdateStudentOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
