// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_reaction_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatReactionData _$ChatReactionDataFromJson(Map<String, dynamic> json) {
  return _ChatReactionData.fromJson(json);
}

/// @nodoc
mixin _$ChatReactionData {
  @JsonKey(name: 'userId')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactionType')
  int? get reactionType => throw _privateConstructorUsedError;

  /// Serializes this ChatReactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatReactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatReactionDataCopyWith<ChatReactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatReactionDataCopyWith<$Res> {
  factory $ChatReactionDataCopyWith(
    ChatReactionData value,
    $Res Function(ChatReactionData) then,
  ) = _$ChatReactionDataCopyWithImpl<$Res, ChatReactionData>;
  @useResult
  $Res call({
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'reactionType') int? reactionType,
  });
}

/// @nodoc
class _$ChatReactionDataCopyWithImpl<$Res, $Val extends ChatReactionData>
    implements $ChatReactionDataCopyWith<$Res> {
  _$ChatReactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatReactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = freezed, Object? reactionType = freezed}) {
    return _then(
      _value.copyWith(
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            reactionType: freezed == reactionType
                ? _value.reactionType
                : reactionType // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatReactionDataImplCopyWith<$Res>
    implements $ChatReactionDataCopyWith<$Res> {
  factory _$$ChatReactionDataImplCopyWith(
    _$ChatReactionDataImpl value,
    $Res Function(_$ChatReactionDataImpl) then,
  ) = __$$ChatReactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'reactionType') int? reactionType,
  });
}

/// @nodoc
class __$$ChatReactionDataImplCopyWithImpl<$Res>
    extends _$ChatReactionDataCopyWithImpl<$Res, _$ChatReactionDataImpl>
    implements _$$ChatReactionDataImplCopyWith<$Res> {
  __$$ChatReactionDataImplCopyWithImpl(
    _$ChatReactionDataImpl _value,
    $Res Function(_$ChatReactionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatReactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? userId = freezed, Object? reactionType = freezed}) {
    return _then(
      _$ChatReactionDataImpl(
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        reactionType: freezed == reactionType
            ? _value.reactionType
            : reactionType // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatReactionDataImpl implements _ChatReactionData {
  const _$ChatReactionDataImpl({
    @JsonKey(name: 'userId') this.userId,
    @JsonKey(name: 'reactionType') this.reactionType,
  });

  factory _$ChatReactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatReactionDataImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final int? userId;
  @override
  @JsonKey(name: 'reactionType')
  final int? reactionType;

  @override
  String toString() {
    return 'ChatReactionData(userId: $userId, reactionType: $reactionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatReactionDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, reactionType);

  /// Create a copy of ChatReactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatReactionDataImplCopyWith<_$ChatReactionDataImpl> get copyWith =>
      __$$ChatReactionDataImplCopyWithImpl<_$ChatReactionDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatReactionDataImplToJson(this);
  }
}

abstract class _ChatReactionData implements ChatReactionData {
  const factory _ChatReactionData({
    @JsonKey(name: 'userId') final int? userId,
    @JsonKey(name: 'reactionType') final int? reactionType,
  }) = _$ChatReactionDataImpl;

  factory _ChatReactionData.fromJson(Map<String, dynamic> json) =
      _$ChatReactionDataImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  int? get userId;
  @override
  @JsonKey(name: 'reactionType')
  int? get reactionType;

  /// Create a copy of ChatReactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatReactionDataImplCopyWith<_$ChatReactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
