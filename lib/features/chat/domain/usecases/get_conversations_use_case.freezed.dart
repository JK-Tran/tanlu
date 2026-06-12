// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_conversations_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetConversationsInput {}

/// @nodoc
abstract class $GetConversationsInputCopyWith<$Res> {
  factory $GetConversationsInputCopyWith(
    GetConversationsInput value,
    $Res Function(GetConversationsInput) then,
  ) = _$GetConversationsInputCopyWithImpl<$Res, GetConversationsInput>;
}

/// @nodoc
class _$GetConversationsInputCopyWithImpl<
  $Res,
  $Val extends GetConversationsInput
>
    implements $GetConversationsInputCopyWith<$Res> {
  _$GetConversationsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetConversationsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetConversationsInputImplCopyWith<$Res> {
  factory _$$GetConversationsInputImplCopyWith(
    _$GetConversationsInputImpl value,
    $Res Function(_$GetConversationsInputImpl) then,
  ) = __$$GetConversationsInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetConversationsInputImplCopyWithImpl<$Res>
    extends
        _$GetConversationsInputCopyWithImpl<$Res, _$GetConversationsInputImpl>
    implements _$$GetConversationsInputImplCopyWith<$Res> {
  __$$GetConversationsInputImplCopyWithImpl(
    _$GetConversationsInputImpl _value,
    $Res Function(_$GetConversationsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetConversationsInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetConversationsInputImpl implements _GetConversationsInput {
  const _$GetConversationsInputImpl();

  @override
  String toString() {
    return 'GetConversationsInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationsInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetConversationsInput implements GetConversationsInput {
  const factory _GetConversationsInput() = _$GetConversationsInputImpl;
}

/// @nodoc
mixin _$GetConversationsOutput {
  List<Conversation> get conversations => throw _privateConstructorUsedError;

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetConversationsOutputCopyWith<GetConversationsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetConversationsOutputCopyWith<$Res> {
  factory $GetConversationsOutputCopyWith(
    GetConversationsOutput value,
    $Res Function(GetConversationsOutput) then,
  ) = _$GetConversationsOutputCopyWithImpl<$Res, GetConversationsOutput>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class _$GetConversationsOutputCopyWithImpl<
  $Res,
  $Val extends GetConversationsOutput
>
    implements $GetConversationsOutputCopyWith<$Res> {
  _$GetConversationsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversations = null}) {
    return _then(
      _value.copyWith(
            conversations: null == conversations
                ? _value.conversations
                : conversations // ignore: cast_nullable_to_non_nullable
                      as List<Conversation>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetConversationsOutputImplCopyWith<$Res>
    implements $GetConversationsOutputCopyWith<$Res> {
  factory _$$GetConversationsOutputImplCopyWith(
    _$GetConversationsOutputImpl value,
    $Res Function(_$GetConversationsOutputImpl) then,
  ) = __$$GetConversationsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$GetConversationsOutputImplCopyWithImpl<$Res>
    extends
        _$GetConversationsOutputCopyWithImpl<$Res, _$GetConversationsOutputImpl>
    implements _$$GetConversationsOutputImplCopyWith<$Res> {
  __$$GetConversationsOutputImplCopyWithImpl(
    _$GetConversationsOutputImpl _value,
    $Res Function(_$GetConversationsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversations = null}) {
    return _then(
      _$GetConversationsOutputImpl(
        null == conversations
            ? _value._conversations
            : conversations // ignore: cast_nullable_to_non_nullable
                  as List<Conversation>,
      ),
    );
  }
}

/// @nodoc

class _$GetConversationsOutputImpl implements _GetConversationsOutput {
  const _$GetConversationsOutputImpl(final List<Conversation> conversations)
    : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return 'GetConversationsOutput(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationsOutputImpl &&
            const DeepCollectionEquality().equals(
              other._conversations,
              _conversations,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_conversations),
  );

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetConversationsOutputImplCopyWith<_$GetConversationsOutputImpl>
  get copyWith =>
      __$$GetConversationsOutputImplCopyWithImpl<_$GetConversationsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetConversationsOutput implements GetConversationsOutput {
  const factory _GetConversationsOutput(
    final List<Conversation> conversations,
  ) = _$GetConversationsOutputImpl;

  @override
  List<Conversation> get conversations;

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetConversationsOutputImplCopyWith<_$GetConversationsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
