// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_messages_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetMessagesInput {
  int get conversationId => throw _privateConstructorUsedError;
  int get skip => throw _privateConstructorUsedError;
  int get take => throw _privateConstructorUsedError;

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMessagesInputCopyWith<GetMessagesInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMessagesInputCopyWith<$Res> {
  factory $GetMessagesInputCopyWith(
    GetMessagesInput value,
    $Res Function(GetMessagesInput) then,
  ) = _$GetMessagesInputCopyWithImpl<$Res, GetMessagesInput>;
  @useResult
  $Res call({int conversationId, int skip, int take});
}

/// @nodoc
class _$GetMessagesInputCopyWithImpl<$Res, $Val extends GetMessagesInput>
    implements $GetMessagesInputCopyWith<$Res> {
  _$GetMessagesInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? skip = null,
    Object? take = null,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            skip: null == skip
                ? _value.skip
                : skip // ignore: cast_nullable_to_non_nullable
                      as int,
            take: null == take
                ? _value.take
                : take // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetMessagesInputImplCopyWith<$Res>
    implements $GetMessagesInputCopyWith<$Res> {
  factory _$$GetMessagesInputImplCopyWith(
    _$GetMessagesInputImpl value,
    $Res Function(_$GetMessagesInputImpl) then,
  ) = __$$GetMessagesInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int conversationId, int skip, int take});
}

/// @nodoc
class __$$GetMessagesInputImplCopyWithImpl<$Res>
    extends _$GetMessagesInputCopyWithImpl<$Res, _$GetMessagesInputImpl>
    implements _$$GetMessagesInputImplCopyWith<$Res> {
  __$$GetMessagesInputImplCopyWithImpl(
    _$GetMessagesInputImpl _value,
    $Res Function(_$GetMessagesInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? skip = null,
    Object? take = null,
  }) {
    return _then(
      _$GetMessagesInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        skip: null == skip
            ? _value.skip
            : skip // ignore: cast_nullable_to_non_nullable
                  as int,
        take: null == take
            ? _value.take
            : take // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetMessagesInputImpl implements _GetMessagesInput {
  const _$GetMessagesInputImpl({
    required this.conversationId,
    this.skip = 0,
    this.take = 50,
  });

  @override
  final int conversationId;
  @override
  @JsonKey()
  final int skip;
  @override
  @JsonKey()
  final int take;

  @override
  String toString() {
    return 'GetMessagesInput(conversationId: $conversationId, skip: $skip, take: $take)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.take, take) || other.take == take));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, skip, take);

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesInputImplCopyWith<_$GetMessagesInputImpl> get copyWith =>
      __$$GetMessagesInputImplCopyWithImpl<_$GetMessagesInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetMessagesInput implements GetMessagesInput {
  const factory _GetMessagesInput({
    required final int conversationId,
    final int skip,
    final int take,
  }) = _$GetMessagesInputImpl;

  @override
  int get conversationId;
  @override
  int get skip;
  @override
  int get take;

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesInputImplCopyWith<_$GetMessagesInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetMessagesOutput {
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMessagesOutputCopyWith<GetMessagesOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMessagesOutputCopyWith<$Res> {
  factory $GetMessagesOutputCopyWith(
    GetMessagesOutput value,
    $Res Function(GetMessagesOutput) then,
  ) = _$GetMessagesOutputCopyWithImpl<$Res, GetMessagesOutput>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class _$GetMessagesOutputCopyWithImpl<$Res, $Val extends GetMessagesOutput>
    implements $GetMessagesOutputCopyWith<$Res> {
  _$GetMessagesOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<Message>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetMessagesOutputImplCopyWith<$Res>
    implements $GetMessagesOutputCopyWith<$Res> {
  factory _$$GetMessagesOutputImplCopyWith(
    _$GetMessagesOutputImpl value,
    $Res Function(_$GetMessagesOutputImpl) then,
  ) = __$$GetMessagesOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$GetMessagesOutputImplCopyWithImpl<$Res>
    extends _$GetMessagesOutputCopyWithImpl<$Res, _$GetMessagesOutputImpl>
    implements _$$GetMessagesOutputImplCopyWith<$Res> {
  __$$GetMessagesOutputImplCopyWithImpl(
    _$GetMessagesOutputImpl _value,
    $Res Function(_$GetMessagesOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$GetMessagesOutputImpl(
        null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<Message>,
      ),
    );
  }
}

/// @nodoc

class _$GetMessagesOutputImpl implements _GetMessagesOutput {
  const _$GetMessagesOutputImpl(final List<Message> messages)
    : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'GetMessagesOutput(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesOutputImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesOutputImplCopyWith<_$GetMessagesOutputImpl> get copyWith =>
      __$$GetMessagesOutputImplCopyWithImpl<_$GetMessagesOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetMessagesOutput implements GetMessagesOutput {
  const factory _GetMessagesOutput(final List<Message> messages) =
      _$GetMessagesOutputImpl;

  @override
  List<Message> get messages;

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesOutputImplCopyWith<_$GetMessagesOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
