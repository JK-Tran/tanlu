// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_program_by_id_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetProgramByIdInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of GetProgramByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProgramByIdInputCopyWith<GetProgramByIdInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProgramByIdInputCopyWith<$Res> {
  factory $GetProgramByIdInputCopyWith(
    GetProgramByIdInput value,
    $Res Function(GetProgramByIdInput) then,
  ) = _$GetProgramByIdInputCopyWithImpl<$Res, GetProgramByIdInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetProgramByIdInputCopyWithImpl<$Res, $Val extends GetProgramByIdInput>
    implements $GetProgramByIdInputCopyWith<$Res> {
  _$GetProgramByIdInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProgramByIdInput
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
abstract class _$$GetProgramByIdInputImplCopyWith<$Res>
    implements $GetProgramByIdInputCopyWith<$Res> {
  factory _$$GetProgramByIdInputImplCopyWith(
    _$GetProgramByIdInputImpl value,
    $Res Function(_$GetProgramByIdInputImpl) then,
  ) = __$$GetProgramByIdInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetProgramByIdInputImplCopyWithImpl<$Res>
    extends _$GetProgramByIdInputCopyWithImpl<$Res, _$GetProgramByIdInputImpl>
    implements _$$GetProgramByIdInputImplCopyWith<$Res> {
  __$$GetProgramByIdInputImplCopyWithImpl(
    _$GetProgramByIdInputImpl _value,
    $Res Function(_$GetProgramByIdInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetProgramByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetProgramByIdInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetProgramByIdInputImpl implements _GetProgramByIdInput {
  const _$GetProgramByIdInputImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'GetProgramByIdInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProgramByIdInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetProgramByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProgramByIdInputImplCopyWith<_$GetProgramByIdInputImpl> get copyWith =>
      __$$GetProgramByIdInputImplCopyWithImpl<_$GetProgramByIdInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetProgramByIdInput implements GetProgramByIdInput {
  const factory _GetProgramByIdInput({required final int id}) =
      _$GetProgramByIdInputImpl;

  @override
  int get id;

  /// Create a copy of GetProgramByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProgramByIdInputImplCopyWith<_$GetProgramByIdInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProgramByIdOutput {
  Program get program => throw _privateConstructorUsedError;

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProgramByIdOutputCopyWith<GetProgramByIdOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProgramByIdOutputCopyWith<$Res> {
  factory $GetProgramByIdOutputCopyWith(
    GetProgramByIdOutput value,
    $Res Function(GetProgramByIdOutput) then,
  ) = _$GetProgramByIdOutputCopyWithImpl<$Res, GetProgramByIdOutput>;
  @useResult
  $Res call({Program program});

  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class _$GetProgramByIdOutputCopyWithImpl<
  $Res,
  $Val extends GetProgramByIdOutput
>
    implements $GetProgramByIdOutputCopyWith<$Res> {
  _$GetProgramByIdOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? program = null}) {
    return _then(
      _value.copyWith(
            program: null == program
                ? _value.program
                : program // ignore: cast_nullable_to_non_nullable
                      as Program,
          )
          as $Val,
    );
  }

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProgramCopyWith<$Res> get program {
    return $ProgramCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetProgramByIdOutputImplCopyWith<$Res>
    implements $GetProgramByIdOutputCopyWith<$Res> {
  factory _$$GetProgramByIdOutputImplCopyWith(
    _$GetProgramByIdOutputImpl value,
    $Res Function(_$GetProgramByIdOutputImpl) then,
  ) = __$$GetProgramByIdOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Program program});

  @override
  $ProgramCopyWith<$Res> get program;
}

/// @nodoc
class __$$GetProgramByIdOutputImplCopyWithImpl<$Res>
    extends _$GetProgramByIdOutputCopyWithImpl<$Res, _$GetProgramByIdOutputImpl>
    implements _$$GetProgramByIdOutputImplCopyWith<$Res> {
  __$$GetProgramByIdOutputImplCopyWithImpl(
    _$GetProgramByIdOutputImpl _value,
    $Res Function(_$GetProgramByIdOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? program = null}) {
    return _then(
      _$GetProgramByIdOutputImpl(
        null == program
            ? _value.program
            : program // ignore: cast_nullable_to_non_nullable
                  as Program,
      ),
    );
  }
}

/// @nodoc

class _$GetProgramByIdOutputImpl implements _GetProgramByIdOutput {
  const _$GetProgramByIdOutputImpl(this.program);

  @override
  final Program program;

  @override
  String toString() {
    return 'GetProgramByIdOutput(program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProgramByIdOutputImpl &&
            (identical(other.program, program) || other.program == program));
  }

  @override
  int get hashCode => Object.hash(runtimeType, program);

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProgramByIdOutputImplCopyWith<_$GetProgramByIdOutputImpl>
  get copyWith =>
      __$$GetProgramByIdOutputImplCopyWithImpl<_$GetProgramByIdOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetProgramByIdOutput implements GetProgramByIdOutput {
  const factory _GetProgramByIdOutput(final Program program) =
      _$GetProgramByIdOutputImpl;

  @override
  Program get program;

  /// Create a copy of GetProgramByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProgramByIdOutputImplCopyWith<_$GetProgramByIdOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
