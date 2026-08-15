// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_revoke_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitRevokeInput {
  int get conversationId => throw _privateConstructorUsedError;
  int get messageId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitRevokeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitRevokeInputCopyWith<SubmitRevokeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitRevokeInputCopyWith<$Res> {
  factory $SubmitRevokeInputCopyWith(
    SubmitRevokeInput value,
    $Res Function(SubmitRevokeInput) then,
  ) = _$SubmitRevokeInputCopyWithImpl<$Res, SubmitRevokeInput>;
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class _$SubmitRevokeInputCopyWithImpl<$Res, $Val extends SubmitRevokeInput>
    implements $SubmitRevokeInputCopyWith<$Res> {
  _$SubmitRevokeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitRevokeInput
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
abstract class _$$SubmitRevokeInputImplCopyWith<$Res>
    implements $SubmitRevokeInputCopyWith<$Res> {
  factory _$$SubmitRevokeInputImplCopyWith(
    _$SubmitRevokeInputImpl value,
    $Res Function(_$SubmitRevokeInputImpl) then,
  ) = __$$SubmitRevokeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, int messageId});
}

/// @nodoc
class __$$SubmitRevokeInputImplCopyWithImpl<$Res>
    extends _$SubmitRevokeInputCopyWithImpl<$Res, _$SubmitRevokeInputImpl>
    implements _$$SubmitRevokeInputImplCopyWith<$Res> {
  __$$SubmitRevokeInputImplCopyWithImpl(
    _$SubmitRevokeInputImpl _value,
    $Res Function(_$SubmitRevokeInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitRevokeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null, Object? messageId = null}) {
    return _then(
      _$SubmitRevokeInputImpl(
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

class _$SubmitRevokeInputImpl implements _SubmitRevokeInput {
  const _$SubmitRevokeInputImpl({
    required this.conversationId,
    required this.messageId,
  });

  @override
  final int conversationId;
  @override
  final int messageId;

  @override
  String toString() {
    return 'SubmitRevokeInput(conversationId: $conversationId, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRevokeInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, messageId);

  /// Create a copy of SubmitRevokeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRevokeInputImplCopyWith<_$SubmitRevokeInputImpl> get copyWith =>
      __$$SubmitRevokeInputImplCopyWithImpl<_$SubmitRevokeInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitRevokeInput implements SubmitRevokeInput {
  const factory _SubmitRevokeInput({
    required final int conversationId,
    required final int messageId,
  }) = _$SubmitRevokeInputImpl;

  @override
  int get conversationId;
  @override
  int get messageId;

  /// Create a copy of SubmitRevokeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRevokeInputImplCopyWith<_$SubmitRevokeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitRevokeOutput {
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of SubmitRevokeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitRevokeOutputCopyWith<SubmitRevokeOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitRevokeOutputCopyWith<$Res> {
  factory $SubmitRevokeOutputCopyWith(
    SubmitRevokeOutput value,
    $Res Function(SubmitRevokeOutput) then,
  ) = _$SubmitRevokeOutputCopyWithImpl<$Res, SubmitRevokeOutput>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SubmitRevokeOutputCopyWithImpl<$Res, $Val extends SubmitRevokeOutput>
    implements $SubmitRevokeOutputCopyWith<$Res> {
  _$SubmitRevokeOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitRevokeOutput
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
abstract class _$$SubmitRevokeOutputImplCopyWith<$Res>
    implements $SubmitRevokeOutputCopyWith<$Res> {
  factory _$$SubmitRevokeOutputImplCopyWith(
    _$SubmitRevokeOutputImpl value,
    $Res Function(_$SubmitRevokeOutputImpl) then,
  ) = __$$SubmitRevokeOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SubmitRevokeOutputImplCopyWithImpl<$Res>
    extends _$SubmitRevokeOutputCopyWithImpl<$Res, _$SubmitRevokeOutputImpl>
    implements _$$SubmitRevokeOutputImplCopyWith<$Res> {
  __$$SubmitRevokeOutputImplCopyWithImpl(
    _$SubmitRevokeOutputImpl _value,
    $Res Function(_$SubmitRevokeOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitRevokeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null}) {
    return _then(
      _$SubmitRevokeOutputImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SubmitRevokeOutputImpl extends _SubmitRevokeOutput {
  const _$SubmitRevokeOutputImpl({this.success = true}) : super._();

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SubmitRevokeOutput(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRevokeOutputImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SubmitRevokeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRevokeOutputImplCopyWith<_$SubmitRevokeOutputImpl> get copyWith =>
      __$$SubmitRevokeOutputImplCopyWithImpl<_$SubmitRevokeOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitRevokeOutput extends SubmitRevokeOutput {
  const factory _SubmitRevokeOutput({final bool success}) =
      _$SubmitRevokeOutputImpl;
  const _SubmitRevokeOutput._() : super._();

  @override
  bool get success;

  /// Create a copy of SubmitRevokeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRevokeOutputImplCopyWith<_$SubmitRevokeOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
