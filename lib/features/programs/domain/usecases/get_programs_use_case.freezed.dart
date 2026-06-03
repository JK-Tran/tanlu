// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_programs_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetProgramsInput {}

/// @nodoc
abstract class $GetProgramsInputCopyWith<$Res> {
  factory $GetProgramsInputCopyWith(
    GetProgramsInput value,
    $Res Function(GetProgramsInput) then,
  ) = _$GetProgramsInputCopyWithImpl<$Res, GetProgramsInput>;
}

/// @nodoc
class _$GetProgramsInputCopyWithImpl<$Res, $Val extends GetProgramsInput>
    implements $GetProgramsInputCopyWith<$Res> {
  _$GetProgramsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProgramsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProgramsInputImplCopyWith<$Res> {
  factory _$$GetProgramsInputImplCopyWith(
    _$GetProgramsInputImpl value,
    $Res Function(_$GetProgramsInputImpl) then,
  ) = __$$GetProgramsInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProgramsInputImplCopyWithImpl<$Res>
    extends _$GetProgramsInputCopyWithImpl<$Res, _$GetProgramsInputImpl>
    implements _$$GetProgramsInputImplCopyWith<$Res> {
  __$$GetProgramsInputImplCopyWithImpl(
    _$GetProgramsInputImpl _value,
    $Res Function(_$GetProgramsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetProgramsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProgramsInputImpl implements _GetProgramsInput {
  const _$GetProgramsInputImpl();

  @override
  String toString() {
    return 'GetProgramsInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProgramsInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetProgramsInput implements GetProgramsInput {
  const factory _GetProgramsInput() = _$GetProgramsInputImpl;
}

/// @nodoc
mixin _$GetProgramsOutput {
  List<Program> get programs => throw _privateConstructorUsedError;

  /// Create a copy of GetProgramsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProgramsOutputCopyWith<GetProgramsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProgramsOutputCopyWith<$Res> {
  factory $GetProgramsOutputCopyWith(
    GetProgramsOutput value,
    $Res Function(GetProgramsOutput) then,
  ) = _$GetProgramsOutputCopyWithImpl<$Res, GetProgramsOutput>;
  @useResult
  $Res call({List<Program> programs});
}

/// @nodoc
class _$GetProgramsOutputCopyWithImpl<$Res, $Val extends GetProgramsOutput>
    implements $GetProgramsOutputCopyWith<$Res> {
  _$GetProgramsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProgramsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? programs = null}) {
    return _then(
      _value.copyWith(
            programs: null == programs
                ? _value.programs
                : programs // ignore: cast_nullable_to_non_nullable
                      as List<Program>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetProgramsOutputImplCopyWith<$Res>
    implements $GetProgramsOutputCopyWith<$Res> {
  factory _$$GetProgramsOutputImplCopyWith(
    _$GetProgramsOutputImpl value,
    $Res Function(_$GetProgramsOutputImpl) then,
  ) = __$$GetProgramsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Program> programs});
}

/// @nodoc
class __$$GetProgramsOutputImplCopyWithImpl<$Res>
    extends _$GetProgramsOutputCopyWithImpl<$Res, _$GetProgramsOutputImpl>
    implements _$$GetProgramsOutputImplCopyWith<$Res> {
  __$$GetProgramsOutputImplCopyWithImpl(
    _$GetProgramsOutputImpl _value,
    $Res Function(_$GetProgramsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetProgramsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? programs = null}) {
    return _then(
      _$GetProgramsOutputImpl(
        null == programs
            ? _value._programs
            : programs // ignore: cast_nullable_to_non_nullable
                  as List<Program>,
      ),
    );
  }
}

/// @nodoc

class _$GetProgramsOutputImpl implements _GetProgramsOutput {
  const _$GetProgramsOutputImpl(final List<Program> programs)
    : _programs = programs;

  final List<Program> _programs;
  @override
  List<Program> get programs {
    if (_programs is EqualUnmodifiableListView) return _programs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programs);
  }

  @override
  String toString() {
    return 'GetProgramsOutput(programs: $programs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProgramsOutputImpl &&
            const DeepCollectionEquality().equals(other._programs, _programs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_programs));

  /// Create a copy of GetProgramsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProgramsOutputImplCopyWith<_$GetProgramsOutputImpl> get copyWith =>
      __$$GetProgramsOutputImplCopyWithImpl<_$GetProgramsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetProgramsOutput implements GetProgramsOutput {
  const factory _GetProgramsOutput(final List<Program> programs) =
      _$GetProgramsOutputImpl;

  @override
  List<Program> get programs;

  /// Create a copy of GetProgramsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProgramsOutputImplCopyWith<_$GetProgramsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
