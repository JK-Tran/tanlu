// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_message_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitMessageInput {
  int get conversationId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  int? get replyToId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitMessageInputCopyWith<SubmitMessageInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitMessageInputCopyWith<$Res> {
  factory $SubmitMessageInputCopyWith(
    SubmitMessageInput value,
    $Res Function(SubmitMessageInput) then,
  ) = _$SubmitMessageInputCopyWithImpl<$Res, SubmitMessageInput>;
  @useResult
  $Res call({
    int conversationId,
    String? content,
    String type,
    String? fileUrl,
    int? replyToId,
  });
}

/// @nodoc
class _$SubmitMessageInputCopyWithImpl<$Res, $Val extends SubmitMessageInput>
    implements $SubmitMessageInputCopyWith<$Res> {
  _$SubmitMessageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? content = freezed,
    Object? type = null,
    Object? fileUrl = freezed,
    Object? replyToId = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            replyToId: freezed == replyToId
                ? _value.replyToId
                : replyToId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitMessageInputImplCopyWith<$Res>
    implements $SubmitMessageInputCopyWith<$Res> {
  factory _$$SubmitMessageInputImplCopyWith(
    _$SubmitMessageInputImpl value,
    $Res Function(_$SubmitMessageInputImpl) then,
  ) = __$$SubmitMessageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int conversationId,
    String? content,
    String type,
    String? fileUrl,
    int? replyToId,
  });
}

/// @nodoc
class __$$SubmitMessageInputImplCopyWithImpl<$Res>
    extends _$SubmitMessageInputCopyWithImpl<$Res, _$SubmitMessageInputImpl>
    implements _$$SubmitMessageInputImplCopyWith<$Res> {
  __$$SubmitMessageInputImplCopyWithImpl(
    _$SubmitMessageInputImpl _value,
    $Res Function(_$SubmitMessageInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? content = freezed,
    Object? type = null,
    Object? fileUrl = freezed,
    Object? replyToId = freezed,
  }) {
    return _then(
      _$SubmitMessageInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        replyToId: freezed == replyToId
            ? _value.replyToId
            : replyToId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitMessageInputImpl implements _SubmitMessageInput {
  const _$SubmitMessageInputImpl({
    required this.conversationId,
    this.content,
    this.type = 'text',
    this.fileUrl,
    this.replyToId,
  });

  @override
  final int conversationId;
  @override
  final String? content;
  @override
  @JsonKey()
  final String type;
  @override
  final String? fileUrl;
  @override
  final int? replyToId;

  @override
  String toString() {
    return 'SubmitMessageInput(conversationId: $conversationId, content: $content, type: $type, fileUrl: $fileUrl, replyToId: $replyToId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitMessageInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.replyToId, replyToId) ||
                other.replyToId == replyToId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    content,
    type,
    fileUrl,
    replyToId,
  );

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitMessageInputImplCopyWith<_$SubmitMessageInputImpl> get copyWith =>
      __$$SubmitMessageInputImplCopyWithImpl<_$SubmitMessageInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitMessageInput implements SubmitMessageInput {
  const factory _SubmitMessageInput({
    required final int conversationId,
    final String? content,
    final String type,
    final String? fileUrl,
    final int? replyToId,
  }) = _$SubmitMessageInputImpl;

  @override
  int get conversationId;
  @override
  String? get content;
  @override
  String get type;
  @override
  String? get fileUrl;
  @override
  int? get replyToId;

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitMessageInputImplCopyWith<_$SubmitMessageInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitMessageOutput {
  ChatMessage get message => throw _privateConstructorUsedError;

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitMessageOutputCopyWith<SubmitMessageOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitMessageOutputCopyWith<$Res> {
  factory $SubmitMessageOutputCopyWith(
    SubmitMessageOutput value,
    $Res Function(SubmitMessageOutput) then,
  ) = _$SubmitMessageOutputCopyWithImpl<$Res, SubmitMessageOutput>;
  @useResult
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$SubmitMessageOutputCopyWithImpl<$Res, $Val extends SubmitMessageOutput>
    implements $SubmitMessageOutputCopyWith<$Res> {
  _$SubmitMessageOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as ChatMessage,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitMessageOutputImplCopyWith<$Res>
    implements $SubmitMessageOutputCopyWith<$Res> {
  factory _$$SubmitMessageOutputImplCopyWith(
    _$SubmitMessageOutputImpl value,
    $Res Function(_$SubmitMessageOutputImpl) then,
  ) = __$$SubmitMessageOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatMessage message});

  @override
  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SubmitMessageOutputImplCopyWithImpl<$Res>
    extends _$SubmitMessageOutputCopyWithImpl<$Res, _$SubmitMessageOutputImpl>
    implements _$$SubmitMessageOutputImplCopyWith<$Res> {
  __$$SubmitMessageOutputImplCopyWithImpl(
    _$SubmitMessageOutputImpl _value,
    $Res Function(_$SubmitMessageOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SubmitMessageOutputImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as ChatMessage,
      ),
    );
  }
}

/// @nodoc

class _$SubmitMessageOutputImpl extends _SubmitMessageOutput {
  const _$SubmitMessageOutputImpl({required this.message}) : super._();

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'SubmitMessageOutput(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitMessageOutputImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitMessageOutputImplCopyWith<_$SubmitMessageOutputImpl> get copyWith =>
      __$$SubmitMessageOutputImplCopyWithImpl<_$SubmitMessageOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitMessageOutput extends SubmitMessageOutput {
  const factory _SubmitMessageOutput({required final ChatMessage message}) =
      _$SubmitMessageOutputImpl;
  const _SubmitMessageOutput._() : super._();

  @override
  ChatMessage get message;

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitMessageOutputImplCopyWith<_$SubmitMessageOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
