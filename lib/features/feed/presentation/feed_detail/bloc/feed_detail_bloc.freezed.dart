// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedDetailStarted {
  FeedPost? get feed => throw _privateConstructorUsedError;
  int? get postId => throw _privateConstructorUsedError;
  int get viewerUserId => throw _privateConstructorUsedError;
  String get viewerFullName => throw _privateConstructorUsedError;
  String get viewerAvatar => throw _privateConstructorUsedError;
  String get viewerRole => throw _privateConstructorUsedError;
  bool get openComments => throw _privateConstructorUsedError;
  int? get highlightCommentId => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailStartedCopyWith<FeedDetailStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailStartedCopyWith<$Res> {
  factory $FeedDetailStartedCopyWith(
    FeedDetailStarted value,
    $Res Function(FeedDetailStarted) then,
  ) = _$FeedDetailStartedCopyWithImpl<$Res, FeedDetailStarted>;
  @useResult
  $Res call({
    FeedPost? feed,
    int? postId,
    int viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
    bool openComments,
    int? highlightCommentId,
  });

  $FeedPostCopyWith<$Res>? get feed;
}

/// @nodoc
class _$FeedDetailStartedCopyWithImpl<$Res, $Val extends FeedDetailStarted>
    implements $FeedDetailStartedCopyWith<$Res> {
  _$FeedDetailStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = freezed,
    Object? postId = freezed,
    Object? viewerUserId = null,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
    Object? openComments = null,
    Object? highlightCommentId = freezed,
  }) {
    return _then(
      _value.copyWith(
            feed: freezed == feed
                ? _value.feed
                : feed // ignore: cast_nullable_to_non_nullable
                      as FeedPost?,
            postId: freezed == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int?,
            viewerUserId: null == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            viewerFullName: null == viewerFullName
                ? _value.viewerFullName
                : viewerFullName // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerAvatar: null == viewerAvatar
                ? _value.viewerAvatar
                : viewerAvatar // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerRole: null == viewerRole
                ? _value.viewerRole
                : viewerRole // ignore: cast_nullable_to_non_nullable
                      as String,
            openComments: null == openComments
                ? _value.openComments
                : openComments // ignore: cast_nullable_to_non_nullable
                      as bool,
            highlightCommentId: freezed == highlightCommentId
                ? _value.highlightCommentId
                : highlightCommentId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedPostCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $FeedPostCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedDetailStartedImplCopyWith<$Res>
    implements $FeedDetailStartedCopyWith<$Res> {
  factory _$$FeedDetailStartedImplCopyWith(
    _$FeedDetailStartedImpl value,
    $Res Function(_$FeedDetailStartedImpl) then,
  ) = __$$FeedDetailStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FeedPost? feed,
    int? postId,
    int viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
    bool openComments,
    int? highlightCommentId,
  });

  @override
  $FeedPostCopyWith<$Res>? get feed;
}

/// @nodoc
class __$$FeedDetailStartedImplCopyWithImpl<$Res>
    extends _$FeedDetailStartedCopyWithImpl<$Res, _$FeedDetailStartedImpl>
    implements _$$FeedDetailStartedImplCopyWith<$Res> {
  __$$FeedDetailStartedImplCopyWithImpl(
    _$FeedDetailStartedImpl _value,
    $Res Function(_$FeedDetailStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = freezed,
    Object? postId = freezed,
    Object? viewerUserId = null,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
    Object? openComments = null,
    Object? highlightCommentId = freezed,
  }) {
    return _then(
      _$FeedDetailStartedImpl(
        feed: freezed == feed
            ? _value.feed
            : feed // ignore: cast_nullable_to_non_nullable
                  as FeedPost?,
        postId: freezed == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int?,
        viewerUserId: null == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        viewerFullName: null == viewerFullName
            ? _value.viewerFullName
            : viewerFullName // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerAvatar: null == viewerAvatar
            ? _value.viewerAvatar
            : viewerAvatar // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerRole: null == viewerRole
            ? _value.viewerRole
            : viewerRole // ignore: cast_nullable_to_non_nullable
                  as String,
        openComments: null == openComments
            ? _value.openComments
            : openComments // ignore: cast_nullable_to_non_nullable
                  as bool,
        highlightCommentId: freezed == highlightCommentId
            ? _value.highlightCommentId
            : highlightCommentId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$FeedDetailStartedImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailStarted {
  const _$FeedDetailStartedImpl({
    this.feed,
    this.postId,
    required this.viewerUserId,
    required this.viewerFullName,
    required this.viewerAvatar,
    required this.viewerRole,
    this.openComments = false,
    this.highlightCommentId,
  });

  @override
  final FeedPost? feed;
  @override
  final int? postId;
  @override
  final int viewerUserId;
  @override
  final String viewerFullName;
  @override
  final String viewerAvatar;
  @override
  final String viewerRole;
  @override
  @JsonKey()
  final bool openComments;
  @override
  final int? highlightCommentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailStarted(feed: $feed, postId: $postId, viewerUserId: $viewerUserId, viewerFullName: $viewerFullName, viewerAvatar: $viewerAvatar, viewerRole: $viewerRole, openComments: $openComments, highlightCommentId: $highlightCommentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedDetailStarted'))
      ..add(DiagnosticsProperty('feed', feed))
      ..add(DiagnosticsProperty('postId', postId))
      ..add(DiagnosticsProperty('viewerUserId', viewerUserId))
      ..add(DiagnosticsProperty('viewerFullName', viewerFullName))
      ..add(DiagnosticsProperty('viewerAvatar', viewerAvatar))
      ..add(DiagnosticsProperty('viewerRole', viewerRole))
      ..add(DiagnosticsProperty('openComments', openComments))
      ..add(DiagnosticsProperty('highlightCommentId', highlightCommentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailStartedImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId) &&
            (identical(other.viewerFullName, viewerFullName) ||
                other.viewerFullName == viewerFullName) &&
            (identical(other.viewerAvatar, viewerAvatar) ||
                other.viewerAvatar == viewerAvatar) &&
            (identical(other.viewerRole, viewerRole) ||
                other.viewerRole == viewerRole) &&
            (identical(other.openComments, openComments) ||
                other.openComments == openComments) &&
            (identical(other.highlightCommentId, highlightCommentId) ||
                other.highlightCommentId == highlightCommentId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    feed,
    postId,
    viewerUserId,
    viewerFullName,
    viewerAvatar,
    viewerRole,
    openComments,
    highlightCommentId,
  );

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailStartedImplCopyWith<_$FeedDetailStartedImpl> get copyWith =>
      __$$FeedDetailStartedImplCopyWithImpl<_$FeedDetailStartedImpl>(
        this,
        _$identity,
      );
}

abstract class _FeedDetailStarted implements FeedDetailStarted {
  const factory _FeedDetailStarted({
    final FeedPost? feed,
    final int? postId,
    required final int viewerUserId,
    required final String viewerFullName,
    required final String viewerAvatar,
    required final String viewerRole,
    final bool openComments,
    final int? highlightCommentId,
  }) = _$FeedDetailStartedImpl;

  @override
  FeedPost? get feed;
  @override
  int? get postId;
  @override
  int get viewerUserId;
  @override
  String get viewerFullName;
  @override
  String get viewerAvatar;
  @override
  String get viewerRole;
  @override
  bool get openComments;
  @override
  int? get highlightCommentId;

  /// Create a copy of FeedDetailStarted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailStartedImplCopyWith<_$FeedDetailStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedDetailDeleteFeed {}

/// @nodoc
abstract class $FeedDetailDeleteFeedCopyWith<$Res> {
  factory $FeedDetailDeleteFeedCopyWith(
    FeedDetailDeleteFeed value,
    $Res Function(FeedDetailDeleteFeed) then,
  ) = _$FeedDetailDeleteFeedCopyWithImpl<$Res, FeedDetailDeleteFeed>;
}

/// @nodoc
class _$FeedDetailDeleteFeedCopyWithImpl<
  $Res,
  $Val extends FeedDetailDeleteFeed
>
    implements $FeedDetailDeleteFeedCopyWith<$Res> {
  _$FeedDetailDeleteFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailDeleteFeed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedDetailDeleteFeedImplCopyWith<$Res> {
  factory _$$FeedDetailDeleteFeedImplCopyWith(
    _$FeedDetailDeleteFeedImpl value,
    $Res Function(_$FeedDetailDeleteFeedImpl) then,
  ) = __$$FeedDetailDeleteFeedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedDetailDeleteFeedImplCopyWithImpl<$Res>
    extends _$FeedDetailDeleteFeedCopyWithImpl<$Res, _$FeedDetailDeleteFeedImpl>
    implements _$$FeedDetailDeleteFeedImplCopyWith<$Res> {
  __$$FeedDetailDeleteFeedImplCopyWithImpl(
    _$FeedDetailDeleteFeedImpl _value,
    $Res Function(_$FeedDetailDeleteFeedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailDeleteFeed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedDetailDeleteFeedImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailDeleteFeed {
  const _$FeedDetailDeleteFeedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailDeleteFeed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FeedDetailDeleteFeed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailDeleteFeedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FeedDetailDeleteFeed implements FeedDetailDeleteFeed {
  const factory _FeedDetailDeleteFeed() = _$FeedDetailDeleteFeedImpl;
}

/// @nodoc
mixin _$FeedDetailLoadComments {
  int? get highlightCommentId => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetailLoadComments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailLoadCommentsCopyWith<FeedDetailLoadComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailLoadCommentsCopyWith<$Res> {
  factory $FeedDetailLoadCommentsCopyWith(
    FeedDetailLoadComments value,
    $Res Function(FeedDetailLoadComments) then,
  ) = _$FeedDetailLoadCommentsCopyWithImpl<$Res, FeedDetailLoadComments>;
  @useResult
  $Res call({int? highlightCommentId});
}

/// @nodoc
class _$FeedDetailLoadCommentsCopyWithImpl<
  $Res,
  $Val extends FeedDetailLoadComments
>
    implements $FeedDetailLoadCommentsCopyWith<$Res> {
  _$FeedDetailLoadCommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailLoadComments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? highlightCommentId = freezed}) {
    return _then(
      _value.copyWith(
            highlightCommentId: freezed == highlightCommentId
                ? _value.highlightCommentId
                : highlightCommentId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedDetailLoadCommentsImplCopyWith<$Res>
    implements $FeedDetailLoadCommentsCopyWith<$Res> {
  factory _$$FeedDetailLoadCommentsImplCopyWith(
    _$FeedDetailLoadCommentsImpl value,
    $Res Function(_$FeedDetailLoadCommentsImpl) then,
  ) = __$$FeedDetailLoadCommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? highlightCommentId});
}

/// @nodoc
class __$$FeedDetailLoadCommentsImplCopyWithImpl<$Res>
    extends
        _$FeedDetailLoadCommentsCopyWithImpl<$Res, _$FeedDetailLoadCommentsImpl>
    implements _$$FeedDetailLoadCommentsImplCopyWith<$Res> {
  __$$FeedDetailLoadCommentsImplCopyWithImpl(
    _$FeedDetailLoadCommentsImpl _value,
    $Res Function(_$FeedDetailLoadCommentsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailLoadComments
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? highlightCommentId = freezed}) {
    return _then(
      _$FeedDetailLoadCommentsImpl(
        highlightCommentId: freezed == highlightCommentId
            ? _value.highlightCommentId
            : highlightCommentId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$FeedDetailLoadCommentsImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailLoadComments {
  const _$FeedDetailLoadCommentsImpl({this.highlightCommentId});

  @override
  final int? highlightCommentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailLoadComments(highlightCommentId: $highlightCommentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedDetailLoadComments'))
      ..add(DiagnosticsProperty('highlightCommentId', highlightCommentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailLoadCommentsImpl &&
            (identical(other.highlightCommentId, highlightCommentId) ||
                other.highlightCommentId == highlightCommentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, highlightCommentId);

  /// Create a copy of FeedDetailLoadComments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailLoadCommentsImplCopyWith<_$FeedDetailLoadCommentsImpl>
  get copyWith =>
      __$$FeedDetailLoadCommentsImplCopyWithImpl<_$FeedDetailLoadCommentsImpl>(
        this,
        _$identity,
      );
}

abstract class _FeedDetailLoadComments implements FeedDetailLoadComments {
  const factory _FeedDetailLoadComments({final int? highlightCommentId}) =
      _$FeedDetailLoadCommentsImpl;

  @override
  int? get highlightCommentId;

  /// Create a copy of FeedDetailLoadComments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailLoadCommentsImplCopyWith<_$FeedDetailLoadCommentsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedDetailSubmitComment {
  String get content => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetailSubmitComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailSubmitCommentCopyWith<FeedDetailSubmitComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailSubmitCommentCopyWith<$Res> {
  factory $FeedDetailSubmitCommentCopyWith(
    FeedDetailSubmitComment value,
    $Res Function(FeedDetailSubmitComment) then,
  ) = _$FeedDetailSubmitCommentCopyWithImpl<$Res, FeedDetailSubmitComment>;
  @useResult
  $Res call({String content, int? parentId});
}

/// @nodoc
class _$FeedDetailSubmitCommentCopyWithImpl<
  $Res,
  $Val extends FeedDetailSubmitComment
>
    implements $FeedDetailSubmitCommentCopyWith<$Res> {
  _$FeedDetailSubmitCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailSubmitComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? parentId = freezed}) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedDetailSubmitCommentImplCopyWith<$Res>
    implements $FeedDetailSubmitCommentCopyWith<$Res> {
  factory _$$FeedDetailSubmitCommentImplCopyWith(
    _$FeedDetailSubmitCommentImpl value,
    $Res Function(_$FeedDetailSubmitCommentImpl) then,
  ) = __$$FeedDetailSubmitCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, int? parentId});
}

/// @nodoc
class __$$FeedDetailSubmitCommentImplCopyWithImpl<$Res>
    extends
        _$FeedDetailSubmitCommentCopyWithImpl<
          $Res,
          _$FeedDetailSubmitCommentImpl
        >
    implements _$$FeedDetailSubmitCommentImplCopyWith<$Res> {
  __$$FeedDetailSubmitCommentImplCopyWithImpl(
    _$FeedDetailSubmitCommentImpl _value,
    $Res Function(_$FeedDetailSubmitCommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailSubmitComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? parentId = freezed}) {
    return _then(
      _$FeedDetailSubmitCommentImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$FeedDetailSubmitCommentImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailSubmitComment {
  const _$FeedDetailSubmitCommentImpl({required this.content, this.parentId});

  @override
  final String content;
  @override
  final int? parentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailSubmitComment(content: $content, parentId: $parentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedDetailSubmitComment'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('parentId', parentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailSubmitCommentImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, parentId);

  /// Create a copy of FeedDetailSubmitComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailSubmitCommentImplCopyWith<_$FeedDetailSubmitCommentImpl>
  get copyWith =>
      __$$FeedDetailSubmitCommentImplCopyWithImpl<
        _$FeedDetailSubmitCommentImpl
      >(this, _$identity);
}

abstract class _FeedDetailSubmitComment implements FeedDetailSubmitComment {
  const factory _FeedDetailSubmitComment({
    required final String content,
    final int? parentId,
  }) = _$FeedDetailSubmitCommentImpl;

  @override
  String get content;
  @override
  int? get parentId;

  /// Create a copy of FeedDetailSubmitComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailSubmitCommentImplCopyWith<_$FeedDetailSubmitCommentImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedDetailToggleLike {}

/// @nodoc
abstract class $FeedDetailToggleLikeCopyWith<$Res> {
  factory $FeedDetailToggleLikeCopyWith(
    FeedDetailToggleLike value,
    $Res Function(FeedDetailToggleLike) then,
  ) = _$FeedDetailToggleLikeCopyWithImpl<$Res, FeedDetailToggleLike>;
}

/// @nodoc
class _$FeedDetailToggleLikeCopyWithImpl<
  $Res,
  $Val extends FeedDetailToggleLike
>
    implements $FeedDetailToggleLikeCopyWith<$Res> {
  _$FeedDetailToggleLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailToggleLike
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FeedDetailToggleLikeImplCopyWith<$Res> {
  factory _$$FeedDetailToggleLikeImplCopyWith(
    _$FeedDetailToggleLikeImpl value,
    $Res Function(_$FeedDetailToggleLikeImpl) then,
  ) = __$$FeedDetailToggleLikeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeedDetailToggleLikeImplCopyWithImpl<$Res>
    extends _$FeedDetailToggleLikeCopyWithImpl<$Res, _$FeedDetailToggleLikeImpl>
    implements _$$FeedDetailToggleLikeImplCopyWith<$Res> {
  __$$FeedDetailToggleLikeImplCopyWithImpl(
    _$FeedDetailToggleLikeImpl _value,
    $Res Function(_$FeedDetailToggleLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailToggleLike
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FeedDetailToggleLikeImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailToggleLike {
  const _$FeedDetailToggleLikeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailToggleLike()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FeedDetailToggleLike'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailToggleLikeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FeedDetailToggleLike implements FeedDetailToggleLike {
  const factory _FeedDetailToggleLike() = _$FeedDetailToggleLikeImpl;
}

/// @nodoc
mixin _$FeedDetailToggleCommentLike {
  int get commentId => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetailToggleCommentLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailToggleCommentLikeCopyWith<FeedDetailToggleCommentLike>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailToggleCommentLikeCopyWith<$Res> {
  factory $FeedDetailToggleCommentLikeCopyWith(
    FeedDetailToggleCommentLike value,
    $Res Function(FeedDetailToggleCommentLike) then,
  ) =
      _$FeedDetailToggleCommentLikeCopyWithImpl<
        $Res,
        FeedDetailToggleCommentLike
      >;
  @useResult
  $Res call({int commentId});
}

/// @nodoc
class _$FeedDetailToggleCommentLikeCopyWithImpl<
  $Res,
  $Val extends FeedDetailToggleCommentLike
>
    implements $FeedDetailToggleCommentLikeCopyWith<$Res> {
  _$FeedDetailToggleCommentLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailToggleCommentLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentId = null}) {
    return _then(
      _value.copyWith(
            commentId: null == commentId
                ? _value.commentId
                : commentId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedDetailToggleCommentLikeImplCopyWith<$Res>
    implements $FeedDetailToggleCommentLikeCopyWith<$Res> {
  factory _$$FeedDetailToggleCommentLikeImplCopyWith(
    _$FeedDetailToggleCommentLikeImpl value,
    $Res Function(_$FeedDetailToggleCommentLikeImpl) then,
  ) = __$$FeedDetailToggleCommentLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int commentId});
}

/// @nodoc
class __$$FeedDetailToggleCommentLikeImplCopyWithImpl<$Res>
    extends
        _$FeedDetailToggleCommentLikeCopyWithImpl<
          $Res,
          _$FeedDetailToggleCommentLikeImpl
        >
    implements _$$FeedDetailToggleCommentLikeImplCopyWith<$Res> {
  __$$FeedDetailToggleCommentLikeImplCopyWithImpl(
    _$FeedDetailToggleCommentLikeImpl _value,
    $Res Function(_$FeedDetailToggleCommentLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailToggleCommentLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? commentId = null}) {
    return _then(
      _$FeedDetailToggleCommentLikeImpl(
        commentId: null == commentId
            ? _value.commentId
            : commentId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FeedDetailToggleCommentLikeImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailToggleCommentLike {
  const _$FeedDetailToggleCommentLikeImpl({required this.commentId});

  @override
  final int commentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailToggleCommentLike(commentId: $commentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedDetailToggleCommentLike'))
      ..add(DiagnosticsProperty('commentId', commentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailToggleCommentLikeImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId);

  /// Create a copy of FeedDetailToggleCommentLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailToggleCommentLikeImplCopyWith<_$FeedDetailToggleCommentLikeImpl>
  get copyWith =>
      __$$FeedDetailToggleCommentLikeImplCopyWithImpl<
        _$FeedDetailToggleCommentLikeImpl
      >(this, _$identity);
}

abstract class _FeedDetailToggleCommentLike
    implements FeedDetailToggleCommentLike {
  const factory _FeedDetailToggleCommentLike({required final int commentId}) =
      _$FeedDetailToggleCommentLikeImpl;

  @override
  int get commentId;

  /// Create a copy of FeedDetailToggleCommentLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailToggleCommentLikeImplCopyWith<_$FeedDetailToggleCommentLikeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedDetailState {
  FeedPost? get feed => throw _privateConstructorUsedError;
  int get viewerUserId => throw _privateConstructorUsedError;
  String get viewerFullName => throw _privateConstructorUsedError;
  String get viewerAvatar => throw _privateConstructorUsedError;
  String get viewerRole => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get feedDeleted => throw _privateConstructorUsedError;
  bool get isLoadingFeed => throw _privateConstructorUsedError; // Comments
  List<FeedComment> get comments => throw _privateConstructorUsedError;
  bool get isLoadingComments => throw _privateConstructorUsedError;
  bool get isSubmittingComment => throw _privateConstructorUsedError;
  int? get highlightCommentId =>
      throw _privateConstructorUsedError; // Realtime state
  bool get isSocketConnected => throw _privateConstructorUsedError;

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedDetailStateCopyWith<FeedDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedDetailStateCopyWith<$Res> {
  factory $FeedDetailStateCopyWith(
    FeedDetailState value,
    $Res Function(FeedDetailState) then,
  ) = _$FeedDetailStateCopyWithImpl<$Res, FeedDetailState>;
  @useResult
  $Res call({
    FeedPost? feed,
    int viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
    String errorMessage,
    bool feedDeleted,
    bool isLoadingFeed,
    List<FeedComment> comments,
    bool isLoadingComments,
    bool isSubmittingComment,
    int? highlightCommentId,
    bool isSocketConnected,
  });

  $FeedPostCopyWith<$Res>? get feed;
}

/// @nodoc
class _$FeedDetailStateCopyWithImpl<$Res, $Val extends FeedDetailState>
    implements $FeedDetailStateCopyWith<$Res> {
  _$FeedDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = freezed,
    Object? viewerUserId = null,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
    Object? errorMessage = null,
    Object? feedDeleted = null,
    Object? isLoadingFeed = null,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? isSubmittingComment = null,
    Object? highlightCommentId = freezed,
    Object? isSocketConnected = null,
  }) {
    return _then(
      _value.copyWith(
            feed: freezed == feed
                ? _value.feed
                : feed // ignore: cast_nullable_to_non_nullable
                      as FeedPost?,
            viewerUserId: null == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            viewerFullName: null == viewerFullName
                ? _value.viewerFullName
                : viewerFullName // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerAvatar: null == viewerAvatar
                ? _value.viewerAvatar
                : viewerAvatar // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerRole: null == viewerRole
                ? _value.viewerRole
                : viewerRole // ignore: cast_nullable_to_non_nullable
                      as String,
            errorMessage: null == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            feedDeleted: null == feedDeleted
                ? _value.feedDeleted
                : feedDeleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingFeed: null == isLoadingFeed
                ? _value.isLoadingFeed
                : isLoadingFeed // ignore: cast_nullable_to_non_nullable
                      as bool,
            comments: null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as List<FeedComment>,
            isLoadingComments: null == isLoadingComments
                ? _value.isLoadingComments
                : isLoadingComments // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmittingComment: null == isSubmittingComment
                ? _value.isSubmittingComment
                : isSubmittingComment // ignore: cast_nullable_to_non_nullable
                      as bool,
            highlightCommentId: freezed == highlightCommentId
                ? _value.highlightCommentId
                : highlightCommentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isSocketConnected: null == isSocketConnected
                ? _value.isSocketConnected
                : isSocketConnected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedPostCopyWith<$Res>? get feed {
    if (_value.feed == null) {
      return null;
    }

    return $FeedPostCopyWith<$Res>(_value.feed!, (value) {
      return _then(_value.copyWith(feed: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedDetailStateImplCopyWith<$Res>
    implements $FeedDetailStateCopyWith<$Res> {
  factory _$$FeedDetailStateImplCopyWith(
    _$FeedDetailStateImpl value,
    $Res Function(_$FeedDetailStateImpl) then,
  ) = __$$FeedDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    FeedPost? feed,
    int viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
    String errorMessage,
    bool feedDeleted,
    bool isLoadingFeed,
    List<FeedComment> comments,
    bool isLoadingComments,
    bool isSubmittingComment,
    int? highlightCommentId,
    bool isSocketConnected,
  });

  @override
  $FeedPostCopyWith<$Res>? get feed;
}

/// @nodoc
class __$$FeedDetailStateImplCopyWithImpl<$Res>
    extends _$FeedDetailStateCopyWithImpl<$Res, _$FeedDetailStateImpl>
    implements _$$FeedDetailStateImplCopyWith<$Res> {
  __$$FeedDetailStateImplCopyWithImpl(
    _$FeedDetailStateImpl _value,
    $Res Function(_$FeedDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feed = freezed,
    Object? viewerUserId = null,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
    Object? errorMessage = null,
    Object? feedDeleted = null,
    Object? isLoadingFeed = null,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? isSubmittingComment = null,
    Object? highlightCommentId = freezed,
    Object? isSocketConnected = null,
  }) {
    return _then(
      _$FeedDetailStateImpl(
        feed: freezed == feed
            ? _value.feed
            : feed // ignore: cast_nullable_to_non_nullable
                  as FeedPost?,
        viewerUserId: null == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        viewerFullName: null == viewerFullName
            ? _value.viewerFullName
            : viewerFullName // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerAvatar: null == viewerAvatar
            ? _value.viewerAvatar
            : viewerAvatar // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerRole: null == viewerRole
            ? _value.viewerRole
            : viewerRole // ignore: cast_nullable_to_non_nullable
                  as String,
        errorMessage: null == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        feedDeleted: null == feedDeleted
            ? _value.feedDeleted
            : feedDeleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingFeed: null == isLoadingFeed
            ? _value.isLoadingFeed
            : isLoadingFeed // ignore: cast_nullable_to_non_nullable
                  as bool,
        comments: null == comments
            ? _value._comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as List<FeedComment>,
        isLoadingComments: null == isLoadingComments
            ? _value.isLoadingComments
            : isLoadingComments // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmittingComment: null == isSubmittingComment
            ? _value.isSubmittingComment
            : isSubmittingComment // ignore: cast_nullable_to_non_nullable
                  as bool,
        highlightCommentId: freezed == highlightCommentId
            ? _value.highlightCommentId
            : highlightCommentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isSocketConnected: null == isSocketConnected
            ? _value.isSocketConnected
            : isSocketConnected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FeedDetailStateImpl
    with DiagnosticableTreeMixin
    implements _FeedDetailState {
  const _$FeedDetailStateImpl({
    this.feed,
    this.viewerUserId = 0,
    this.viewerFullName = '',
    this.viewerAvatar = '',
    this.viewerRole = '',
    this.errorMessage = '',
    this.feedDeleted = false,
    this.isLoadingFeed = false,
    final List<FeedComment> comments = const [],
    this.isLoadingComments = false,
    this.isSubmittingComment = false,
    this.highlightCommentId,
    this.isSocketConnected = false,
  }) : _comments = comments;

  @override
  final FeedPost? feed;
  @override
  @JsonKey()
  final int viewerUserId;
  @override
  @JsonKey()
  final String viewerFullName;
  @override
  @JsonKey()
  final String viewerAvatar;
  @override
  @JsonKey()
  final String viewerRole;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool feedDeleted;
  @override
  @JsonKey()
  final bool isLoadingFeed;
  // Comments
  final List<FeedComment> _comments;
  // Comments
  @override
  @JsonKey()
  List<FeedComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool isLoadingComments;
  @override
  @JsonKey()
  final bool isSubmittingComment;
  @override
  final int? highlightCommentId;
  // Realtime state
  @override
  @JsonKey()
  final bool isSocketConnected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeedDetailState(feed: $feed, viewerUserId: $viewerUserId, viewerFullName: $viewerFullName, viewerAvatar: $viewerAvatar, viewerRole: $viewerRole, errorMessage: $errorMessage, feedDeleted: $feedDeleted, isLoadingFeed: $isLoadingFeed, comments: $comments, isLoadingComments: $isLoadingComments, isSubmittingComment: $isSubmittingComment, highlightCommentId: $highlightCommentId, isSocketConnected: $isSocketConnected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeedDetailState'))
      ..add(DiagnosticsProperty('feed', feed))
      ..add(DiagnosticsProperty('viewerUserId', viewerUserId))
      ..add(DiagnosticsProperty('viewerFullName', viewerFullName))
      ..add(DiagnosticsProperty('viewerAvatar', viewerAvatar))
      ..add(DiagnosticsProperty('viewerRole', viewerRole))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('feedDeleted', feedDeleted))
      ..add(DiagnosticsProperty('isLoadingFeed', isLoadingFeed))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('isLoadingComments', isLoadingComments))
      ..add(DiagnosticsProperty('isSubmittingComment', isSubmittingComment))
      ..add(DiagnosticsProperty('highlightCommentId', highlightCommentId))
      ..add(DiagnosticsProperty('isSocketConnected', isSocketConnected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedDetailStateImpl &&
            (identical(other.feed, feed) || other.feed == feed) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId) &&
            (identical(other.viewerFullName, viewerFullName) ||
                other.viewerFullName == viewerFullName) &&
            (identical(other.viewerAvatar, viewerAvatar) ||
                other.viewerAvatar == viewerAvatar) &&
            (identical(other.viewerRole, viewerRole) ||
                other.viewerRole == viewerRole) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.feedDeleted, feedDeleted) ||
                other.feedDeleted == feedDeleted) &&
            (identical(other.isLoadingFeed, isLoadingFeed) ||
                other.isLoadingFeed == isLoadingFeed) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isLoadingComments, isLoadingComments) ||
                other.isLoadingComments == isLoadingComments) &&
            (identical(other.isSubmittingComment, isSubmittingComment) ||
                other.isSubmittingComment == isSubmittingComment) &&
            (identical(other.highlightCommentId, highlightCommentId) ||
                other.highlightCommentId == highlightCommentId) &&
            (identical(other.isSocketConnected, isSocketConnected) ||
                other.isSocketConnected == isSocketConnected));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    feed,
    viewerUserId,
    viewerFullName,
    viewerAvatar,
    viewerRole,
    errorMessage,
    feedDeleted,
    isLoadingFeed,
    const DeepCollectionEquality().hash(_comments),
    isLoadingComments,
    isSubmittingComment,
    highlightCommentId,
    isSocketConnected,
  );

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedDetailStateImplCopyWith<_$FeedDetailStateImpl> get copyWith =>
      __$$FeedDetailStateImplCopyWithImpl<_$FeedDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FeedDetailState implements FeedDetailState {
  const factory _FeedDetailState({
    final FeedPost? feed,
    final int viewerUserId,
    final String viewerFullName,
    final String viewerAvatar,
    final String viewerRole,
    final String errorMessage,
    final bool feedDeleted,
    final bool isLoadingFeed,
    final List<FeedComment> comments,
    final bool isLoadingComments,
    final bool isSubmittingComment,
    final int? highlightCommentId,
    final bool isSocketConnected,
  }) = _$FeedDetailStateImpl;

  @override
  FeedPost? get feed;
  @override
  int get viewerUserId;
  @override
  String get viewerFullName;
  @override
  String get viewerAvatar;
  @override
  String get viewerRole;
  @override
  String get errorMessage;
  @override
  bool get feedDeleted;
  @override
  bool get isLoadingFeed; // Comments
  @override
  List<FeedComment> get comments;
  @override
  bool get isLoadingComments;
  @override
  bool get isSubmittingComment;
  @override
  int? get highlightCommentId; // Realtime state
  @override
  bool get isSocketConnected;

  /// Create a copy of FeedDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedDetailStateImplCopyWith<_$FeedDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
