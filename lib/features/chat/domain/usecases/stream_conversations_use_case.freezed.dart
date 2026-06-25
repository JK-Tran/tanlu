// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_conversations_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StreamConversationsInput {
  String get currentUserId => throw _privateConstructorUsedError;

  /// Create a copy of StreamConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamConversationsInputCopyWith<StreamConversationsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamConversationsInputCopyWith<$Res> {
  factory $StreamConversationsInputCopyWith(
    StreamConversationsInput value,
    $Res Function(StreamConversationsInput) then,
  ) = _$StreamConversationsInputCopyWithImpl<$Res, StreamConversationsInput>;
  @useResult
  $Res call({String currentUserId});
}

/// @nodoc
class _$StreamConversationsInputCopyWithImpl<
  $Res,
  $Val extends StreamConversationsInput
>
    implements $StreamConversationsInputCopyWith<$Res> {
  _$StreamConversationsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUserId = null}) {
    return _then(
      _value.copyWith(
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StreamConversationsInputImplCopyWith<$Res>
    implements $StreamConversationsInputCopyWith<$Res> {
  factory _$$StreamConversationsInputImplCopyWith(
    _$StreamConversationsInputImpl value,
    $Res Function(_$StreamConversationsInputImpl) then,
  ) = __$$StreamConversationsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentUserId});
}

/// @nodoc
class __$$StreamConversationsInputImplCopyWithImpl<$Res>
    extends
        _$StreamConversationsInputCopyWithImpl<
          $Res,
          _$StreamConversationsInputImpl
        >
    implements _$$StreamConversationsInputImplCopyWith<$Res> {
  __$$StreamConversationsInputImplCopyWithImpl(
    _$StreamConversationsInputImpl _value,
    $Res Function(_$StreamConversationsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StreamConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUserId = null}) {
    return _then(
      _$StreamConversationsInputImpl(
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StreamConversationsInputImpl implements _StreamConversationsInput {
  const _$StreamConversationsInputImpl({required this.currentUserId});

  @override
  final String currentUserId;

  @override
  String toString() {
    return 'StreamConversationsInput(currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamConversationsInputImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId);

  /// Create a copy of StreamConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamConversationsInputImplCopyWith<_$StreamConversationsInputImpl>
  get copyWith =>
      __$$StreamConversationsInputImplCopyWithImpl<
        _$StreamConversationsInputImpl
      >(this, _$identity);
}

abstract class _StreamConversationsInput implements StreamConversationsInput {
  const factory _StreamConversationsInput({
    required final String currentUserId,
  }) = _$StreamConversationsInputImpl;

  @override
  String get currentUserId;

  /// Create a copy of StreamConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamConversationsInputImplCopyWith<_$StreamConversationsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
