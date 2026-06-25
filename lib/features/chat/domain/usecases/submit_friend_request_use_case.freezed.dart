// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_friend_request_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitFriendRequestInput {
  String get fromUserId => throw _privateConstructorUsedError;
  String get toUserId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFriendRequestInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFriendRequestInputCopyWith<SubmitFriendRequestInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFriendRequestInputCopyWith<$Res> {
  factory $SubmitFriendRequestInputCopyWith(
    SubmitFriendRequestInput value,
    $Res Function(SubmitFriendRequestInput) then,
  ) = _$SubmitFriendRequestInputCopyWithImpl<$Res, SubmitFriendRequestInput>;
  @useResult
  $Res call({String fromUserId, String toUserId});
}

/// @nodoc
class _$SubmitFriendRequestInputCopyWithImpl<
  $Res,
  $Val extends SubmitFriendRequestInput
>
    implements $SubmitFriendRequestInputCopyWith<$Res> {
  _$SubmitFriendRequestInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendRequestInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromUserId = null, Object? toUserId = null}) {
    return _then(
      _value.copyWith(
            fromUserId: null == fromUserId
                ? _value.fromUserId
                : fromUserId // ignore: cast_nullable_to_non_nullable
                      as String,
            toUserId: null == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitFriendRequestInputImplCopyWith<$Res>
    implements $SubmitFriendRequestInputCopyWith<$Res> {
  factory _$$SubmitFriendRequestInputImplCopyWith(
    _$SubmitFriendRequestInputImpl value,
    $Res Function(_$SubmitFriendRequestInputImpl) then,
  ) = __$$SubmitFriendRequestInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fromUserId, String toUserId});
}

/// @nodoc
class __$$SubmitFriendRequestInputImplCopyWithImpl<$Res>
    extends
        _$SubmitFriendRequestInputCopyWithImpl<
          $Res,
          _$SubmitFriendRequestInputImpl
        >
    implements _$$SubmitFriendRequestInputImplCopyWith<$Res> {
  __$$SubmitFriendRequestInputImplCopyWithImpl(
    _$SubmitFriendRequestInputImpl _value,
    $Res Function(_$SubmitFriendRequestInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendRequestInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fromUserId = null, Object? toUserId = null}) {
    return _then(
      _$SubmitFriendRequestInputImpl(
        fromUserId: null == fromUserId
            ? _value.fromUserId
            : fromUserId // ignore: cast_nullable_to_non_nullable
                  as String,
        toUserId: null == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFriendRequestInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFriendRequestInput {
  const _$SubmitFriendRequestInputImpl({
    required this.fromUserId,
    required this.toUserId,
  });

  @override
  final String fromUserId;
  @override
  final String toUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFriendRequestInput(fromUserId: $fromUserId, toUserId: $toUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFriendRequestInput'))
      ..add(DiagnosticsProperty('fromUserId', fromUserId))
      ..add(DiagnosticsProperty('toUserId', toUserId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendRequestInputImpl &&
            (identical(other.fromUserId, fromUserId) ||
                other.fromUserId == fromUserId) &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromUserId, toUserId);

  /// Create a copy of SubmitFriendRequestInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFriendRequestInputImplCopyWith<_$SubmitFriendRequestInputImpl>
  get copyWith =>
      __$$SubmitFriendRequestInputImplCopyWithImpl<
        _$SubmitFriendRequestInputImpl
      >(this, _$identity);
}

abstract class _SubmitFriendRequestInput implements SubmitFriendRequestInput {
  const factory _SubmitFriendRequestInput({
    required final String fromUserId,
    required final String toUserId,
  }) = _$SubmitFriendRequestInputImpl;

  @override
  String get fromUserId;
  @override
  String get toUserId;

  /// Create a copy of SubmitFriendRequestInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFriendRequestInputImplCopyWith<_$SubmitFriendRequestInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFriendRequestOutput {}

/// @nodoc
abstract class $SubmitFriendRequestOutputCopyWith<$Res> {
  factory $SubmitFriendRequestOutputCopyWith(
    SubmitFriendRequestOutput value,
    $Res Function(SubmitFriendRequestOutput) then,
  ) = _$SubmitFriendRequestOutputCopyWithImpl<$Res, SubmitFriendRequestOutput>;
}

/// @nodoc
class _$SubmitFriendRequestOutputCopyWithImpl<
  $Res,
  $Val extends SubmitFriendRequestOutput
>
    implements $SubmitFriendRequestOutputCopyWith<$Res> {
  _$SubmitFriendRequestOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendRequestOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitFriendRequestOutputImplCopyWith<$Res> {
  factory _$$SubmitFriendRequestOutputImplCopyWith(
    _$SubmitFriendRequestOutputImpl value,
    $Res Function(_$SubmitFriendRequestOutputImpl) then,
  ) = __$$SubmitFriendRequestOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFriendRequestOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitFriendRequestOutputCopyWithImpl<
          $Res,
          _$SubmitFriendRequestOutputImpl
        >
    implements _$$SubmitFriendRequestOutputImplCopyWith<$Res> {
  __$$SubmitFriendRequestOutputImplCopyWithImpl(
    _$SubmitFriendRequestOutputImpl _value,
    $Res Function(_$SubmitFriendRequestOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendRequestOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitFriendRequestOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFriendRequestOutput {
  const _$SubmitFriendRequestOutputImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFriendRequestOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SubmitFriendRequestOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendRequestOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitFriendRequestOutput implements SubmitFriendRequestOutput {
  const factory _SubmitFriendRequestOutput() = _$SubmitFriendRequestOutputImpl;
}
