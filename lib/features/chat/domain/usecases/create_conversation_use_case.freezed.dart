// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_conversation_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateConversationInput {
  List<int> get participantIds => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of CreateConversationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConversationInputCopyWith<CreateConversationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConversationInputCopyWith<$Res> {
  factory $CreateConversationInputCopyWith(
    CreateConversationInput value,
    $Res Function(CreateConversationInput) then,
  ) = _$CreateConversationInputCopyWithImpl<$Res, CreateConversationInput>;
  @useResult
  $Res call({List<int> participantIds, String type, String? name});
}

/// @nodoc
class _$CreateConversationInputCopyWithImpl<
  $Res,
  $Val extends CreateConversationInput
>
    implements $CreateConversationInputCopyWith<$Res> {
  _$CreateConversationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConversationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? type = null,
    Object? name = freezed,
  }) {
    return _then(
      _value.copyWith(
            participantIds: null == participantIds
                ? _value.participantIds
                : participantIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateConversationInputImplCopyWith<$Res>
    implements $CreateConversationInputCopyWith<$Res> {
  factory _$$CreateConversationInputImplCopyWith(
    _$CreateConversationInputImpl value,
    $Res Function(_$CreateConversationInputImpl) then,
  ) = __$$CreateConversationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> participantIds, String type, String? name});
}

/// @nodoc
class __$$CreateConversationInputImplCopyWithImpl<$Res>
    extends
        _$CreateConversationInputCopyWithImpl<
          $Res,
          _$CreateConversationInputImpl
        >
    implements _$$CreateConversationInputImplCopyWith<$Res> {
  __$$CreateConversationInputImplCopyWithImpl(
    _$CreateConversationInputImpl _value,
    $Res Function(_$CreateConversationInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateConversationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? type = null,
    Object? name = freezed,
  }) {
    return _then(
      _$CreateConversationInputImpl(
        participantIds: null == participantIds
            ? _value._participantIds
            : participantIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CreateConversationInputImpl implements _CreateConversationInput {
  const _$CreateConversationInputImpl({
    required final List<int> participantIds,
    required this.type,
    this.name,
  }) : _participantIds = participantIds;

  final List<int> _participantIds;
  @override
  List<int> get participantIds {
    if (_participantIds is EqualUnmodifiableListView) return _participantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantIds);
  }

  @override
  final String type;
  @override
  final String? name;

  @override
  String toString() {
    return 'CreateConversationInput(participantIds: $participantIds, type: $type, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConversationInputImpl &&
            const DeepCollectionEquality().equals(
              other._participantIds,
              _participantIds,
            ) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_participantIds),
    type,
    name,
  );

  /// Create a copy of CreateConversationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConversationInputImplCopyWith<_$CreateConversationInputImpl>
  get copyWith =>
      __$$CreateConversationInputImplCopyWithImpl<
        _$CreateConversationInputImpl
      >(this, _$identity);
}

abstract class _CreateConversationInput implements CreateConversationInput {
  const factory _CreateConversationInput({
    required final List<int> participantIds,
    required final String type,
    final String? name,
  }) = _$CreateConversationInputImpl;

  @override
  List<int> get participantIds;
  @override
  String get type;
  @override
  String? get name;

  /// Create a copy of CreateConversationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConversationInputImplCopyWith<_$CreateConversationInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateConversationOutput {
  Conversation get conversation => throw _privateConstructorUsedError;

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateConversationOutputCopyWith<CreateConversationOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConversationOutputCopyWith<$Res> {
  factory $CreateConversationOutputCopyWith(
    CreateConversationOutput value,
    $Res Function(CreateConversationOutput) then,
  ) = _$CreateConversationOutputCopyWithImpl<$Res, CreateConversationOutput>;
  @useResult
  $Res call({Conversation conversation});

  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class _$CreateConversationOutputCopyWithImpl<
  $Res,
  $Val extends CreateConversationOutput
>
    implements $CreateConversationOutputCopyWith<$Res> {
  _$CreateConversationOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversation = null}) {
    return _then(
      _value.copyWith(
            conversation: null == conversation
                ? _value.conversation
                : conversation // ignore: cast_nullable_to_non_nullable
                      as Conversation,
          )
          as $Val,
    );
  }

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res> get conversation {
    return $ConversationCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateConversationOutputImplCopyWith<$Res>
    implements $CreateConversationOutputCopyWith<$Res> {
  factory _$$CreateConversationOutputImplCopyWith(
    _$CreateConversationOutputImpl value,
    $Res Function(_$CreateConversationOutputImpl) then,
  ) = __$$CreateConversationOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Conversation conversation});

  @override
  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$CreateConversationOutputImplCopyWithImpl<$Res>
    extends
        _$CreateConversationOutputCopyWithImpl<
          $Res,
          _$CreateConversationOutputImpl
        >
    implements _$$CreateConversationOutputImplCopyWith<$Res> {
  __$$CreateConversationOutputImplCopyWithImpl(
    _$CreateConversationOutputImpl _value,
    $Res Function(_$CreateConversationOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversation = null}) {
    return _then(
      _$CreateConversationOutputImpl(
        null == conversation
            ? _value.conversation
            : conversation // ignore: cast_nullable_to_non_nullable
                  as Conversation,
      ),
    );
  }
}

/// @nodoc

class _$CreateConversationOutputImpl implements _CreateConversationOutput {
  const _$CreateConversationOutputImpl(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'CreateConversationOutput(conversation: $conversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateConversationOutputImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateConversationOutputImplCopyWith<_$CreateConversationOutputImpl>
  get copyWith =>
      __$$CreateConversationOutputImplCopyWithImpl<
        _$CreateConversationOutputImpl
      >(this, _$identity);
}

abstract class _CreateConversationOutput implements CreateConversationOutput {
  const factory _CreateConversationOutput(final Conversation conversation) =
      _$CreateConversationOutputImpl;

  @override
  Conversation get conversation;

  /// Create a copy of CreateConversationOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateConversationOutputImplCopyWith<_$CreateConversationOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
