// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_friend_decision_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitFriendDecisionInput {
  String get requestId => throw _privateConstructorUsedError;
  bool get accept => throw _privateConstructorUsedError;
  String get currentUserId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFriendDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFriendDecisionInputCopyWith<SubmitFriendDecisionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFriendDecisionInputCopyWith<$Res> {
  factory $SubmitFriendDecisionInputCopyWith(
    SubmitFriendDecisionInput value,
    $Res Function(SubmitFriendDecisionInput) then,
  ) = _$SubmitFriendDecisionInputCopyWithImpl<$Res, SubmitFriendDecisionInput>;
  @useResult
  $Res call({String requestId, bool accept, String currentUserId});
}

/// @nodoc
class _$SubmitFriendDecisionInputCopyWithImpl<
  $Res,
  $Val extends SubmitFriendDecisionInput
>
    implements $SubmitFriendDecisionInputCopyWith<$Res> {
  _$SubmitFriendDecisionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? accept = null,
    Object? currentUserId = null,
  }) {
    return _then(
      _value.copyWith(
            requestId: null == requestId
                ? _value.requestId
                : requestId // ignore: cast_nullable_to_non_nullable
                      as String,
            accept: null == accept
                ? _value.accept
                : accept // ignore: cast_nullable_to_non_nullable
                      as bool,
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitFriendDecisionInputImplCopyWith<$Res>
    implements $SubmitFriendDecisionInputCopyWith<$Res> {
  factory _$$SubmitFriendDecisionInputImplCopyWith(
    _$SubmitFriendDecisionInputImpl value,
    $Res Function(_$SubmitFriendDecisionInputImpl) then,
  ) = __$$SubmitFriendDecisionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, bool accept, String currentUserId});
}

/// @nodoc
class __$$SubmitFriendDecisionInputImplCopyWithImpl<$Res>
    extends
        _$SubmitFriendDecisionInputCopyWithImpl<
          $Res,
          _$SubmitFriendDecisionInputImpl
        >
    implements _$$SubmitFriendDecisionInputImplCopyWith<$Res> {
  __$$SubmitFriendDecisionInputImplCopyWithImpl(
    _$SubmitFriendDecisionInputImpl _value,
    $Res Function(_$SubmitFriendDecisionInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? accept = null,
    Object? currentUserId = null,
  }) {
    return _then(
      _$SubmitFriendDecisionInputImpl(
        requestId: null == requestId
            ? _value.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as String,
        accept: null == accept
            ? _value.accept
            : accept // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFriendDecisionInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFriendDecisionInput {
  const _$SubmitFriendDecisionInputImpl({
    required this.requestId,
    required this.accept,
    required this.currentUserId,
  });

  @override
  final String requestId;
  @override
  final bool accept;
  @override
  final String currentUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFriendDecisionInput(requestId: $requestId, accept: $accept, currentUserId: $currentUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFriendDecisionInput'))
      ..add(DiagnosticsProperty('requestId', requestId))
      ..add(DiagnosticsProperty('accept', accept))
      ..add(DiagnosticsProperty('currentUserId', currentUserId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendDecisionInputImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, requestId, accept, currentUserId);

  /// Create a copy of SubmitFriendDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFriendDecisionInputImplCopyWith<_$SubmitFriendDecisionInputImpl>
  get copyWith =>
      __$$SubmitFriendDecisionInputImplCopyWithImpl<
        _$SubmitFriendDecisionInputImpl
      >(this, _$identity);
}

abstract class _SubmitFriendDecisionInput implements SubmitFriendDecisionInput {
  const factory _SubmitFriendDecisionInput({
    required final String requestId,
    required final bool accept,
    required final String currentUserId,
  }) = _$SubmitFriendDecisionInputImpl;

  @override
  String get requestId;
  @override
  bool get accept;
  @override
  String get currentUserId;

  /// Create a copy of SubmitFriendDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFriendDecisionInputImplCopyWith<_$SubmitFriendDecisionInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFriendDecisionOutput {}

/// @nodoc
abstract class $SubmitFriendDecisionOutputCopyWith<$Res> {
  factory $SubmitFriendDecisionOutputCopyWith(
    SubmitFriendDecisionOutput value,
    $Res Function(SubmitFriendDecisionOutput) then,
  ) =
      _$SubmitFriendDecisionOutputCopyWithImpl<
        $Res,
        SubmitFriendDecisionOutput
      >;
}

/// @nodoc
class _$SubmitFriendDecisionOutputCopyWithImpl<
  $Res,
  $Val extends SubmitFriendDecisionOutput
>
    implements $SubmitFriendDecisionOutputCopyWith<$Res> {
  _$SubmitFriendDecisionOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitFriendDecisionOutputImplCopyWith<$Res> {
  factory _$$SubmitFriendDecisionOutputImplCopyWith(
    _$SubmitFriendDecisionOutputImpl value,
    $Res Function(_$SubmitFriendDecisionOutputImpl) then,
  ) = __$$SubmitFriendDecisionOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFriendDecisionOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitFriendDecisionOutputCopyWithImpl<
          $Res,
          _$SubmitFriendDecisionOutputImpl
        >
    implements _$$SubmitFriendDecisionOutputImplCopyWith<$Res> {
  __$$SubmitFriendDecisionOutputImplCopyWithImpl(
    _$SubmitFriendDecisionOutputImpl _value,
    $Res Function(_$SubmitFriendDecisionOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitFriendDecisionOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFriendDecisionOutput {
  const _$SubmitFriendDecisionOutputImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFriendDecisionOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SubmitFriendDecisionOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendDecisionOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitFriendDecisionOutput
    implements SubmitFriendDecisionOutput {
  const factory _SubmitFriendDecisionOutput() =
      _$SubmitFriendDecisionOutputImpl;
}
