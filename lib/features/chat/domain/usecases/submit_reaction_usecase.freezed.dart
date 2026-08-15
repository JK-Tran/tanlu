// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_reaction_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitReactionInput {
  int get conversationId => throw _privateConstructorUsedError;
  int get messageId => throw _privateConstructorUsedError;
  int get reactionType => throw _privateConstructorUsedError;

  /// Create a copy of SubmitReactionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitReactionInputCopyWith<SubmitReactionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitReactionInputCopyWith<$Res> {
  factory $SubmitReactionInputCopyWith(
    SubmitReactionInput value,
    $Res Function(SubmitReactionInput) then,
  ) = _$SubmitReactionInputCopyWithImpl<$Res, SubmitReactionInput>;
  @useResult
  $Res call({int conversationId, int messageId, int reactionType});
}

/// @nodoc
class _$SubmitReactionInputCopyWithImpl<$Res, $Val extends SubmitReactionInput>
    implements $SubmitReactionInputCopyWith<$Res> {
  _$SubmitReactionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitReactionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageId = null,
    Object? reactionType = null,
  }) {
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
            reactionType: null == reactionType
                ? _value.reactionType
                : reactionType // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitReactionInputImplCopyWith<$Res>
    implements $SubmitReactionInputCopyWith<$Res> {
  factory _$$SubmitReactionInputImplCopyWith(
    _$SubmitReactionInputImpl value,
    $Res Function(_$SubmitReactionInputImpl) then,
  ) = __$$SubmitReactionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, int messageId, int reactionType});
}

/// @nodoc
class __$$SubmitReactionInputImplCopyWithImpl<$Res>
    extends _$SubmitReactionInputCopyWithImpl<$Res, _$SubmitReactionInputImpl>
    implements _$$SubmitReactionInputImplCopyWith<$Res> {
  __$$SubmitReactionInputImplCopyWithImpl(
    _$SubmitReactionInputImpl _value,
    $Res Function(_$SubmitReactionInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitReactionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? messageId = null,
    Object? reactionType = null,
  }) {
    return _then(
      _$SubmitReactionInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        messageId: null == messageId
            ? _value.messageId
            : messageId // ignore: cast_nullable_to_non_nullable
                  as int,
        reactionType: null == reactionType
            ? _value.reactionType
            : reactionType // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SubmitReactionInputImpl implements _SubmitReactionInput {
  const _$SubmitReactionInputImpl({
    required this.conversationId,
    required this.messageId,
    required this.reactionType,
  });

  @override
  final int conversationId;
  @override
  final int messageId;
  @override
  final int reactionType;

  @override
  String toString() {
    return 'SubmitReactionInput(conversationId: $conversationId, messageId: $messageId, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitReactionInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, messageId, reactionType);

  /// Create a copy of SubmitReactionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitReactionInputImplCopyWith<_$SubmitReactionInputImpl> get copyWith =>
      __$$SubmitReactionInputImplCopyWithImpl<_$SubmitReactionInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitReactionInput implements SubmitReactionInput {
  const factory _SubmitReactionInput({
    required final int conversationId,
    required final int messageId,
    required final int reactionType,
  }) = _$SubmitReactionInputImpl;

  @override
  int get conversationId;
  @override
  int get messageId;
  @override
  int get reactionType;

  /// Create a copy of SubmitReactionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitReactionInputImplCopyWith<_$SubmitReactionInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitReactionOutput {
  bool get success => throw _privateConstructorUsedError;

  /// Create a copy of SubmitReactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitReactionOutputCopyWith<SubmitReactionOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitReactionOutputCopyWith<$Res> {
  factory $SubmitReactionOutputCopyWith(
    SubmitReactionOutput value,
    $Res Function(SubmitReactionOutput) then,
  ) = _$SubmitReactionOutputCopyWithImpl<$Res, SubmitReactionOutput>;
  @useResult
  $Res call({bool success});
}

/// @nodoc
class _$SubmitReactionOutputCopyWithImpl<
  $Res,
  $Val extends SubmitReactionOutput
>
    implements $SubmitReactionOutputCopyWith<$Res> {
  _$SubmitReactionOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitReactionOutput
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
abstract class _$$SubmitReactionOutputImplCopyWith<$Res>
    implements $SubmitReactionOutputCopyWith<$Res> {
  factory _$$SubmitReactionOutputImplCopyWith(
    _$SubmitReactionOutputImpl value,
    $Res Function(_$SubmitReactionOutputImpl) then,
  ) = __$$SubmitReactionOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success});
}

/// @nodoc
class __$$SubmitReactionOutputImplCopyWithImpl<$Res>
    extends _$SubmitReactionOutputCopyWithImpl<$Res, _$SubmitReactionOutputImpl>
    implements _$$SubmitReactionOutputImplCopyWith<$Res> {
  __$$SubmitReactionOutputImplCopyWithImpl(
    _$SubmitReactionOutputImpl _value,
    $Res Function(_$SubmitReactionOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitReactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null}) {
    return _then(
      _$SubmitReactionOutputImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SubmitReactionOutputImpl extends _SubmitReactionOutput {
  const _$SubmitReactionOutputImpl({this.success = true}) : super._();

  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SubmitReactionOutput(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitReactionOutputImpl &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, success);

  /// Create a copy of SubmitReactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitReactionOutputImplCopyWith<_$SubmitReactionOutputImpl>
  get copyWith =>
      __$$SubmitReactionOutputImplCopyWithImpl<_$SubmitReactionOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitReactionOutput extends SubmitReactionOutput {
  const factory _SubmitReactionOutput({final bool success}) =
      _$SubmitReactionOutputImpl;
  const _SubmitReactionOutput._() : super._();

  @override
  bool get success;

  /// Create a copy of SubmitReactionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitReactionOutputImplCopyWith<_$SubmitReactionOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
