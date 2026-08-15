// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatMessagesResponseData _$ChatMessagesResponseDataFromJson(
  Map<String, dynamic> json,
) {
  return _ChatMessagesResponseData.fromJson(json);
}

/// @nodoc
mixin _$ChatMessagesResponseData {
  @JsonKey(name: 'messages')
  List<ChatMessageData> get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'anchorMessageId')
  int? get anchorMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationCursorData? get pagination => throw _privateConstructorUsedError;

  /// Serializes this ChatMessagesResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagesResponseDataCopyWith<ChatMessagesResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesResponseDataCopyWith<$Res> {
  factory $ChatMessagesResponseDataCopyWith(
    ChatMessagesResponseData value,
    $Res Function(ChatMessagesResponseData) then,
  ) = _$ChatMessagesResponseDataCopyWithImpl<$Res, ChatMessagesResponseData>;
  @useResult
  $Res call({
    @JsonKey(name: 'messages') List<ChatMessageData> messages,
    @JsonKey(name: 'anchorMessageId') int? anchorMessageId,
    @JsonKey(name: 'pagination') PaginationCursorData? pagination,
  });

  $PaginationCursorDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ChatMessagesResponseDataCopyWithImpl<
  $Res,
  $Val extends ChatMessagesResponseData
>
    implements $ChatMessagesResponseDataCopyWith<$Res> {
  _$ChatMessagesResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? anchorMessageId = freezed,
    Object? pagination = freezed,
  }) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessageData>,
            anchorMessageId: freezed == anchorMessageId
                ? _value.anchorMessageId
                : anchorMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
            pagination: freezed == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as PaginationCursorData?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCursorDataCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCursorDataCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessagesResponseDataImplCopyWith<$Res>
    implements $ChatMessagesResponseDataCopyWith<$Res> {
  factory _$$ChatMessagesResponseDataImplCopyWith(
    _$ChatMessagesResponseDataImpl value,
    $Res Function(_$ChatMessagesResponseDataImpl) then,
  ) = __$$ChatMessagesResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'messages') List<ChatMessageData> messages,
    @JsonKey(name: 'anchorMessageId') int? anchorMessageId,
    @JsonKey(name: 'pagination') PaginationCursorData? pagination,
  });

  @override
  $PaginationCursorDataCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$ChatMessagesResponseDataImplCopyWithImpl<$Res>
    extends
        _$ChatMessagesResponseDataCopyWithImpl<
          $Res,
          _$ChatMessagesResponseDataImpl
        >
    implements _$$ChatMessagesResponseDataImplCopyWith<$Res> {
  __$$ChatMessagesResponseDataImplCopyWithImpl(
    _$ChatMessagesResponseDataImpl _value,
    $Res Function(_$ChatMessagesResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? anchorMessageId = freezed,
    Object? pagination = freezed,
  }) {
    return _then(
      _$ChatMessagesResponseDataImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessageData>,
        anchorMessageId: freezed == anchorMessageId
            ? _value.anchorMessageId
            : anchorMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        pagination: freezed == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as PaginationCursorData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessagesResponseDataImpl implements _ChatMessagesResponseData {
  const _$ChatMessagesResponseDataImpl({
    @JsonKey(name: 'messages') final List<ChatMessageData> messages = const [],
    @JsonKey(name: 'anchorMessageId') this.anchorMessageId,
    @JsonKey(name: 'pagination') this.pagination,
  }) : _messages = messages;

  factory _$ChatMessagesResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessagesResponseDataImplFromJson(json);

  final List<ChatMessageData> _messages;
  @override
  @JsonKey(name: 'messages')
  List<ChatMessageData> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  @JsonKey(name: 'anchorMessageId')
  final int? anchorMessageId;
  @override
  @JsonKey(name: 'pagination')
  final PaginationCursorData? pagination;

  @override
  String toString() {
    return 'ChatMessagesResponseData(messages: $messages, anchorMessageId: $anchorMessageId, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesResponseDataImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.anchorMessageId, anchorMessageId) ||
                other.anchorMessageId == anchorMessageId) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messages),
    anchorMessageId,
    pagination,
  );

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesResponseDataImplCopyWith<_$ChatMessagesResponseDataImpl>
  get copyWith =>
      __$$ChatMessagesResponseDataImplCopyWithImpl<
        _$ChatMessagesResponseDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessagesResponseDataImplToJson(this);
  }
}

abstract class _ChatMessagesResponseData implements ChatMessagesResponseData {
  const factory _ChatMessagesResponseData({
    @JsonKey(name: 'messages') final List<ChatMessageData> messages,
    @JsonKey(name: 'anchorMessageId') final int? anchorMessageId,
    @JsonKey(name: 'pagination') final PaginationCursorData? pagination,
  }) = _$ChatMessagesResponseDataImpl;

  factory _ChatMessagesResponseData.fromJson(Map<String, dynamic> json) =
      _$ChatMessagesResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'messages')
  List<ChatMessageData> get messages;
  @override
  @JsonKey(name: 'anchorMessageId')
  int? get anchorMessageId;
  @override
  @JsonKey(name: 'pagination')
  PaginationCursorData? get pagination;

  /// Create a copy of ChatMessagesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagesResponseDataImplCopyWith<_$ChatMessagesResponseDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
