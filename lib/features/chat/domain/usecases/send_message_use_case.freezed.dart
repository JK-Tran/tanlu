// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SendMessageInput {
  int get conversationId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  dynamic get file => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageInputCopyWith<SendMessageInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageInputCopyWith<$Res> {
  factory $SendMessageInputCopyWith(
    SendMessageInput value,
    $Res Function(SendMessageInput) then,
  ) = _$SendMessageInputCopyWithImpl<$Res, SendMessageInput>;
  @useResult
  $Res call({int conversationId, String text, dynamic file, String? fileUrl});
}

/// @nodoc
class _$SendMessageInputCopyWithImpl<$Res, $Val extends SendMessageInput>
    implements $SendMessageInputCopyWith<$Res> {
  _$SendMessageInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? text = null,
    Object? file = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            file: freezed == file
                ? _value.file
                : file // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendMessageInputImplCopyWith<$Res>
    implements $SendMessageInputCopyWith<$Res> {
  factory _$$SendMessageInputImplCopyWith(
    _$SendMessageInputImpl value,
    $Res Function(_$SendMessageInputImpl) then,
  ) = __$$SendMessageInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, String text, dynamic file, String? fileUrl});
}

/// @nodoc
class __$$SendMessageInputImplCopyWithImpl<$Res>
    extends _$SendMessageInputCopyWithImpl<$Res, _$SendMessageInputImpl>
    implements _$$SendMessageInputImplCopyWith<$Res> {
  __$$SendMessageInputImplCopyWithImpl(
    _$SendMessageInputImpl _value,
    $Res Function(_$SendMessageInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? text = null,
    Object? file = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _$SendMessageInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        file: freezed == file
            ? _value.file
            : file // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageInputImpl implements _SendMessageInput {
  const _$SendMessageInputImpl({
    required this.conversationId,
    required this.text,
    this.file,
    this.fileUrl,
  });

  @override
  final int conversationId;
  @override
  final String text;
  @override
  final dynamic file;
  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'SendMessageInput(conversationId: $conversationId, text: $text, file: $file, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    text,
    const DeepCollectionEquality().hash(file),
    fileUrl,
  );

  /// Create a copy of SendMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageInputImplCopyWith<_$SendMessageInputImpl> get copyWith =>
      __$$SendMessageInputImplCopyWithImpl<_$SendMessageInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SendMessageInput implements SendMessageInput {
  const factory _SendMessageInput({
    required final int conversationId,
    required final String text,
    final dynamic file,
    final String? fileUrl,
  }) = _$SendMessageInputImpl;

  @override
  int get conversationId;
  @override
  String get text;
  @override
  dynamic get file;
  @override
  String? get fileUrl;

  /// Create a copy of SendMessageInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageInputImplCopyWith<_$SendMessageInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SendMessageOutput {
  Message get message => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageOutputCopyWith<SendMessageOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageOutputCopyWith<$Res> {
  factory $SendMessageOutputCopyWith(
    SendMessageOutput value,
    $Res Function(SendMessageOutput) then,
  ) = _$SendMessageOutputCopyWithImpl<$Res, SendMessageOutput>;
  @useResult
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$SendMessageOutputCopyWithImpl<$Res, $Val extends SendMessageOutput>
    implements $SendMessageOutputCopyWith<$Res> {
  _$SendMessageOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageOutput
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

  /// Create a copy of SendMessageOutput
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
abstract class _$$SendMessageOutputImplCopyWith<$Res>
    implements $SendMessageOutputCopyWith<$Res> {
  factory _$$SendMessageOutputImplCopyWith(
    _$SendMessageOutputImpl value,
    $Res Function(_$SendMessageOutputImpl) then,
  ) = __$$SendMessageOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$SendMessageOutputImplCopyWithImpl<$Res>
    extends _$SendMessageOutputCopyWithImpl<$Res, _$SendMessageOutputImpl>
    implements _$$SendMessageOutputImplCopyWith<$Res> {
  __$$SendMessageOutputImplCopyWithImpl(
    _$SendMessageOutputImpl _value,
    $Res Function(_$SendMessageOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$SendMessageOutputImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as Message,
      ),
    );
  }
}

/// @nodoc

class _$SendMessageOutputImpl implements _SendMessageOutput {
  const _$SendMessageOutputImpl(this.message);

  @override
  final Message message;

  @override
  String toString() {
    return 'SendMessageOutput(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageOutputImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SendMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageOutputImplCopyWith<_$SendMessageOutputImpl> get copyWith =>
      __$$SendMessageOutputImplCopyWithImpl<_$SendMessageOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _SendMessageOutput implements SendMessageOutput {
  const factory _SendMessageOutput(final Message message) =
      _$SendMessageOutputImpl;

  @override
  Message get message;

  /// Create a copy of SendMessageOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageOutputImplCopyWith<_$SendMessageOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
