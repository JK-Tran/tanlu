// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChangePasswordInput {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordInputCopyWith<ChangePasswordInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordInputCopyWith<$Res> {
  factory $ChangePasswordInputCopyWith(
    ChangePasswordInput value,
    $Res Function(ChangePasswordInput) then,
  ) = _$ChangePasswordInputCopyWithImpl<$Res, ChangePasswordInput>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ChangePasswordInputCopyWithImpl<$Res, $Val extends ChangePasswordInput>
    implements $ChangePasswordInputCopyWith<$Res> {
  _$ChangePasswordInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            oldPassword: null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangePasswordInputImplCopyWith<$Res>
    implements $ChangePasswordInputCopyWith<$Res> {
  factory _$$ChangePasswordInputImplCopyWith(
    _$ChangePasswordInputImpl value,
    $Res Function(_$ChangePasswordInputImpl) then,
  ) = __$$ChangePasswordInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$ChangePasswordInputImplCopyWithImpl<$Res>
    extends _$ChangePasswordInputCopyWithImpl<$Res, _$ChangePasswordInputImpl>
    implements _$$ChangePasswordInputImplCopyWith<$Res> {
  __$$ChangePasswordInputImplCopyWithImpl(
    _$ChangePasswordInputImpl _value,
    $Res Function(_$ChangePasswordInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangePasswordInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _$ChangePasswordInputImpl(
        oldPassword: null == oldPassword
            ? _value.oldPassword
            : oldPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangePasswordInputImpl implements _ChangePasswordInput {
  const _$ChangePasswordInputImpl({
    required this.oldPassword,
    required this.newPassword,
  });

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordInput(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordInputImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ChangePasswordInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordInputImplCopyWith<_$ChangePasswordInputImpl> get copyWith =>
      __$$ChangePasswordInputImplCopyWithImpl<_$ChangePasswordInputImpl>(
        this,
        _$identity,
      );
}

abstract class _ChangePasswordInput implements ChangePasswordInput {
  const factory _ChangePasswordInput({
    required final String oldPassword,
    required final String newPassword,
  }) = _$ChangePasswordInputImpl;

  @override
  String get oldPassword;
  @override
  String get newPassword;

  /// Create a copy of ChangePasswordInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordInputImplCopyWith<_$ChangePasswordInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangePasswordOutput {}

/// @nodoc
abstract class $ChangePasswordOutputCopyWith<$Res> {
  factory $ChangePasswordOutputCopyWith(
    ChangePasswordOutput value,
    $Res Function(ChangePasswordOutput) then,
  ) = _$ChangePasswordOutputCopyWithImpl<$Res, ChangePasswordOutput>;
}

/// @nodoc
class _$ChangePasswordOutputCopyWithImpl<
  $Res,
  $Val extends ChangePasswordOutput
>
    implements $ChangePasswordOutputCopyWith<$Res> {
  _$ChangePasswordOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangePasswordOutputImplCopyWith<$Res> {
  factory _$$ChangePasswordOutputImplCopyWith(
    _$ChangePasswordOutputImpl value,
    $Res Function(_$ChangePasswordOutputImpl) then,
  ) = __$$ChangePasswordOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePasswordOutputImplCopyWithImpl<$Res>
    extends _$ChangePasswordOutputCopyWithImpl<$Res, _$ChangePasswordOutputImpl>
    implements _$$ChangePasswordOutputImplCopyWith<$Res> {
  __$$ChangePasswordOutputImplCopyWithImpl(
    _$ChangePasswordOutputImpl _value,
    $Res Function(_$ChangePasswordOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangePasswordOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChangePasswordOutputImpl extends _ChangePasswordOutput {
  const _$ChangePasswordOutputImpl() : super._();

  @override
  String toString() {
    return 'ChangePasswordOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ChangePasswordOutput extends ChangePasswordOutput {
  const factory _ChangePasswordOutput() = _$ChangePasswordOutputImpl;
  const _ChangePasswordOutput._() : super._();
}
