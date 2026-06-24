// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFeedInput {
  String get feedId => throw _privateConstructorUsedError;
  String get viewerUserId => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedInputCopyWith<GetFeedInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedInputCopyWith<$Res> {
  factory $GetFeedInputCopyWith(
    GetFeedInput value,
    $Res Function(GetFeedInput) then,
  ) = _$GetFeedInputCopyWithImpl<$Res, GetFeedInput>;
  @useResult
  $Res call({String feedId, String viewerUserId});
}

/// @nodoc
class _$GetFeedInputCopyWithImpl<$Res, $Val extends GetFeedInput>
    implements $GetFeedInputCopyWith<$Res> {
  _$GetFeedInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? viewerUserId = null}) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerUserId: null == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFeedInputImplCopyWith<$Res>
    implements $GetFeedInputCopyWith<$Res> {
  factory _$$GetFeedInputImplCopyWith(
    _$GetFeedInputImpl value,
    $Res Function(_$GetFeedInputImpl) then,
  ) = __$$GetFeedInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, String viewerUserId});
}

/// @nodoc
class __$$GetFeedInputImplCopyWithImpl<$Res>
    extends _$GetFeedInputCopyWithImpl<$Res, _$GetFeedInputImpl>
    implements _$$GetFeedInputImplCopyWith<$Res> {
  __$$GetFeedInputImplCopyWithImpl(
    _$GetFeedInputImpl _value,
    $Res Function(_$GetFeedInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? viewerUserId = null}) {
    return _then(
      _$GetFeedInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerUserId: null == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedInputImpl with DiagnosticableTreeMixin implements _GetFeedInput {
  const _$GetFeedInputImpl({required this.feedId, this.viewerUserId = ''});

  @override
  final String feedId;
  @override
  @JsonKey()
  final String viewerUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFeedInput(feedId: $feedId, viewerUserId: $viewerUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFeedInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('viewerUserId', viewerUserId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId, viewerUserId);

  /// Create a copy of GetFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedInputImplCopyWith<_$GetFeedInputImpl> get copyWith =>
      __$$GetFeedInputImplCopyWithImpl<_$GetFeedInputImpl>(this, _$identity);
}

abstract class _GetFeedInput implements GetFeedInput {
  const factory _GetFeedInput({
    required final String feedId,
    final String viewerUserId,
  }) = _$GetFeedInputImpl;

  @override
  String get feedId;
  @override
  String get viewerUserId;

  /// Create a copy of GetFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedInputImplCopyWith<_$GetFeedInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFeedOutput {
  Feed get feed => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedOutputCopyWith<GetFeedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedOutputCopyWith<$Res> {
  factory $GetFeedOutputCopyWith(
    GetFeedOutput value,
    $Res Function(GetFeedOutput) then,
  ) = _$GetFeedOutputCopyWithImpl<$Res, GetFeedOutput>;
  @useResult
  $Res call({Feed feed});

  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class _$GetFeedOutputCopyWithImpl<$Res, $Val extends GetFeedOutput>
    implements $GetFeedOutputCopyWith<$Res> {
  _$GetFeedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feed = null}) {
    return _then(
      _value.copyWith(
            feed: null == feed
                ? _value.feed
                : feed // ignore: cast_nullable_to_non_nullable
                      as Feed,
          )
          as $Val,
    );
  }

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedCopyWith<$Res> get feed {
    return $FeedCopyWith<$Res>(_value.feed, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeedOutputImplCopyWith<$Res>
    implements $GetFeedOutputCopyWith<$Res> {
  factory _$$GetFeedOutputImplCopyWith(
    _$GetFeedOutputImpl value,
    $Res Function(_$GetFeedOutputImpl) then,
  ) = __$$GetFeedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Feed feed});

  @override
  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class __$$GetFeedOutputImplCopyWithImpl<$Res>
    extends _$GetFeedOutputCopyWithImpl<$Res, _$GetFeedOutputImpl>
    implements _$$GetFeedOutputImplCopyWith<$Res> {
  __$$GetFeedOutputImplCopyWithImpl(
    _$GetFeedOutputImpl _value,
    $Res Function(_$GetFeedOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feed = null}) {
    return _then(
      _$GetFeedOutputImpl(
        feed: null == feed
            ? _value.feed
            : feed // ignore: cast_nullable_to_non_nullable
                  as Feed,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedOutputImpl
    with DiagnosticableTreeMixin
    implements _GetFeedOutput {
  const _$GetFeedOutputImpl({required this.feed});

  @override
  final Feed feed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFeedOutput(feed: $feed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFeedOutput'))
      ..add(DiagnosticsProperty('feed', feed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedOutputImpl &&
            (identical(other.feed, feed) || other.feed == feed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feed);

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedOutputImplCopyWith<_$GetFeedOutputImpl> get copyWith =>
      __$$GetFeedOutputImplCopyWithImpl<_$GetFeedOutputImpl>(this, _$identity);
}

abstract class _GetFeedOutput implements GetFeedOutput {
  const factory _GetFeedOutput({required final Feed feed}) =
      _$GetFeedOutputImpl;

  @override
  Feed get feed;

  /// Create a copy of GetFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedOutputImplCopyWith<_$GetFeedOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
