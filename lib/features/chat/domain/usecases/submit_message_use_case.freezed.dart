// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_message_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitMessageInput {
  String get conversationId => throw _privateConstructorUsedError;
  Author get sender => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;

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
    String conversationId,
    Author sender,
    String? receiverId,
    String text,
    String type,
    String? fileUrl,
  });

  $AuthorCopyWith<$Res> get sender;
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
    Object? sender = null,
    Object? receiverId = freezed,
    Object? text = null,
    Object? type = null,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as String,
            sender: null == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                      as Author,
            receiverId: freezed == receiverId
                ? _value.receiverId
                : receiverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get sender {
    return $AuthorCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
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
    String conversationId,
    Author sender,
    String? receiverId,
    String text,
    String type,
    String? fileUrl,
  });

  @override
  $AuthorCopyWith<$Res> get sender;
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
    Object? sender = null,
    Object? receiverId = freezed,
    Object? text = null,
    Object? type = null,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _$SubmitMessageInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as String,
        sender: null == sender
            ? _value.sender
            : sender // ignore: cast_nullable_to_non_nullable
                  as Author,
        receiverId: freezed == receiverId
            ? _value.receiverId
            : receiverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitMessageInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitMessageInput {
  const _$SubmitMessageInputImpl({
    required this.conversationId,
    required this.sender,
    this.receiverId,
    required this.text,
    this.type = 'text',
    this.fileUrl,
  });

  @override
  final String conversationId;
  @override
  final Author sender;
  @override
  final String? receiverId;
  @override
  final String text;
  @override
  @JsonKey()
  final String type;
  @override
  final String? fileUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitMessageInput(conversationId: $conversationId, sender: $sender, receiverId: $receiverId, text: $text, type: $type, fileUrl: $fileUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitMessageInput'))
      ..add(DiagnosticsProperty('conversationId', conversationId))
      ..add(DiagnosticsProperty('sender', sender))
      ..add(DiagnosticsProperty('receiverId', receiverId))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('fileUrl', fileUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitMessageInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    sender,
    receiverId,
    text,
    type,
    fileUrl,
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
    required final String conversationId,
    required final Author sender,
    final String? receiverId,
    required final String text,
    final String type,
    final String? fileUrl,
  }) = _$SubmitMessageInputImpl;

  @override
  String get conversationId;
  @override
  Author get sender;
  @override
  String? get receiverId;
  @override
  String get text;
  @override
  String get type;
  @override
  String? get fileUrl;

  /// Create a copy of SubmitMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitMessageInputImplCopyWith<_$SubmitMessageInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitMessageOutput {
  Message get message => throw _privateConstructorUsedError;

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
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
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
                      as Message,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
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
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
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
                  as Message,
      ),
    );
  }
}

/// @nodoc

class _$SubmitMessageOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitMessageOutput {
  const _$SubmitMessageOutputImpl({required this.message});

  @override
  final Message message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitMessageOutput(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitMessageOutput'))
      ..add(DiagnosticsProperty('message', message));
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

abstract class _SubmitMessageOutput implements SubmitMessageOutput {
  const factory _SubmitMessageOutput({required final Message message}) =
      _$SubmitMessageOutputImpl;

  @override
  Message get message;

  /// Create a copy of SubmitMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitMessageOutputImplCopyWith<_$SubmitMessageOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
