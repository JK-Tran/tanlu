// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_conversations_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetConversationsInput {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetConversationsInputCopyWith<GetConversationsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetConversationsInputCopyWith<$Res> {
  factory $GetConversationsInputCopyWith(
    GetConversationsInput value,
    $Res Function(GetConversationsInput) then,
  ) = _$GetConversationsInputCopyWithImpl<$Res, GetConversationsInput>;
  @useResult
  $Res call({int page, int limit});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? limit = null}) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$GetConversationsInputImplCopyWith<$Res>
    implements $GetConversationsInputCopyWith<$Res> {
  factory _$$GetConversationsInputImplCopyWith(
    _$GetConversationsInputImpl value,
    $Res Function(_$GetConversationsInputImpl) then,
  ) = __$$GetConversationsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? limit = null}) {
    return _then(
      _$GetConversationsInputImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetConversationsInputImpl implements _GetConversationsInput {
  const _$GetConversationsInputImpl({this.page = 1, this.limit = 10});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetConversationsInput(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationsInputImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  /// Create a copy of GetConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetConversationsInputImplCopyWith<_$GetConversationsInputImpl>
  get copyWith =>
      __$$GetConversationsInputImplCopyWithImpl<_$GetConversationsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetConversationsInput implements GetConversationsInput {
  const factory _GetConversationsInput({final int page, final int limit}) =
      _$GetConversationsInputImpl;

  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of GetConversationsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetConversationsInputImplCopyWith<_$GetConversationsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetConversationsOutput {
  PagedList<ChatConversation> get data => throw _privateConstructorUsedError;

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
  $Res call({PagedList<ChatConversation> data});

  $PagedListCopyWith<ChatConversation, $Res> get data;
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
  $Res call({Object? data = null}) {
    return _then(
      _value.copyWith(
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as PagedList<ChatConversation>,
          )
          as $Val,
    );
  }

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagedListCopyWith<ChatConversation, $Res> get data {
    return $PagedListCopyWith<ChatConversation, $Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({PagedList<ChatConversation> data});

  @override
  $PagedListCopyWith<ChatConversation, $Res> get data;
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
  $Res call({Object? data = null}) {
    return _then(
      _$GetConversationsOutputImpl(
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as PagedList<ChatConversation>,
      ),
    );
  }
}

/// @nodoc

class _$GetConversationsOutputImpl extends _GetConversationsOutput {
  const _$GetConversationsOutputImpl({required this.data}) : super._();

  @override
  final PagedList<ChatConversation> data;

  @override
  String toString() {
    return 'GetConversationsOutput(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConversationsOutputImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

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

abstract class _GetConversationsOutput extends GetConversationsOutput {
  const factory _GetConversationsOutput({
    required final PagedList<ChatConversation> data,
  }) = _$GetConversationsOutputImpl;
  const _GetConversationsOutput._() : super._();

  @override
  PagedList<ChatConversation> get data;

  /// Create a copy of GetConversationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetConversationsOutputImplCopyWith<_$GetConversationsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
