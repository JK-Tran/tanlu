// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessageData _$ChatMessageDataFromJson(Map<String, dynamic> json) {
  return _ChatMessageData.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversationId')
  int? get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'senderId')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'fileUrl')
  String? get fileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  MessageStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRevoked')
  bool? get isRevoked => throw _privateConstructorUsedError;
  @JsonKey(name: 'replyToId')
  int? get replyToId => throw _privateConstructorUsedError;
  @JsonKey(name: 'replyToMessage')
  ChatMessageData? get replyToMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions')
  List<ChatReactionData>? get reactions => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageDataCopyWith<ChatMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageDataCopyWith<$Res> {
  factory $ChatMessageDataCopyWith(
    ChatMessageData value,
    $Res Function(ChatMessageData) then,
  ) = _$ChatMessageDataCopyWithImpl<$Res, ChatMessageData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'senderId') int? senderId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') MessageStatus? status,
    @JsonKey(name: 'isRevoked') bool? isRevoked,
    @JsonKey(name: 'replyToId') int? replyToId,
    @JsonKey(name: 'replyToMessage') ChatMessageData? replyToMessage,
    @JsonKey(name: 'reactions') List<ChatReactionData>? reactions,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  });

  $ChatMessageDataCopyWith<$Res>? get replyToMessage;
}

/// @nodoc
class _$ChatMessageDataCopyWithImpl<$Res, $Val extends ChatMessageData>
    implements $ChatMessageDataCopyWith<$Res> {
  _$ChatMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? fileUrl = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? isRevoked = freezed,
    Object? replyToId = freezed,
    Object? replyToMessage = freezed,
    Object? reactions = freezed,
    Object? createdAt = freezed,
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
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MessageStatus?,
            isRevoked: freezed == isRevoked
                ? _value.isRevoked
                : isRevoked // ignore: cast_nullable_to_non_nullable
                      as bool?,
            replyToId: freezed == replyToId
                ? _value.replyToId
                : replyToId // ignore: cast_nullable_to_non_nullable
                      as int?,
            replyToMessage: freezed == replyToMessage
                ? _value.replyToMessage
                : replyToMessage // ignore: cast_nullable_to_non_nullable
                      as ChatMessageData?,
            reactions: freezed == reactions
                ? _value.reactions
                : reactions // ignore: cast_nullable_to_non_nullable
                      as List<ChatReactionData>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageDataCopyWith<$Res>? get replyToMessage {
    if (_value.replyToMessage == null) {
      return null;
    }

    return $ChatMessageDataCopyWith<$Res>(_value.replyToMessage!, (value) {
      return _then(_value.copyWith(replyToMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageDataImplCopyWith<$Res>
    implements $ChatMessageDataCopyWith<$Res> {
  factory _$$ChatMessageDataImplCopyWith(
    _$ChatMessageDataImpl value,
    $Res Function(_$ChatMessageDataImpl) then,
  ) = __$$ChatMessageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'conversationId') int? conversationId,
    @JsonKey(name: 'senderId') int? senderId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'status') MessageStatus? status,
    @JsonKey(name: 'isRevoked') bool? isRevoked,
    @JsonKey(name: 'replyToId') int? replyToId,
    @JsonKey(name: 'replyToMessage') ChatMessageData? replyToMessage,
    @JsonKey(name: 'reactions') List<ChatReactionData>? reactions,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  });

  @override
  $ChatMessageDataCopyWith<$Res>? get replyToMessage;
}

/// @nodoc
class __$$ChatMessageDataImplCopyWithImpl<$Res>
    extends _$ChatMessageDataCopyWithImpl<$Res, _$ChatMessageDataImpl>
    implements _$$ChatMessageDataImplCopyWith<$Res> {
  __$$ChatMessageDataImplCopyWithImpl(
    _$ChatMessageDataImpl _value,
    $Res Function(_$ChatMessageDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? conversationId = freezed,
    Object? senderId = freezed,
    Object? content = freezed,
    Object? fileUrl = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? isRevoked = freezed,
    Object? replyToId = freezed,
    Object? replyToMessage = freezed,
    Object? reactions = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ChatMessageDataImpl(
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
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MessageStatus?,
        isRevoked: freezed == isRevoked
            ? _value.isRevoked
            : isRevoked // ignore: cast_nullable_to_non_nullable
                  as bool?,
        replyToId: freezed == replyToId
            ? _value.replyToId
            : replyToId // ignore: cast_nullable_to_non_nullable
                  as int?,
        replyToMessage: freezed == replyToMessage
            ? _value.replyToMessage
            : replyToMessage // ignore: cast_nullable_to_non_nullable
                  as ChatMessageData?,
        reactions: freezed == reactions
            ? _value._reactions
            : reactions // ignore: cast_nullable_to_non_nullable
                  as List<ChatReactionData>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageDataImpl implements _ChatMessageData {
  const _$ChatMessageDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'conversationId') this.conversationId,
    @JsonKey(name: 'senderId') this.senderId,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'fileUrl') this.fileUrl,
    @JsonKey(name: 'type') this.type,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'isRevoked') this.isRevoked,
    @JsonKey(name: 'replyToId') this.replyToId,
    @JsonKey(name: 'replyToMessage') this.replyToMessage,
    @JsonKey(name: 'reactions') final List<ChatReactionData>? reactions,
    @JsonKey(name: 'createdAt') this.createdAt,
  }) : _reactions = reactions;

  factory _$ChatMessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'conversationId')
  final int? conversationId;
  @override
  @JsonKey(name: 'senderId')
  final int? senderId;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'fileUrl')
  final String? fileUrl;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'status')
  final MessageStatus? status;
  @override
  @JsonKey(name: 'isRevoked')
  final bool? isRevoked;
  @override
  @JsonKey(name: 'replyToId')
  final int? replyToId;
  @override
  @JsonKey(name: 'replyToMessage')
  final ChatMessageData? replyToMessage;
  final List<ChatReactionData>? _reactions;
  @override
  @JsonKey(name: 'reactions')
  List<ChatReactionData>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ChatMessageData(id: $id, conversationId: $conversationId, senderId: $senderId, content: $content, fileUrl: $fileUrl, type: $type, status: $status, isRevoked: $isRevoked, replyToId: $replyToId, replyToMessage: $replyToMessage, reactions: $reactions, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isRevoked, isRevoked) ||
                other.isRevoked == isRevoked) &&
            (identical(other.replyToId, replyToId) ||
                other.replyToId == replyToId) &&
            (identical(other.replyToMessage, replyToMessage) ||
                other.replyToMessage == replyToMessage) &&
            const DeepCollectionEquality().equals(
              other._reactions,
              _reactions,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    conversationId,
    senderId,
    content,
    fileUrl,
    type,
    status,
    isRevoked,
    replyToId,
    replyToMessage,
    const DeepCollectionEquality().hash(_reactions),
    createdAt,
  );

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageDataImplCopyWith<_$ChatMessageDataImpl> get copyWith =>
      __$$ChatMessageDataImplCopyWithImpl<_$ChatMessageDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageDataImplToJson(this);
  }
}

abstract class _ChatMessageData implements ChatMessageData {
  const factory _ChatMessageData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'conversationId') final int? conversationId,
    @JsonKey(name: 'senderId') final int? senderId,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'fileUrl') final String? fileUrl,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'status') final MessageStatus? status,
    @JsonKey(name: 'isRevoked') final bool? isRevoked,
    @JsonKey(name: 'replyToId') final int? replyToId,
    @JsonKey(name: 'replyToMessage') final ChatMessageData? replyToMessage,
    @JsonKey(name: 'reactions') final List<ChatReactionData>? reactions,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
  }) = _$ChatMessageDataImpl;

  factory _ChatMessageData.fromJson(Map<String, dynamic> json) =
      _$ChatMessageDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'conversationId')
  int? get conversationId;
  @override
  @JsonKey(name: 'senderId')
  int? get senderId;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'fileUrl')
  String? get fileUrl;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'status')
  MessageStatus? get status;
  @override
  @JsonKey(name: 'isRevoked')
  bool? get isRevoked;
  @override
  @JsonKey(name: 'replyToId')
  int? get replyToId;
  @override
  @JsonKey(name: 'replyToMessage')
  ChatMessageData? get replyToMessage;
  @override
  @JsonKey(name: 'reactions')
  List<ChatReactionData>? get reactions;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;

  /// Create a copy of ChatMessageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageDataImplCopyWith<_$ChatMessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
