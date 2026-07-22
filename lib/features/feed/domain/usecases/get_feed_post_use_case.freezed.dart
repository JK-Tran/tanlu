// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_post_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFeedPostInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedPostInputCopyWith<GetFeedPostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedPostInputCopyWith<$Res> {
  factory $GetFeedPostInputCopyWith(
    GetFeedPostInput value,
    $Res Function(GetFeedPostInput) then,
  ) = _$GetFeedPostInputCopyWithImpl<$Res, GetFeedPostInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetFeedPostInputCopyWithImpl<$Res, $Val extends GetFeedPostInput>
    implements $GetFeedPostInputCopyWith<$Res> {
  _$GetFeedPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFeedPostInputImplCopyWith<$Res>
    implements $GetFeedPostInputCopyWith<$Res> {
  factory _$$GetFeedPostInputImplCopyWith(
    _$GetFeedPostInputImpl value,
    $Res Function(_$GetFeedPostInputImpl) then,
  ) = __$$GetFeedPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetFeedPostInputImplCopyWithImpl<$Res>
    extends _$GetFeedPostInputCopyWithImpl<$Res, _$GetFeedPostInputImpl>
    implements _$$GetFeedPostInputImplCopyWith<$Res> {
  __$$GetFeedPostInputImplCopyWithImpl(
    _$GetFeedPostInputImpl _value,
    $Res Function(_$GetFeedPostInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetFeedPostInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedPostInputImpl implements _GetFeedPostInput {
  const _$GetFeedPostInputImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'GetFeedPostInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedPostInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedPostInputImplCopyWith<_$GetFeedPostInputImpl> get copyWith =>
      __$$GetFeedPostInputImplCopyWithImpl<_$GetFeedPostInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedPostInput implements GetFeedPostInput {
  const factory _GetFeedPostInput({required final int id}) =
      _$GetFeedPostInputImpl;

  @override
  int get id;

  /// Create a copy of GetFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedPostInputImplCopyWith<_$GetFeedPostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFeedPostOutput {
  FeedPost get post => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedPostOutputCopyWith<GetFeedPostOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedPostOutputCopyWith<$Res> {
  factory $GetFeedPostOutputCopyWith(
    GetFeedPostOutput value,
    $Res Function(GetFeedPostOutput) then,
  ) = _$GetFeedPostOutputCopyWithImpl<$Res, GetFeedPostOutput>;
  @useResult
  $Res call({FeedPost post});

  $FeedPostCopyWith<$Res> get post;
}

/// @nodoc
class _$GetFeedPostOutputCopyWithImpl<$Res, $Val extends GetFeedPostOutput>
    implements $GetFeedPostOutputCopyWith<$Res> {
  _$GetFeedPostOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _value.copyWith(
            post: null == post
                ? _value.post
                : post // ignore: cast_nullable_to_non_nullable
                      as FeedPost,
          )
          as $Val,
    );
  }

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedPostCopyWith<$Res> get post {
    return $FeedPostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeedPostOutputImplCopyWith<$Res>
    implements $GetFeedPostOutputCopyWith<$Res> {
  factory _$$GetFeedPostOutputImplCopyWith(
    _$GetFeedPostOutputImpl value,
    $Res Function(_$GetFeedPostOutputImpl) then,
  ) = __$$GetFeedPostOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedPost post});

  @override
  $FeedPostCopyWith<$Res> get post;
}

/// @nodoc
class __$$GetFeedPostOutputImplCopyWithImpl<$Res>
    extends _$GetFeedPostOutputCopyWithImpl<$Res, _$GetFeedPostOutputImpl>
    implements _$$GetFeedPostOutputImplCopyWith<$Res> {
  __$$GetFeedPostOutputImplCopyWithImpl(
    _$GetFeedPostOutputImpl _value,
    $Res Function(_$GetFeedPostOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? post = null}) {
    return _then(
      _$GetFeedPostOutputImpl(
        post: null == post
            ? _value.post
            : post // ignore: cast_nullable_to_non_nullable
                  as FeedPost,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedPostOutputImpl implements _GetFeedPostOutput {
  const _$GetFeedPostOutputImpl({required this.post});

  @override
  final FeedPost post;

  @override
  String toString() {
    return 'GetFeedPostOutput(post: $post)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedPostOutputImpl &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedPostOutputImplCopyWith<_$GetFeedPostOutputImpl> get copyWith =>
      __$$GetFeedPostOutputImplCopyWithImpl<_$GetFeedPostOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedPostOutput implements GetFeedPostOutput {
  const factory _GetFeedPostOutput({required final FeedPost post}) =
      _$GetFeedPostOutputImpl;

  @override
  FeedPost get post;

  /// Create a copy of GetFeedPostOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedPostOutputImplCopyWith<_$GetFeedPostOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
