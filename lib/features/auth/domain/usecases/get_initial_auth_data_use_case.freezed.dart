// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_initial_auth_data_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetInitialAuthDataInput {}

/// @nodoc
abstract class $GetInitialAuthDataInputCopyWith<$Res> {
  factory $GetInitialAuthDataInputCopyWith(
    GetInitialAuthDataInput value,
    $Res Function(GetInitialAuthDataInput) then,
  ) = _$GetInitialAuthDataInputCopyWithImpl<$Res, GetInitialAuthDataInput>;
}

/// @nodoc
class _$GetInitialAuthDataInputCopyWithImpl<
  $Res,
  $Val extends GetInitialAuthDataInput
>
    implements $GetInitialAuthDataInputCopyWith<$Res> {
  _$GetInitialAuthDataInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInitialAuthDataInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInitialAuthDataInputImplCopyWith<$Res> {
  factory _$$GetInitialAuthDataInputImplCopyWith(
    _$GetInitialAuthDataInputImpl value,
    $Res Function(_$GetInitialAuthDataInputImpl) then,
  ) = __$$GetInitialAuthDataInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInitialAuthDataInputImplCopyWithImpl<$Res>
    extends
        _$GetInitialAuthDataInputCopyWithImpl<
          $Res,
          _$GetInitialAuthDataInputImpl
        >
    implements _$$GetInitialAuthDataInputImplCopyWith<$Res> {
  __$$GetInitialAuthDataInputImplCopyWithImpl(
    _$GetInitialAuthDataInputImpl _value,
    $Res Function(_$GetInitialAuthDataInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetInitialAuthDataInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInitialAuthDataInputImpl implements _GetInitialAuthDataInput {
  const _$GetInitialAuthDataInputImpl();

  @override
  String toString() {
    return 'GetInitialAuthDataInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInitialAuthDataInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetInitialAuthDataInput implements GetInitialAuthDataInput {
  const factory _GetInitialAuthDataInput() = _$GetInitialAuthDataInputImpl;
}

/// @nodoc
mixin _$GetInitialAuthDataOutput {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetInitialAuthDataOutputCopyWith<GetInitialAuthDataOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInitialAuthDataOutputCopyWith<$Res> {
  factory $GetInitialAuthDataOutputCopyWith(
    GetInitialAuthDataOutput value,
    $Res Function(GetInitialAuthDataOutput) then,
  ) = _$GetInitialAuthDataOutputCopyWithImpl<$Res, GetInitialAuthDataOutput>;
  @useResult
  $Res call({bool isLoggedIn, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GetInitialAuthDataOutputCopyWithImpl<
  $Res,
  $Val extends GetInitialAuthDataOutput
>
    implements $GetInitialAuthDataOutputCopyWith<$Res> {
  _$GetInitialAuthDataOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoggedIn = null, Object? user = freezed}) {
    return _then(
      _value.copyWith(
            isLoggedIn: null == isLoggedIn
                ? _value.isLoggedIn
                : isLoggedIn // ignore: cast_nullable_to_non_nullable
                      as bool,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetInitialAuthDataOutputImplCopyWith<$Res>
    implements $GetInitialAuthDataOutputCopyWith<$Res> {
  factory _$$GetInitialAuthDataOutputImplCopyWith(
    _$GetInitialAuthDataOutputImpl value,
    $Res Function(_$GetInitialAuthDataOutputImpl) then,
  ) = __$$GetInitialAuthDataOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoggedIn, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GetInitialAuthDataOutputImplCopyWithImpl<$Res>
    extends
        _$GetInitialAuthDataOutputCopyWithImpl<
          $Res,
          _$GetInitialAuthDataOutputImpl
        >
    implements _$$GetInitialAuthDataOutputImplCopyWith<$Res> {
  __$$GetInitialAuthDataOutputImplCopyWithImpl(
    _$GetInitialAuthDataOutputImpl _value,
    $Res Function(_$GetInitialAuthDataOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoggedIn = null, Object? user = freezed}) {
    return _then(
      _$GetInitialAuthDataOutputImpl(
        isLoggedIn: null == isLoggedIn
            ? _value.isLoggedIn
            : isLoggedIn // ignore: cast_nullable_to_non_nullable
                  as bool,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc

class _$GetInitialAuthDataOutputImpl extends _GetInitialAuthDataOutput {
  const _$GetInitialAuthDataOutputImpl({this.isLoggedIn = false, this.user})
    : super._();

  @override
  @JsonKey()
  final bool isLoggedIn;
  @override
  final User? user;

  @override
  String toString() {
    return 'GetInitialAuthDataOutput(isLoggedIn: $isLoggedIn, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInitialAuthDataOutputImpl &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn, user);

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInitialAuthDataOutputImplCopyWith<_$GetInitialAuthDataOutputImpl>
  get copyWith =>
      __$$GetInitialAuthDataOutputImplCopyWithImpl<
        _$GetInitialAuthDataOutputImpl
      >(this, _$identity);
}

abstract class _GetInitialAuthDataOutput extends GetInitialAuthDataOutput {
  const factory _GetInitialAuthDataOutput({
    final bool isLoggedIn,
    final User? user,
  }) = _$GetInitialAuthDataOutputImpl;
  const _GetInitialAuthDataOutput._() : super._();

  @override
  bool get isLoggedIn;
  @override
  User? get user;

  /// Create a copy of GetInitialAuthDataOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInitialAuthDataOutputImplCopyWith<_$GetInitialAuthDataOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
