// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_feed_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateFeedInput {
  String get feedId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get allowComments => throw _privateConstructorUsedError;
  List<String> get keptImageUrls => throw _privateConstructorUsedError;
  List<String> get keptVideoUrls => throw _privateConstructorUsedError;
  List<String> get localImagePaths => throw _privateConstructorUsedError;
  List<String> get localVideoPaths => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedInputCopyWith<UpdateFeedInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedInputCopyWith<$Res> {
  factory $UpdateFeedInputCopyWith(
    UpdateFeedInput value,
    $Res Function(UpdateFeedInput) then,
  ) = _$UpdateFeedInputCopyWithImpl<$Res, UpdateFeedInput>;
  @useResult
  $Res call({
    String feedId,
    Author currentUser,
    String content,
    bool isPublic,
    bool allowComments,
    List<String> keptImageUrls,
    List<String> keptVideoUrls,
    List<String> localImagePaths,
    List<String> localVideoPaths,
  });

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$UpdateFeedInputCopyWithImpl<$Res, $Val extends UpdateFeedInput>
    implements $UpdateFeedInputCopyWith<$Res> {
  _$UpdateFeedInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? currentUser = null,
    Object? content = null,
    Object? isPublic = null,
    Object? allowComments = null,
    Object? keptImageUrls = null,
    Object? keptVideoUrls = null,
    Object? localImagePaths = null,
    Object? localVideoPaths = null,
  }) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentUser: null == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                      as Author,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            allowComments: null == allowComments
                ? _value.allowComments
                : allowComments // ignore: cast_nullable_to_non_nullable
                      as bool,
            keptImageUrls: null == keptImageUrls
                ? _value.keptImageUrls
                : keptImageUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            keptVideoUrls: null == keptVideoUrls
                ? _value.keptVideoUrls
                : keptVideoUrls // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            localImagePaths: null == localImagePaths
                ? _value.localImagePaths
                : localImagePaths // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            localVideoPaths: null == localVideoPaths
                ? _value.localVideoPaths
                : localVideoPaths // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get currentUser {
    return $AuthorCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateFeedInputImplCopyWith<$Res>
    implements $UpdateFeedInputCopyWith<$Res> {
  factory _$$UpdateFeedInputImplCopyWith(
    _$UpdateFeedInputImpl value,
    $Res Function(_$UpdateFeedInputImpl) then,
  ) = __$$UpdateFeedInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String feedId,
    Author currentUser,
    String content,
    bool isPublic,
    bool allowComments,
    List<String> keptImageUrls,
    List<String> keptVideoUrls,
    List<String> localImagePaths,
    List<String> localVideoPaths,
  });

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$UpdateFeedInputImplCopyWithImpl<$Res>
    extends _$UpdateFeedInputCopyWithImpl<$Res, _$UpdateFeedInputImpl>
    implements _$$UpdateFeedInputImplCopyWith<$Res> {
  __$$UpdateFeedInputImplCopyWithImpl(
    _$UpdateFeedInputImpl _value,
    $Res Function(_$UpdateFeedInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? currentUser = null,
    Object? content = null,
    Object? isPublic = null,
    Object? allowComments = null,
    Object? keptImageUrls = null,
    Object? keptVideoUrls = null,
    Object? localImagePaths = null,
    Object? localVideoPaths = null,
  }) {
    return _then(
      _$UpdateFeedInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentUser: null == currentUser
            ? _value.currentUser
            : currentUser // ignore: cast_nullable_to_non_nullable
                  as Author,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        allowComments: null == allowComments
            ? _value.allowComments
            : allowComments // ignore: cast_nullable_to_non_nullable
                  as bool,
        keptImageUrls: null == keptImageUrls
            ? _value._keptImageUrls
            : keptImageUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        keptVideoUrls: null == keptVideoUrls
            ? _value._keptVideoUrls
            : keptVideoUrls // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        localImagePaths: null == localImagePaths
            ? _value._localImagePaths
            : localImagePaths // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        localVideoPaths: null == localVideoPaths
            ? _value._localVideoPaths
            : localVideoPaths // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFeedInputImpl
    with DiagnosticableTreeMixin
    implements _UpdateFeedInput {
  const _$UpdateFeedInputImpl({
    required this.feedId,
    required this.currentUser,
    required this.content,
    this.isPublic = false,
    this.allowComments = true,
    final List<String> keptImageUrls = const [],
    final List<String> keptVideoUrls = const [],
    final List<String> localImagePaths = const [],
    final List<String> localVideoPaths = const [],
  }) : _keptImageUrls = keptImageUrls,
       _keptVideoUrls = keptVideoUrls,
       _localImagePaths = localImagePaths,
       _localVideoPaths = localVideoPaths;

  @override
  final String feedId;
  @override
  final Author currentUser;
  @override
  final String content;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final bool allowComments;
  final List<String> _keptImageUrls;
  @override
  @JsonKey()
  List<String> get keptImageUrls {
    if (_keptImageUrls is EqualUnmodifiableListView) return _keptImageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keptImageUrls);
  }

  final List<String> _keptVideoUrls;
  @override
  @JsonKey()
  List<String> get keptVideoUrls {
    if (_keptVideoUrls is EqualUnmodifiableListView) return _keptVideoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keptVideoUrls);
  }

  final List<String> _localImagePaths;
  @override
  @JsonKey()
  List<String> get localImagePaths {
    if (_localImagePaths is EqualUnmodifiableListView) return _localImagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localImagePaths);
  }

  final List<String> _localVideoPaths;
  @override
  @JsonKey()
  List<String> get localVideoPaths {
    if (_localVideoPaths is EqualUnmodifiableListView) return _localVideoPaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localVideoPaths);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFeedInput(feedId: $feedId, currentUser: $currentUser, content: $content, isPublic: $isPublic, allowComments: $allowComments, keptImageUrls: $keptImageUrls, keptVideoUrls: $keptVideoUrls, localImagePaths: $localImagePaths, localVideoPaths: $localVideoPaths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFeedInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('currentUser', currentUser))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('isPublic', isPublic))
      ..add(DiagnosticsProperty('allowComments', allowComments))
      ..add(DiagnosticsProperty('keptImageUrls', keptImageUrls))
      ..add(DiagnosticsProperty('keptVideoUrls', keptVideoUrls))
      ..add(DiagnosticsProperty('localImagePaths', localImagePaths))
      ..add(DiagnosticsProperty('localVideoPaths', localVideoPaths));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            const DeepCollectionEquality().equals(
              other._keptImageUrls,
              _keptImageUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._keptVideoUrls,
              _keptVideoUrls,
            ) &&
            const DeepCollectionEquality().equals(
              other._localImagePaths,
              _localImagePaths,
            ) &&
            const DeepCollectionEquality().equals(
              other._localVideoPaths,
              _localVideoPaths,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    feedId,
    currentUser,
    content,
    isPublic,
    allowComments,
    const DeepCollectionEquality().hash(_keptImageUrls),
    const DeepCollectionEquality().hash(_keptVideoUrls),
    const DeepCollectionEquality().hash(_localImagePaths),
    const DeepCollectionEquality().hash(_localVideoPaths),
  );

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedInputImplCopyWith<_$UpdateFeedInputImpl> get copyWith =>
      __$$UpdateFeedInputImplCopyWithImpl<_$UpdateFeedInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateFeedInput implements UpdateFeedInput {
  const factory _UpdateFeedInput({
    required final String feedId,
    required final Author currentUser,
    required final String content,
    final bool isPublic,
    final bool allowComments,
    final List<String> keptImageUrls,
    final List<String> keptVideoUrls,
    final List<String> localImagePaths,
    final List<String> localVideoPaths,
  }) = _$UpdateFeedInputImpl;

  @override
  String get feedId;
  @override
  Author get currentUser;
  @override
  String get content;
  @override
  bool get isPublic;
  @override
  bool get allowComments;
  @override
  List<String> get keptImageUrls;
  @override
  List<String> get keptVideoUrls;
  @override
  List<String> get localImagePaths;
  @override
  List<String> get localVideoPaths;

  /// Create a copy of UpdateFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedInputImplCopyWith<_$UpdateFeedInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateFeedOutput {
  Feed get feed => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedOutputCopyWith<UpdateFeedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedOutputCopyWith<$Res> {
  factory $UpdateFeedOutputCopyWith(
    UpdateFeedOutput value,
    $Res Function(UpdateFeedOutput) then,
  ) = _$UpdateFeedOutputCopyWithImpl<$Res, UpdateFeedOutput>;
  @useResult
  $Res call({Feed feed});

  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class _$UpdateFeedOutputCopyWithImpl<$Res, $Val extends UpdateFeedOutput>
    implements $UpdateFeedOutputCopyWith<$Res> {
  _$UpdateFeedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedOutput
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

  /// Create a copy of UpdateFeedOutput
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
abstract class _$$UpdateFeedOutputImplCopyWith<$Res>
    implements $UpdateFeedOutputCopyWith<$Res> {
  factory _$$UpdateFeedOutputImplCopyWith(
    _$UpdateFeedOutputImpl value,
    $Res Function(_$UpdateFeedOutputImpl) then,
  ) = __$$UpdateFeedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Feed feed});

  @override
  $FeedCopyWith<$Res> get feed;
}

/// @nodoc
class __$$UpdateFeedOutputImplCopyWithImpl<$Res>
    extends _$UpdateFeedOutputCopyWithImpl<$Res, _$UpdateFeedOutputImpl>
    implements _$$UpdateFeedOutputImplCopyWith<$Res> {
  __$$UpdateFeedOutputImplCopyWithImpl(
    _$UpdateFeedOutputImpl _value,
    $Res Function(_$UpdateFeedOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feed = null}) {
    return _then(
      _$UpdateFeedOutputImpl(
        feed: null == feed
            ? _value.feed
            : feed // ignore: cast_nullable_to_non_nullable
                  as Feed,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFeedOutputImpl
    with DiagnosticableTreeMixin
    implements _UpdateFeedOutput {
  const _$UpdateFeedOutputImpl({required this.feed});

  @override
  final Feed feed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFeedOutput(feed: $feed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFeedOutput'))
      ..add(DiagnosticsProperty('feed', feed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedOutputImpl &&
            (identical(other.feed, feed) || other.feed == feed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feed);

  /// Create a copy of UpdateFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedOutputImplCopyWith<_$UpdateFeedOutputImpl> get copyWith =>
      __$$UpdateFeedOutputImplCopyWithImpl<_$UpdateFeedOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateFeedOutput implements UpdateFeedOutput {
  const factory _UpdateFeedOutput({required final Feed feed}) =
      _$UpdateFeedOutputImpl;

  @override
  Feed get feed;

  /// Create a copy of UpdateFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedOutputImplCopyWith<_$UpdateFeedOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
