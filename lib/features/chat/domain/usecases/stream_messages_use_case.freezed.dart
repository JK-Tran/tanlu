// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_messages_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StreamMessagesInput {
  String get conversationId => throw _privateConstructorUsedError;
  String get currentUserId => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of StreamMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamMessagesInputCopyWith<StreamMessagesInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamMessagesInputCopyWith<$Res> {
  factory $StreamMessagesInputCopyWith(
    StreamMessagesInput value,
    $Res Function(StreamMessagesInput) then,
  ) = _$StreamMessagesInputCopyWithImpl<$Res, StreamMessagesInput>;
  @useResult
  $Res call({String conversationId, String currentUserId, int limit});
}

/// @nodoc
class _$StreamMessagesInputCopyWithImpl<$Res, $Val extends StreamMessagesInput>
    implements $StreamMessagesInputCopyWith<$Res> {
  _$StreamMessagesInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? currentUserId = null,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StreamMessagesInputImplCopyWith<$Res>
    implements $StreamMessagesInputCopyWith<$Res> {
  factory _$$StreamMessagesInputImplCopyWith(
    _$StreamMessagesInputImpl value,
    $Res Function(_$StreamMessagesInputImpl) then,
  ) = __$$StreamMessagesInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String conversationId, String currentUserId, int limit});
}

/// @nodoc
class __$$StreamMessagesInputImplCopyWithImpl<$Res>
    extends _$StreamMessagesInputCopyWithImpl<$Res, _$StreamMessagesInputImpl>
    implements _$$StreamMessagesInputImplCopyWith<$Res> {
  __$$StreamMessagesInputImplCopyWithImpl(
    _$StreamMessagesInputImpl _value,
    $Res Function(_$StreamMessagesInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StreamMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? currentUserId = null,
    Object? limit = null,
  }) {
    return _then(
      _$StreamMessagesInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StreamMessagesInputImpl implements _StreamMessagesInput {
  const _$StreamMessagesInputImpl({
    required this.conversationId,
    required this.currentUserId,
    this.limit = ChatConstants.messagePageSize,
  });

  @override
  final String conversationId;
  @override
  final String currentUserId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'StreamMessagesInput(conversationId: $conversationId, currentUserId: $currentUserId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamMessagesInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, currentUserId, limit);

  /// Create a copy of StreamMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamMessagesInputImplCopyWith<_$StreamMessagesInputImpl> get copyWith =>
      __$$StreamMessagesInputImplCopyWithImpl<_$StreamMessagesInputImpl>(
        this,
        _$identity,
      );
}

abstract class _StreamMessagesInput implements StreamMessagesInput {
  const factory _StreamMessagesInput({
    required final String conversationId,
    required final String currentUserId,
    final int limit,
  }) = _$StreamMessagesInputImpl;

  @override
  String get conversationId;
  @override
  String get currentUserId;
  @override
  int get limit;

  /// Create a copy of StreamMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamMessagesInputImplCopyWith<_$StreamMessagesInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
