// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_likes_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFeedLikesInput {
  String get feedId => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedLikesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedLikesInputCopyWith<GetFeedLikesInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedLikesInputCopyWith<$Res> {
  factory $GetFeedLikesInputCopyWith(
    GetFeedLikesInput value,
    $Res Function(GetFeedLikesInput) then,
  ) = _$GetFeedLikesInputCopyWithImpl<$Res, GetFeedLikesInput>;
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class _$GetFeedLikesInputCopyWithImpl<$Res, $Val extends GetFeedLikesInput>
    implements $GetFeedLikesInputCopyWith<$Res> {
  _$GetFeedLikesInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedLikesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null}) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFeedLikesInputImplCopyWith<$Res>
    implements $GetFeedLikesInputCopyWith<$Res> {
  factory _$$GetFeedLikesInputImplCopyWith(
    _$GetFeedLikesInputImpl value,
    $Res Function(_$GetFeedLikesInputImpl) then,
  ) = __$$GetFeedLikesInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class __$$GetFeedLikesInputImplCopyWithImpl<$Res>
    extends _$GetFeedLikesInputCopyWithImpl<$Res, _$GetFeedLikesInputImpl>
    implements _$$GetFeedLikesInputImplCopyWith<$Res> {
  __$$GetFeedLikesInputImplCopyWithImpl(
    _$GetFeedLikesInputImpl _value,
    $Res Function(_$GetFeedLikesInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedLikesInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null}) {
    return _then(
      _$GetFeedLikesInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedLikesInputImpl
    with DiagnosticableTreeMixin
    implements _GetFeedLikesInput {
  const _$GetFeedLikesInputImpl({required this.feedId});

  @override
  final String feedId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFeedLikesInput(feedId: $feedId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFeedLikesInput'))
      ..add(DiagnosticsProperty('feedId', feedId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedLikesInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId);

  /// Create a copy of GetFeedLikesInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedLikesInputImplCopyWith<_$GetFeedLikesInputImpl> get copyWith =>
      __$$GetFeedLikesInputImplCopyWithImpl<_$GetFeedLikesInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedLikesInput implements GetFeedLikesInput {
  const factory _GetFeedLikesInput({required final String feedId}) =
      _$GetFeedLikesInputImpl;

  @override
  String get feedId;

  /// Create a copy of GetFeedLikesInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedLikesInputImplCopyWith<_$GetFeedLikesInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFeedLikesOutput {
  List<FeedLike> get likes => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedLikesOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedLikesOutputCopyWith<GetFeedLikesOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedLikesOutputCopyWith<$Res> {
  factory $GetFeedLikesOutputCopyWith(
    GetFeedLikesOutput value,
    $Res Function(GetFeedLikesOutput) then,
  ) = _$GetFeedLikesOutputCopyWithImpl<$Res, GetFeedLikesOutput>;
  @useResult
  $Res call({List<FeedLike> likes});
}

/// @nodoc
class _$GetFeedLikesOutputCopyWithImpl<$Res, $Val extends GetFeedLikesOutput>
    implements $GetFeedLikesOutputCopyWith<$Res> {
  _$GetFeedLikesOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedLikesOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? likes = null}) {
    return _then(
      _value.copyWith(
            likes: null == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                      as List<FeedLike>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFeedLikesOutputImplCopyWith<$Res>
    implements $GetFeedLikesOutputCopyWith<$Res> {
  factory _$$GetFeedLikesOutputImplCopyWith(
    _$GetFeedLikesOutputImpl value,
    $Res Function(_$GetFeedLikesOutputImpl) then,
  ) = __$$GetFeedLikesOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FeedLike> likes});
}

/// @nodoc
class __$$GetFeedLikesOutputImplCopyWithImpl<$Res>
    extends _$GetFeedLikesOutputCopyWithImpl<$Res, _$GetFeedLikesOutputImpl>
    implements _$$GetFeedLikesOutputImplCopyWith<$Res> {
  __$$GetFeedLikesOutputImplCopyWithImpl(
    _$GetFeedLikesOutputImpl _value,
    $Res Function(_$GetFeedLikesOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedLikesOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? likes = null}) {
    return _then(
      _$GetFeedLikesOutputImpl(
        likes: null == likes
            ? _value._likes
            : likes // ignore: cast_nullable_to_non_nullable
                  as List<FeedLike>,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedLikesOutputImpl
    with DiagnosticableTreeMixin
    implements _GetFeedLikesOutput {
  const _$GetFeedLikesOutputImpl({required final List<FeedLike> likes})
    : _likes = likes;

  final List<FeedLike> _likes;
  @override
  List<FeedLike> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFeedLikesOutput(likes: $likes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFeedLikesOutput'))
      ..add(DiagnosticsProperty('likes', likes));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedLikesOutputImpl &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_likes));

  /// Create a copy of GetFeedLikesOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedLikesOutputImplCopyWith<_$GetFeedLikesOutputImpl> get copyWith =>
      __$$GetFeedLikesOutputImplCopyWithImpl<_$GetFeedLikesOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedLikesOutput implements GetFeedLikesOutput {
  const factory _GetFeedLikesOutput({required final List<FeedLike> likes}) =
      _$GetFeedLikesOutputImpl;

  @override
  List<FeedLike> get likes;

  /// Create a copy of GetFeedLikesOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedLikesOutputImplCopyWith<_$GetFeedLikesOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
