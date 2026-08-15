// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_message_read_status_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateMessageReadStatusInput {
  int get conversationId => throw _privateConstructorUsedError;
  int get messageId => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMessageReadStatusInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMessageReadStatusInputCopyWith<UpdateMessageReadStatusInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMessageReadStatusInputCopyWith<$Res> {
  factory $UpdateMessageReadStatusInputCopyWith(
    UpdateMessageReadStatusInput value,
    $Res Function(UpdateMessageReadStatusInput) then,
  ) =
      _$UpdateMessageReadStatusInputCopyWithImpl<
        $Res,
        UpdateMessageReadStatusInput
      >;
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class _$UpdateMessageReadStatusInputCopyWithImpl<
  $Res,
  $Val extends UpdateMessageReadStatusInput
>
    implements $UpdateMessageReadStatusInputCopyWith<$Res> {
  _$UpdateMessageReadStatusInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMessageReadStatusInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            messageId: null == messageId
                ? _value.messageId
                : messageId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateMessageReadStatusInputImplCopyWith<$Res>
    implements $UpdateMessageReadStatusInputCopyWith<$Res> {
  factory _$$UpdateMessageReadStatusInputImplCopyWith(
    _$UpdateMessageReadStatusInputImpl value,
    $Res Function(_$UpdateMessageReadStatusInputImpl) then,
  ) = __$$UpdateMessageReadStatusInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class __$$UpdateMessageReadStatusInputImplCopyWithImpl<$Res>
    extends
        _$UpdateMessageReadStatusInputCopyWithImpl<
          $Res,
          _$UpdateMessageReadStatusInputImpl
        >
    implements _$$UpdateMessageReadStatusInputImplCopyWith<$Res> {
  __$$UpdateMessageReadStatusInputImplCopyWithImpl(
    _$UpdateMessageReadStatusInputImpl _value,
    $Res Function(_$UpdateMessageReadStatusInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateMessageReadStatusInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _$UpdateMessageReadStatusInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$UpdateMessageReadStatusInputImpl
    implements _UpdateMessageReadStatusInput {
  const _$UpdateMessageReadStatusInputImpl({
    required this.conversationId,
    required this.messageId,
  });

  @override
  final int conversationId;
  @override
  final int messageId;

  @override
  String toString() {
    return 'UpdateMessageReadStatusInput(conversationId: $conversationId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageReadStatusInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, messageId);

  /// Create a copy of UpdateMessageReadStatusInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageReadStatusInputImplCopyWith<
    _$UpdateMessageReadStatusInputImpl
  >
  get copyWith =>
      __$$UpdateMessageReadStatusInputImplCopyWithImpl<
        _$UpdateMessageReadStatusInputImpl
      >(this, _$identity);
}

abstract class _UpdateMessageReadStatusInput
    implements UpdateMessageReadStatusInput {
  const factory _UpdateMessageReadStatusInput({
    required final int conversationId,
    required final int messageId,
  }) = _$UpdateMessageReadStatusInputImpl;

  @override
  int get conversationId;
  @override
  int get messageId;

  /// Create a copy of UpdateMessageReadStatusInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMessageReadStatusInputImplCopyWith<
    _$UpdateMessageReadStatusInputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateMessageReadStatusOutput {
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of UpdateMessageReadStatusOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateMessageReadStatusOutputCopyWith<UpdateMessageReadStatusOutput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateMessageReadStatusOutputCopyWith<$Res> {
  factory $UpdateMessageReadStatusOutputCopyWith(
    UpdateMessageReadStatusOutput value,
    $Res Function(UpdateMessageReadStatusOutput) then,
  ) =
      _$UpdateMessageReadStatusOutputCopyWithImpl<
        $Res,
        UpdateMessageReadStatusOutput
      >;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$UpdateMessageReadStatusOutputCopyWithImpl<
  $Res,
  $Val extends UpdateMessageReadStatusOutput
>
    implements $UpdateMessageReadStatusOutputCopyWith<$Res> {
  _$UpdateMessageReadStatusOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateMessageReadStatusOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateMessageReadStatusOutputImplCopyWith<$Res>
    implements $UpdateMessageReadStatusOutputCopyWith<$Res> {
  factory _$$UpdateMessageReadStatusOutputImplCopyWith(
    _$UpdateMessageReadStatusOutputImpl value,
    $Res Function(_$UpdateMessageReadStatusOutputImpl) then,
  ) = __$$UpdateMessageReadStatusOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$UpdateMessageReadStatusOutputImplCopyWithImpl<$Res>
    extends
        _$UpdateMessageReadStatusOutputCopyWithImpl<
          $Res,
          _$UpdateMessageReadStatusOutputImpl
        >
    implements _$$UpdateMessageReadStatusOutputImplCopyWith<$Res> {
  __$$UpdateMessageReadStatusOutputImplCopyWithImpl(
    _$UpdateMessageReadStatusOutputImpl _value,
    $Res Function(_$UpdateMessageReadStatusOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateMessageReadStatusOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null}) {
    return _then(
      _$UpdateMessageReadStatusOutputImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$UpdateMessageReadStatusOutputImpl
    extends _UpdateMessageReadStatusOutput {
  const _$UpdateMessageReadStatusOutputImpl({this.success = true}) : super._();

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'UpdateMessageReadStatusOutput(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageReadStatusOutputImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of UpdateMessageReadStatusOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageReadStatusOutputImplCopyWith<
    _$UpdateMessageReadStatusOutputImpl
  >
  get copyWith =>
      __$$UpdateMessageReadStatusOutputImplCopyWithImpl<
        _$UpdateMessageReadStatusOutputImpl
      >(this, _$identity);
}

abstract class _UpdateMessageReadStatusOutput
    extends UpdateMessageReadStatusOutput {
  const factory _UpdateMessageReadStatusOutput({final bool success}) =
      _$UpdateMessageReadStatusOutputImpl;
  const _UpdateMessageReadStatusOutput._() : super._();

  @override
  bool get success;

  /// Create a copy of UpdateMessageReadStatusOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateMessageReadStatusOutputImplCopyWith<
    _$UpdateMessageReadStatusOutputImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
