// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_reaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatReaction {
  int get userId => throw _privateConstructorUsedError;
  int get reactionType => throw _privateConstructorUsedError;

  /// Create a copy of ChatReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatReactionCopyWith<ChatReaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatReactionCopyWith<$Res> {
  factory $ChatReactionCopyWith(
    ChatReaction value,
    $Res Function(ChatReaction) then,
  ) = _$ChatReactionCopyWithImpl<$Res, ChatReaction>;
  @useResult
  $Res call({int userId, int reactionType});
}

/// @nodoc
class _$ChatReactionCopyWithImpl<$Res, $Val extends ChatReaction>
    implements $ChatReactionCopyWith<$Res> {
  _$ChatReactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? reactionType = null}) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ChatReactionImplCopyWith<$Res>
    implements $ChatReactionCopyWith<$Res> {
  factory _$$ChatReactionImplCopyWith(
    _$ChatReactionImpl value,
    $Res Function(_$ChatReactionImpl) then,
  ) = __$$ChatReactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int reactionType});
}

/// @nodoc
class __$$ChatReactionImplCopyWithImpl<$Res>
    extends _$ChatReactionCopyWithImpl<$Res, _$ChatReactionImpl>
    implements _$$ChatReactionImplCopyWith<$Res> {
  __$$ChatReactionImplCopyWithImpl(
    _$ChatReactionImpl _value,
    $Res Function(_$ChatReactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatReaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = null, Object? reactionType = null}) {
    return _then(
      _$ChatReactionImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
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

class _$ChatReactionImpl implements _ChatReaction {
  const _$ChatReactionImpl({this.userId = 0, this.reactionType = 0});

  @override
  @JsonKey()
  final int userId;
  @override
  @JsonKey()
  final int reactionType;

  @override
  String toString() {
    return 'ChatReaction(userId: $userId, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatReactionImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, reactionType);

  /// Create a copy of ChatReaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatReactionImplCopyWith<_$ChatReactionImpl> get copyWith =>
      __$$ChatReactionImplCopyWithImpl<_$ChatReactionImpl>(this, _$identity);
}

abstract class _ChatReaction implements ChatReaction {
  const factory _ChatReaction({final int userId, final int reactionType}) =
      _$ChatReactionImpl;

  @override
  int get userId;
  @override
  int get reactionType;

  /// Create a copy of ChatReaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatReactionImplCopyWith<_$ChatReactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
