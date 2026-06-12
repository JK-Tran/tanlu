// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return _MessageData.fromJson(json);
}

/// @nodoc
mixin _$MessageData {
  @JsonKey()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey()
  int? get conversationId => throw _privateConstructorUsedError;
  @JsonKey()
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey()
  String? get text => throw _privateConstructorUsedError;
  @JsonKey()
  bool? get isRead => throw _privateConstructorUsedError;
  @JsonKey()
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey()
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey()
  ChatUserData? get sender => throw _privateConstructorUsedError;

  /// Serializes this MessageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageDataCopyWith<MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataCopyWith<$Res> {
  factory $MessageDataCopyWith(
    MessageData value,
    $Res Function(MessageData) then,
  ) = _$MessageDataCopyWithImpl<$Res, MessageData>;
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? conversationId,
    @JsonKey() int? senderId,
    @JsonKey() String? text,
    @JsonKey() bool? isRead,
    @JsonKey() String? fileUrl,
    @JsonKey() String? createdAt,
    @JsonKey() ChatUserData? sender,
  });

  $ChatUserDataCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MessageDataCopyWithImpl<$Res, $Val extends MessageData>
    implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? isRead = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            conversationId: freezed == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int?,
            senderId: freezed == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            text: freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String?,
            isRead: freezed == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool?,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            sender: freezed == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                      as ChatUserData?,
          )
          as $Val,
    );
  }

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatUserDataCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $ChatUserDataCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageDataImplCopyWith<$Res>
    implements $MessageDataCopyWith<$Res> {
  factory _$$MessageDataImplCopyWith(
    _$MessageDataImpl value,
    $Res Function(_$MessageDataImpl) then,
  ) = __$$MessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey() int? id,
    @JsonKey() int? conversationId,
    @JsonKey() int? senderId,
    @JsonKey() String? text,
    @JsonKey() bool? isRead,
    @JsonKey() String? fileUrl,
    @JsonKey() String? createdAt,
    @JsonKey() ChatUserData? sender,
  });

  @override
  $ChatUserDataCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$MessageDataImplCopyWithImpl<$Res>
    extends _$MessageDataCopyWithImpl<$Res, _$MessageDataImpl>
    implements _$$MessageDataImplCopyWith<$Res> {
  __$$MessageDataImplCopyWithImpl(
    _$MessageDataImpl _value,
    $Res Function(_$MessageDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = freezed,
    Object? senderId = freezed,
    Object? text = freezed,
    Object? isRead = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? sender = freezed,
  }) {
    return _then(
      _$MessageDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        conversationId: freezed == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int?,
        senderId: freezed == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        text: freezed == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String?,
        isRead: freezed == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool?,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        sender: freezed == sender
            ? _value.sender
            : sender // ignore: cast_nullable_to_non_nullable
                  as ChatUserData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageDataImpl extends _MessageData {
  const _$MessageDataImpl({
    @JsonKey() this.id,
    @JsonKey() this.conversationId,
    @JsonKey() this.senderId,
    @JsonKey() this.text,
    @JsonKey() this.isRead,
    @JsonKey() this.fileUrl,
    @JsonKey() this.createdAt,
    @JsonKey() this.sender,
  }) : super._();

  factory _$MessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDataImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final int? conversationId;
  @override
  @JsonKey()
  final int? senderId;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final bool? isRead;
  @override
  @JsonKey()
  final String? fileUrl;
  @override
  @JsonKey()
  final String? createdAt;
  @override
  @JsonKey()
  final ChatUserData? sender;

  @override
  String toString() {
    return 'MessageData(id: $id, conversationId: $conversationId, senderId: $senderId, text: $text, isRead: $isRead, fileUrl: $fileUrl, createdAt: $createdAt, sender: $sender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    conversationId,
    senderId,
    text,
    isRead,
    fileUrl,
    createdAt,
    sender,
  );

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDataImplCopyWith<_$MessageDataImpl> get copyWith =>
      __$$MessageDataImplCopyWithImpl<_$MessageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDataImplToJson(this);
  }
}

abstract class _MessageData extends MessageData {
  const factory _MessageData({
    @JsonKey() final int? id,
    @JsonKey() final int? conversationId,
    @JsonKey() final int? senderId,
    @JsonKey() final String? text,
    @JsonKey() final bool? isRead,
    @JsonKey() final String? fileUrl,
    @JsonKey() final String? createdAt,
    @JsonKey() final ChatUserData? sender,
  }) = _$MessageDataImpl;
  const _MessageData._() : super._();

  factory _MessageData.fromJson(Map<String, dynamic> json) =
      _$MessageDataImpl.fromJson;

  @override
  @JsonKey()
  int? get id;
  @override
  @JsonKey()
  int? get conversationId;
  @override
  @JsonKey()
  int? get senderId;
  @override
  @JsonKey()
  String? get text;
  @override
  @JsonKey()
  bool? get isRead;
  @override
  @JsonKey()
  String? get fileUrl;
  @override
  @JsonKey()
  String? get createdAt;
  @override
  @JsonKey()
  ChatUserData? get sender;

  /// Create a copy of MessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDataImplCopyWith<_$MessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
