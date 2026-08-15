// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatMessagesResponse {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  int? get anchorMessageId => throw _privateConstructorUsedError;
  PaginationCursor? get pagination => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagesResponseCopyWith<ChatMessagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesResponseCopyWith<$Res> {
  factory $ChatMessagesResponseCopyWith(
    ChatMessagesResponse value,
    $Res Function(ChatMessagesResponse) then,
  ) = _$ChatMessagesResponseCopyWithImpl<$Res, ChatMessagesResponse>;
  @useResult
  $Res call({
    List<ChatMessage> messages,
    int? anchorMessageId,
    PaginationCursor? pagination,
  });

  $PaginationCursorCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$ChatMessagesResponseCopyWithImpl<
  $Res,
  $Val extends ChatMessagesResponse
>
    implements $ChatMessagesResponseCopyWith<$Res> {
  _$ChatMessagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessagesResponse
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
                      as List<ChatMessage>,
            anchorMessageId: freezed == anchorMessageId
                ? _value.anchorMessageId
                : anchorMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
            pagination: freezed == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as PaginationCursor?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationCursorCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCursorCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessagesResponseImplCopyWith<$Res>
    implements $ChatMessagesResponseCopyWith<$Res> {
  factory _$$ChatMessagesResponseImplCopyWith(
    _$ChatMessagesResponseImpl value,
    $Res Function(_$ChatMessagesResponseImpl) then,
  ) = __$$ChatMessagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatMessage> messages,
    int? anchorMessageId,
    PaginationCursor? pagination,
  });

  @override
  $PaginationCursorCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$ChatMessagesResponseImplCopyWithImpl<$Res>
    extends _$ChatMessagesResponseCopyWithImpl<$Res, _$ChatMessagesResponseImpl>
    implements _$$ChatMessagesResponseImplCopyWith<$Res> {
  __$$ChatMessagesResponseImplCopyWithImpl(
    _$ChatMessagesResponseImpl _value,
    $Res Function(_$ChatMessagesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? anchorMessageId = freezed,
    Object? pagination = freezed,
  }) {
    return _then(
      _$ChatMessagesResponseImpl(
        messages: null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessage>,
        anchorMessageId: freezed == anchorMessageId
            ? _value.anchorMessageId
            : anchorMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        pagination: freezed == pagination
            ? _value.pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as PaginationCursor?,
      ),
    );
  }
}

/// @nodoc

class _$ChatMessagesResponseImpl implements _ChatMessagesResponse {
  const _$ChatMessagesResponseImpl({
    final List<ChatMessage> messages = const [],
    this.anchorMessageId,
    this.pagination,
  }) : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  @JsonKey()
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int? anchorMessageId;
  @override
  final PaginationCursor? pagination;

  @override
  String toString() {
    return 'ChatMessagesResponse(messages: $messages, anchorMessageId: $anchorMessageId, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesResponseImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.anchorMessageId, anchorMessageId) ||
                other.anchorMessageId == anchorMessageId) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_messages),
    anchorMessageId,
    pagination,
  );

  /// Create a copy of ChatMessagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesResponseImplCopyWith<_$ChatMessagesResponseImpl>
  get copyWith =>
      __$$ChatMessagesResponseImplCopyWithImpl<_$ChatMessagesResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _ChatMessagesResponse implements ChatMessagesResponse {
  const factory _ChatMessagesResponse({
    final List<ChatMessage> messages,
    final int? anchorMessageId,
    final PaginationCursor? pagination,
  }) = _$ChatMessagesResponseImpl;

  @override
  List<ChatMessage> get messages;
  @override
  int? get anchorMessageId;
  @override
  PaginationCursor? get pagination;

  /// Create a copy of ChatMessagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagesResponseImplCopyWith<_$ChatMessagesResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
