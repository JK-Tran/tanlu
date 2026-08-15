// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_messages_usecase.dart';

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
  int get limit => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;
  int? get targetMessageId => throw _privateConstructorUsedError;

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
  $Res call({
    int conversationId,
    int limit,
    String? before,
    String? after,
    int? targetMessageId,
  });
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
    Object? limit = null,
    Object? before = freezed,
    Object? after = freezed,
    Object? targetMessageId = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            before: freezed == before
                ? _value.before
                : before // ignore: cast_nullable_to_non_nullable
                      as String?,
            after: freezed == after
                ? _value.after
                : after // ignore: cast_nullable_to_non_nullable
                      as String?,
            targetMessageId: freezed == targetMessageId
                ? _value.targetMessageId
                : targetMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
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
  $Res call({
    int conversationId,
    int limit,
    String? before,
    String? after,
    int? targetMessageId,
  });
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
    Object? limit = null,
    Object? before = freezed,
    Object? after = freezed,
    Object? targetMessageId = freezed,
  }) {
    return _then(
      _$GetMessagesInputImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        before: freezed == before
            ? _value.before
            : before // ignore: cast_nullable_to_non_nullable
                  as String?,
        after: freezed == after
            ? _value.after
            : after // ignore: cast_nullable_to_non_nullable
                  as String?,
        targetMessageId: freezed == targetMessageId
            ? _value.targetMessageId
            : targetMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$GetMessagesInputImpl implements _GetMessagesInput {
  const _$GetMessagesInputImpl({
    required this.conversationId,
    this.limit = 20,
    this.before,
    this.after,
    this.targetMessageId,
  });

  @override
  final int conversationId;
  @override
  @JsonKey()
  final int limit;
  @override
  final String? before;
  @override
  final String? after;
  @override
  final int? targetMessageId;

  @override
  String toString() {
    return 'GetMessagesInput(conversationId: $conversationId, limit: $limit, before: $before, after: $after, targetMessageId: $targetMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesInputImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.targetMessageId, targetMessageId) ||
                other.targetMessageId == targetMessageId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    conversationId,
    limit,
    before,
    after,
    targetMessageId,
  );

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
    final int limit,
    final String? before,
    final String? after,
    final int? targetMessageId,
  }) = _$GetMessagesInputImpl;

  @override
  int get conversationId;
  @override
  int get limit;
  @override
  String? get before;
  @override
  String? get after;
  @override
  int? get targetMessageId;

  /// Create a copy of GetMessagesInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesInputImplCopyWith<_$GetMessagesInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetMessagesOutput {
  ChatMessagesResponse get data => throw _privateConstructorUsedError;

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
  $Res call({ChatMessagesResponse data});

  $ChatMessagesResponseCopyWith<$Res> get data;
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
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as ChatMessagesResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessagesResponseCopyWith<$Res> get data {
    return $ChatMessagesResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({ChatMessagesResponse data});

  @override
  $ChatMessagesResponseCopyWith<$Res> get data;
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
  $Res call({Object? data = null}) {
    return _then(
      _$GetMessagesOutputImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as ChatMessagesResponse,
      ),
    );
  }
}

/// @nodoc

class _$GetMessagesOutputImpl extends _GetMessagesOutput {
  const _$GetMessagesOutputImpl({required this.data}) : super._();

  @override
  final ChatMessagesResponse data;

  @override
  String toString() {
    return 'GetMessagesOutput(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesOutputImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

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

abstract class _GetMessagesOutput extends GetMessagesOutput {
  const factory _GetMessagesOutput({required final ChatMessagesResponse data}) =
      _$GetMessagesOutputImpl;
  const _GetMessagesOutput._() : super._();

  @override
  ChatMessagesResponse get data;

  /// Create a copy of GetMessagesOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMessagesOutputImplCopyWith<_$GetMessagesOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
