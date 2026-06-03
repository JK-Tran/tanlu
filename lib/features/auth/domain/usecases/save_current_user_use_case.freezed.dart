// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_current_user_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SaveCurrentUserInput {
  User get currentUser => throw _privateConstructorUsedError;

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SaveCurrentUserInputCopyWith<SaveCurrentUserInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveCurrentUserInputCopyWith<$Res> {
  factory $SaveCurrentUserInputCopyWith(
    SaveCurrentUserInput value,
    $Res Function(SaveCurrentUserInput) then,
  ) = _$SaveCurrentUserInputCopyWithImpl<$Res, SaveCurrentUserInput>;
  @useResult
  $Res call({User currentUser});

  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$SaveCurrentUserInputCopyWithImpl<
  $Res,
  $Val extends SaveCurrentUserInput
>
    implements $SaveCurrentUserInputCopyWith<$Res> {
  _$SaveCurrentUserInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUser = null}) {
    return _then(
      _value.copyWith(
            currentUser: null == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                      as User,
          )
          as $Val,
    );
  }

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get currentUser {
    return $UserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveCurrentUserInputImplCopyWith<$Res>
    implements $SaveCurrentUserInputCopyWith<$Res> {
  factory _$$SaveCurrentUserInputImplCopyWith(
    _$SaveCurrentUserInputImpl value,
    $Res Function(_$SaveCurrentUserInputImpl) then,
  ) = __$$SaveCurrentUserInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User currentUser});

  @override
  $UserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$SaveCurrentUserInputImplCopyWithImpl<$Res>
    extends _$SaveCurrentUserInputCopyWithImpl<$Res, _$SaveCurrentUserInputImpl>
    implements _$$SaveCurrentUserInputImplCopyWith<$Res> {
  __$$SaveCurrentUserInputImplCopyWithImpl(
    _$SaveCurrentUserInputImpl _value,
    $Res Function(_$SaveCurrentUserInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUser = null}) {
    return _then(
      _$SaveCurrentUserInputImpl(
        currentUser: null == currentUser
            ? _value.currentUser
            : currentUser // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$SaveCurrentUserInputImpl implements _SaveCurrentUserInput {
  const _$SaveCurrentUserInputImpl({required this.currentUser});

  @override
  final User currentUser;

  @override
  String toString() {
    return 'SaveCurrentUserInput(currentUser: $currentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCurrentUserInputImpl &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUser);

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCurrentUserInputImplCopyWith<_$SaveCurrentUserInputImpl>
  get copyWith =>
      __$$SaveCurrentUserInputImplCopyWithImpl<_$SaveCurrentUserInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SaveCurrentUserInput implements SaveCurrentUserInput {
  const factory _SaveCurrentUserInput({required final User currentUser}) =
      _$SaveCurrentUserInputImpl;

  @override
  User get currentUser;

  /// Create a copy of SaveCurrentUserInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveCurrentUserInputImplCopyWith<_$SaveCurrentUserInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveCurrentUserOutput {}

/// @nodoc
abstract class $SaveCurrentUserOutputCopyWith<$Res> {
  factory $SaveCurrentUserOutputCopyWith(
    SaveCurrentUserOutput value,
    $Res Function(SaveCurrentUserOutput) then,
  ) = _$SaveCurrentUserOutputCopyWithImpl<$Res, SaveCurrentUserOutput>;
}

/// @nodoc
class _$SaveCurrentUserOutputCopyWithImpl<
  $Res,
  $Val extends SaveCurrentUserOutput
>
    implements $SaveCurrentUserOutputCopyWith<$Res> {
  _$SaveCurrentUserOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SaveCurrentUserOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveCurrentUserOutputImplCopyWith<$Res> {
  factory _$$SaveCurrentUserOutputImplCopyWith(
    _$SaveCurrentUserOutputImpl value,
    $Res Function(_$SaveCurrentUserOutputImpl) then,
  ) = __$$SaveCurrentUserOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveCurrentUserOutputImplCopyWithImpl<$Res>
    extends
        _$SaveCurrentUserOutputCopyWithImpl<$Res, _$SaveCurrentUserOutputImpl>
    implements _$$SaveCurrentUserOutputImplCopyWith<$Res> {
  __$$SaveCurrentUserOutputImplCopyWithImpl(
    _$SaveCurrentUserOutputImpl _value,
    $Res Function(_$SaveCurrentUserOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SaveCurrentUserOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveCurrentUserOutputImpl extends _SaveCurrentUserOutput {
  const _$SaveCurrentUserOutputImpl() : super._();

  @override
  String toString() {
    return 'SaveCurrentUserOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCurrentUserOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SaveCurrentUserOutput extends SaveCurrentUserOutput {
  const factory _SaveCurrentUserOutput() = _$SaveCurrentUserOutputImpl;
  const _SaveCurrentUserOutput._() : super._();
}
