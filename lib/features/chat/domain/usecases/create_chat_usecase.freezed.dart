// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateChatInput {
  int get targetUserId => throw _privateConstructorUsedError;

  /// Create a copy of CreateChatInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateChatInputCopyWith<CreateChatInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatInputCopyWith<$Res> {
  factory $CreateChatInputCopyWith(
    CreateChatInput value,
    $Res Function(CreateChatInput) then,
  ) = _$CreateChatInputCopyWithImpl<$Res, CreateChatInput>;
  @useResult
  $Res call({int targetUserId});
}

/// @nodoc
class _$CreateChatInputCopyWithImpl<$Res, $Val extends CreateChatInput>
    implements $CreateChatInputCopyWith<$Res> {
  _$CreateChatInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetUserId = null}) {
    return _then(
      _value.copyWith(
            targetUserId: null == targetUserId
                ? _value.targetUserId
                : targetUserId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateChatInputImplCopyWith<$Res>
    implements $CreateChatInputCopyWith<$Res> {
  factory _$$CreateChatInputImplCopyWith(
    _$CreateChatInputImpl value,
    $Res Function(_$CreateChatInputImpl) then,
  ) = __$$CreateChatInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int targetUserId});
}

/// @nodoc
class __$$CreateChatInputImplCopyWithImpl<$Res>
    extends _$CreateChatInputCopyWithImpl<$Res, _$CreateChatInputImpl>
    implements _$$CreateChatInputImplCopyWith<$Res> {
  __$$CreateChatInputImplCopyWithImpl(
    _$CreateChatInputImpl _value,
    $Res Function(_$CreateChatInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateChatInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? targetUserId = null}) {
    return _then(
      _$CreateChatInputImpl(
        targetUserId: null == targetUserId
            ? _value.targetUserId
            : targetUserId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CreateChatInputImpl implements _CreateChatInput {
  const _$CreateChatInputImpl({required this.targetUserId});

  @override
  final int targetUserId;

  @override
  String toString() {
    return 'CreateChatInput(targetUserId: $targetUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatInputImpl &&
            (identical(other.targetUserId, targetUserId) ||
                other.targetUserId == targetUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, targetUserId);

  /// Create a copy of CreateChatInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatInputImplCopyWith<_$CreateChatInputImpl> get copyWith =>
      __$$CreateChatInputImplCopyWithImpl<_$CreateChatInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateChatInput implements CreateChatInput {
  const factory _CreateChatInput({required final int targetUserId}) =
      _$CreateChatInputImpl;

  @override
  int get targetUserId;

  /// Create a copy of CreateChatInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatInputImplCopyWith<_$CreateChatInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateChatOutput {
  int get conversationId => throw _privateConstructorUsedError;

  /// Create a copy of CreateChatOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateChatOutputCopyWith<CreateChatOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatOutputCopyWith<$Res> {
  factory $CreateChatOutputCopyWith(
    CreateChatOutput value,
    $Res Function(CreateChatOutput) then,
  ) = _$CreateChatOutputCopyWithImpl<$Res, CreateChatOutput>;
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class _$CreateChatOutputCopyWithImpl<$Res, $Val extends CreateChatOutput>
    implements $CreateChatOutputCopyWith<$Res> {
  _$CreateChatOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateChatOutputImplCopyWith<$Res>
    implements $CreateChatOutputCopyWith<$Res> {
  factory _$$CreateChatOutputImplCopyWith(
    _$CreateChatOutputImpl value,
    $Res Function(_$CreateChatOutputImpl) then,
  ) = __$$CreateChatOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId});
}

/// @nodoc
class __$$CreateChatOutputImplCopyWithImpl<$Res>
    extends _$CreateChatOutputCopyWithImpl<$Res, _$CreateChatOutputImpl>
    implements _$$CreateChatOutputImplCopyWith<$Res> {
  __$$CreateChatOutputImplCopyWithImpl(
    _$CreateChatOutputImpl _value,
    $Res Function(_$CreateChatOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateChatOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$CreateChatOutputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CreateChatOutputImpl extends _CreateChatOutput {
  const _$CreateChatOutputImpl({required this.conversationId}) : super._();

  @override
  final int conversationId;

  @override
  String toString() {
    return 'CreateChatOutput(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatOutputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of CreateChatOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatOutputImplCopyWith<_$CreateChatOutputImpl> get copyWith =>
      __$$CreateChatOutputImplCopyWithImpl<_$CreateChatOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateChatOutput extends CreateChatOutput {
  const factory _CreateChatOutput({required final int conversationId}) =
      _$CreateChatOutputImpl;
  const _CreateChatOutput._() : super._();

  @override
  int get conversationId;

  /// Create a copy of CreateChatOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatOutputImplCopyWith<_$CreateChatOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
