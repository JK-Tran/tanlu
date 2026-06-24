// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FeedStarted {
  String get authorId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Create a copy of FeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStartedCopyWith<FeedStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStartedCopyWith<$Res> {
  factory $FeedStartedCopyWith(
    FeedStarted value,
    $Res Function(FeedStarted) then,
  ) = _$FeedStartedCopyWithImpl<$Res, FeedStarted>;
  @useResult
  $Res call({String authorId, String fullName, String avatar, String role});
}

/// @nodoc
class _$FeedStartedCopyWithImpl<$Res, $Val extends FeedStarted>
    implements $FeedStartedCopyWith<$Res> {
  _$FeedStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedStartedImplCopyWith<$Res>
    implements $FeedStartedCopyWith<$Res> {
  factory _$$FeedStartedImplCopyWith(
    _$FeedStartedImpl value,
    $Res Function(_$FeedStartedImpl) then,
  ) = __$$FeedStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String authorId, String fullName, String avatar, String role});
}

/// @nodoc
class __$$FeedStartedImplCopyWithImpl<$Res>
    extends _$FeedStartedCopyWithImpl<$Res, _$FeedStartedImpl>
    implements _$$FeedStartedImplCopyWith<$Res> {
  __$$FeedStartedImplCopyWithImpl(
    _$FeedStartedImpl _value,
    $Res Function(_$FeedStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
  }) {
    return _then(
      _$FeedStartedImpl(
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: null == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$FeedStartedImpl implements _FeedStarted {
  const _$FeedStartedImpl({
    required this.authorId,
    this.fullName = '',
    this.avatar = '',
    this.role = '',
  });

  @override
  final String authorId;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final String role;

  @override
  String toString() {
    return 'FeedStarted(authorId: $authorId, fullName: $fullName, avatar: $avatar, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStartedImpl &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authorId, fullName, avatar, role);

  /// Create a copy of FeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStartedImplCopyWith<_$FeedStartedImpl> get copyWith =>
      __$$FeedStartedImplCopyWithImpl<_$FeedStartedImpl>(this, _$identity);
}

abstract class _FeedStarted implements FeedStarted {
  const factory _FeedStarted({
    required final String authorId,
    final String fullName,
    final String avatar,
    final String role,
  }) = _$FeedStartedImpl;

  @override
  String get authorId;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  String get role;

  /// Create a copy of FeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStartedImplCopyWith<_$FeedStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedTabChanged {
  FeedTab get tab => throw _privateConstructorUsedError;

  /// Create a copy of FeedTabChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedTabChangedCopyWith<FeedTabChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedTabChangedCopyWith<$Res> {
  factory $FeedTabChangedCopyWith(
    FeedTabChanged value,
    $Res Function(FeedTabChanged) then,
  ) = _$FeedTabChangedCopyWithImpl<$Res, FeedTabChanged>;
  @useResult
  $Res call({FeedTab tab});
}

/// @nodoc
class _$FeedTabChangedCopyWithImpl<$Res, $Val extends FeedTabChanged>
    implements $FeedTabChangedCopyWith<$Res> {
  _$FeedTabChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedTabChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tab = null}) {
    return _then(
      _value.copyWith(
            tab: null == tab
                ? _value.tab
                : tab // ignore: cast_nullable_to_non_nullable
                      as FeedTab,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedTabChangedImplCopyWith<$Res>
    implements $FeedTabChangedCopyWith<$Res> {
  factory _$$FeedTabChangedImplCopyWith(
    _$FeedTabChangedImpl value,
    $Res Function(_$FeedTabChangedImpl) then,
  ) = __$$FeedTabChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedTab tab});
}

/// @nodoc
class __$$FeedTabChangedImplCopyWithImpl<$Res>
    extends _$FeedTabChangedCopyWithImpl<$Res, _$FeedTabChangedImpl>
    implements _$$FeedTabChangedImplCopyWith<$Res> {
  __$$FeedTabChangedImplCopyWithImpl(
    _$FeedTabChangedImpl _value,
    $Res Function(_$FeedTabChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedTabChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tab = null}) {
    return _then(
      _$FeedTabChangedImpl(
        tab: null == tab
            ? _value.tab
            : tab // ignore: cast_nullable_to_non_nullable
                  as FeedTab,
      ),
    );
  }
}

/// @nodoc

class _$FeedTabChangedImpl implements _FeedTabChanged {
  const _$FeedTabChangedImpl({required this.tab});

  @override
  final FeedTab tab;

  @override
  String toString() {
    return 'FeedTabChanged(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedTabChangedImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of FeedTabChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedTabChangedImplCopyWith<_$FeedTabChangedImpl> get copyWith =>
      __$$FeedTabChangedImplCopyWithImpl<_$FeedTabChangedImpl>(
        this,
        _$identity,
      );
}

abstract class _FeedTabChanged implements FeedTabChanged {
  const factory _FeedTabChanged({required final FeedTab tab}) =
      _$FeedTabChangedImpl;

  @override
  FeedTab get tab;

  /// Create a copy of FeedTabChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedTabChangedImplCopyWith<_$FeedTabChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefreshClassFeeds {}

/// @nodoc
abstract class $RefreshClassFeedsCopyWith<$Res> {
  factory $RefreshClassFeedsCopyWith(
    RefreshClassFeeds value,
    $Res Function(RefreshClassFeeds) then,
  ) = _$RefreshClassFeedsCopyWithImpl<$Res, RefreshClassFeeds>;
}

/// @nodoc
class _$RefreshClassFeedsCopyWithImpl<$Res, $Val extends RefreshClassFeeds>
    implements $RefreshClassFeedsCopyWith<$Res> {
  _$RefreshClassFeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshClassFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefreshClassFeedsImplCopyWith<$Res> {
  factory _$$RefreshClassFeedsImplCopyWith(
    _$RefreshClassFeedsImpl value,
    $Res Function(_$RefreshClassFeedsImpl) then,
  ) = __$$RefreshClassFeedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshClassFeedsImplCopyWithImpl<$Res>
    extends _$RefreshClassFeedsCopyWithImpl<$Res, _$RefreshClassFeedsImpl>
    implements _$$RefreshClassFeedsImplCopyWith<$Res> {
  __$$RefreshClassFeedsImplCopyWithImpl(
    _$RefreshClassFeedsImpl _value,
    $Res Function(_$RefreshClassFeedsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshClassFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshClassFeedsImpl implements _RefreshClassFeeds {
  const _$RefreshClassFeedsImpl();

  @override
  String toString() {
    return 'RefreshClassFeeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshClassFeedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RefreshClassFeeds implements RefreshClassFeeds {
  const factory _RefreshClassFeeds() = _$RefreshClassFeedsImpl;
}

/// @nodoc
mixin _$RefreshExploreFeeds {}

/// @nodoc
abstract class $RefreshExploreFeedsCopyWith<$Res> {
  factory $RefreshExploreFeedsCopyWith(
    RefreshExploreFeeds value,
    $Res Function(RefreshExploreFeeds) then,
  ) = _$RefreshExploreFeedsCopyWithImpl<$Res, RefreshExploreFeeds>;
}

/// @nodoc
class _$RefreshExploreFeedsCopyWithImpl<$Res, $Val extends RefreshExploreFeeds>
    implements $RefreshExploreFeedsCopyWith<$Res> {
  _$RefreshExploreFeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshExploreFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RefreshExploreFeedsImplCopyWith<$Res> {
  factory _$$RefreshExploreFeedsImplCopyWith(
    _$RefreshExploreFeedsImpl value,
    $Res Function(_$RefreshExploreFeedsImpl) then,
  ) = __$$RefreshExploreFeedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshExploreFeedsImplCopyWithImpl<$Res>
    extends _$RefreshExploreFeedsCopyWithImpl<$Res, _$RefreshExploreFeedsImpl>
    implements _$$RefreshExploreFeedsImplCopyWith<$Res> {
  __$$RefreshExploreFeedsImplCopyWithImpl(
    _$RefreshExploreFeedsImpl _value,
    $Res Function(_$RefreshExploreFeedsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshExploreFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshExploreFeedsImpl implements _RefreshExploreFeeds {
  const _$RefreshExploreFeedsImpl();

  @override
  String toString() {
    return 'RefreshExploreFeeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshExploreFeedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _RefreshExploreFeeds implements RefreshExploreFeeds {
  const factory _RefreshExploreFeeds() = _$RefreshExploreFeedsImpl;
}

/// @nodoc
mixin _$LoadMoreClassFeeds {}

/// @nodoc
abstract class $LoadMoreClassFeedsCopyWith<$Res> {
  factory $LoadMoreClassFeedsCopyWith(
    LoadMoreClassFeeds value,
    $Res Function(LoadMoreClassFeeds) then,
  ) = _$LoadMoreClassFeedsCopyWithImpl<$Res, LoadMoreClassFeeds>;
}

/// @nodoc
class _$LoadMoreClassFeedsCopyWithImpl<$Res, $Val extends LoadMoreClassFeeds>
    implements $LoadMoreClassFeedsCopyWith<$Res> {
  _$LoadMoreClassFeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadMoreClassFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadMoreClassFeedsImplCopyWith<$Res> {
  factory _$$LoadMoreClassFeedsImplCopyWith(
    _$LoadMoreClassFeedsImpl value,
    $Res Function(_$LoadMoreClassFeedsImpl) then,
  ) = __$$LoadMoreClassFeedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreClassFeedsImplCopyWithImpl<$Res>
    extends _$LoadMoreClassFeedsCopyWithImpl<$Res, _$LoadMoreClassFeedsImpl>
    implements _$$LoadMoreClassFeedsImplCopyWith<$Res> {
  __$$LoadMoreClassFeedsImplCopyWithImpl(
    _$LoadMoreClassFeedsImpl _value,
    $Res Function(_$LoadMoreClassFeedsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadMoreClassFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreClassFeedsImpl implements _LoadMoreClassFeeds {
  const _$LoadMoreClassFeedsImpl();

  @override
  String toString() {
    return 'LoadMoreClassFeeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreClassFeedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadMoreClassFeeds implements LoadMoreClassFeeds {
  const factory _LoadMoreClassFeeds() = _$LoadMoreClassFeedsImpl;
}

/// @nodoc
mixin _$LoadMoreExploreFeeds {}

/// @nodoc
abstract class $LoadMoreExploreFeedsCopyWith<$Res> {
  factory $LoadMoreExploreFeedsCopyWith(
    LoadMoreExploreFeeds value,
    $Res Function(LoadMoreExploreFeeds) then,
  ) = _$LoadMoreExploreFeedsCopyWithImpl<$Res, LoadMoreExploreFeeds>;
}

/// @nodoc
class _$LoadMoreExploreFeedsCopyWithImpl<
  $Res,
  $Val extends LoadMoreExploreFeeds
>
    implements $LoadMoreExploreFeedsCopyWith<$Res> {
  _$LoadMoreExploreFeedsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadMoreExploreFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadMoreExploreFeedsImplCopyWith<$Res> {
  factory _$$LoadMoreExploreFeedsImplCopyWith(
    _$LoadMoreExploreFeedsImpl value,
    $Res Function(_$LoadMoreExploreFeedsImpl) then,
  ) = __$$LoadMoreExploreFeedsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreExploreFeedsImplCopyWithImpl<$Res>
    extends _$LoadMoreExploreFeedsCopyWithImpl<$Res, _$LoadMoreExploreFeedsImpl>
    implements _$$LoadMoreExploreFeedsImplCopyWith<$Res> {
  __$$LoadMoreExploreFeedsImplCopyWithImpl(
    _$LoadMoreExploreFeedsImpl _value,
    $Res Function(_$LoadMoreExploreFeedsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadMoreExploreFeeds
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreExploreFeedsImpl implements _LoadMoreExploreFeeds {
  const _$LoadMoreExploreFeedsImpl();

  @override
  String toString() {
    return 'LoadMoreExploreFeeds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreExploreFeedsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadMoreExploreFeeds implements LoadMoreExploreFeeds {
  const factory _LoadMoreExploreFeeds() = _$LoadMoreExploreFeedsImpl;
}

/// @nodoc
mixin _$SubmitFeedLike {
  String get feedId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedLikeCopyWith<SubmitFeedLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedLikeCopyWith<$Res> {
  factory $SubmitFeedLikeCopyWith(
    SubmitFeedLike value,
    $Res Function(SubmitFeedLike) then,
  ) = _$SubmitFeedLikeCopyWithImpl<$Res, SubmitFeedLike>;
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class _$SubmitFeedLikeCopyWithImpl<$Res, $Val extends SubmitFeedLike>
    implements $SubmitFeedLikeCopyWith<$Res> {
  _$SubmitFeedLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedLike
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
abstract class _$$SubmitFeedLikeImplCopyWith<$Res>
    implements $SubmitFeedLikeCopyWith<$Res> {
  factory _$$SubmitFeedLikeImplCopyWith(
    _$SubmitFeedLikeImpl value,
    $Res Function(_$SubmitFeedLikeImpl) then,
  ) = __$$SubmitFeedLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class __$$SubmitFeedLikeImplCopyWithImpl<$Res>
    extends _$SubmitFeedLikeCopyWithImpl<$Res, _$SubmitFeedLikeImpl>
    implements _$$SubmitFeedLikeImplCopyWith<$Res> {
  __$$SubmitFeedLikeImplCopyWithImpl(
    _$SubmitFeedLikeImpl _value,
    $Res Function(_$SubmitFeedLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null}) {
    return _then(
      _$SubmitFeedLikeImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedLikeImpl implements _SubmitFeedLike {
  const _$SubmitFeedLikeImpl({required this.feedId});

  @override
  final String feedId;

  @override
  String toString() {
    return 'SubmitFeedLike(feedId: $feedId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedLikeImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId);

  /// Create a copy of SubmitFeedLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedLikeImplCopyWith<_$SubmitFeedLikeImpl> get copyWith =>
      __$$SubmitFeedLikeImplCopyWithImpl<_$SubmitFeedLikeImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFeedLike implements SubmitFeedLike {
  const factory _SubmitFeedLike({required final String feedId}) =
      _$SubmitFeedLikeImpl;

  @override
  String get feedId;

  /// Create a copy of SubmitFeedLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedLikeImplCopyWith<_$SubmitFeedLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassFeedsStatsUpdated {
  List<Feed> get feeds => throw _privateConstructorUsedError;

  /// Create a copy of _ClassFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$ClassFeedsStatsUpdatedCopyWith<_ClassFeedsStatsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClassFeedsStatsUpdatedCopyWith<$Res> {
  factory _$ClassFeedsStatsUpdatedCopyWith(
    _ClassFeedsStatsUpdated value,
    $Res Function(_ClassFeedsStatsUpdated) then,
  ) = __$ClassFeedsStatsUpdatedCopyWithImpl<$Res, _ClassFeedsStatsUpdated>;
  @useResult
  $Res call({List<Feed> feeds});
}

/// @nodoc
class __$ClassFeedsStatsUpdatedCopyWithImpl<
  $Res,
  $Val extends _ClassFeedsStatsUpdated
>
    implements _$ClassFeedsStatsUpdatedCopyWith<$Res> {
  __$ClassFeedsStatsUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _ClassFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feeds = null}) {
    return _then(
      _value.copyWith(
            feeds: null == feeds
                ? _value.feeds
                : feeds // ignore: cast_nullable_to_non_nullable
                      as List<Feed>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_ClassFeedsStatsUpdatedImplCopyWith<$Res>
    implements _$ClassFeedsStatsUpdatedCopyWith<$Res> {
  factory _$$_ClassFeedsStatsUpdatedImplCopyWith(
    _$_ClassFeedsStatsUpdatedImpl value,
    $Res Function(_$_ClassFeedsStatsUpdatedImpl) then,
  ) = __$$_ClassFeedsStatsUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Feed> feeds});
}

/// @nodoc
class __$$_ClassFeedsStatsUpdatedImplCopyWithImpl<$Res>
    extends
        __$ClassFeedsStatsUpdatedCopyWithImpl<
          $Res,
          _$_ClassFeedsStatsUpdatedImpl
        >
    implements _$$_ClassFeedsStatsUpdatedImplCopyWith<$Res> {
  __$$_ClassFeedsStatsUpdatedImplCopyWithImpl(
    _$_ClassFeedsStatsUpdatedImpl _value,
    $Res Function(_$_ClassFeedsStatsUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of _ClassFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feeds = null}) {
    return _then(
      _$_ClassFeedsStatsUpdatedImpl(
        null == feeds
            ? _value._feeds
            : feeds // ignore: cast_nullable_to_non_nullable
                  as List<Feed>,
      ),
    );
  }
}

/// @nodoc

class _$_ClassFeedsStatsUpdatedImpl implements __ClassFeedsStatsUpdated {
  const _$_ClassFeedsStatsUpdatedImpl(final List<Feed> feeds) : _feeds = feeds;

  final List<Feed> _feeds;
  @override
  List<Feed> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  String toString() {
    return '_ClassFeedsStatsUpdated(feeds: $feeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassFeedsStatsUpdatedImpl &&
            const DeepCollectionEquality().equals(other._feeds, _feeds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_feeds));

  /// Create a copy of _ClassFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassFeedsStatsUpdatedImplCopyWith<_$_ClassFeedsStatsUpdatedImpl>
  get copyWith =>
      __$$_ClassFeedsStatsUpdatedImplCopyWithImpl<
        _$_ClassFeedsStatsUpdatedImpl
      >(this, _$identity);
}

abstract class __ClassFeedsStatsUpdated implements _ClassFeedsStatsUpdated {
  const factory __ClassFeedsStatsUpdated(final List<Feed> feeds) =
      _$_ClassFeedsStatsUpdatedImpl;

  @override
  List<Feed> get feeds;

  /// Create a copy of _ClassFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_ClassFeedsStatsUpdatedImplCopyWith<_$_ClassFeedsStatsUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExploreFeedsStatsUpdated {
  List<Feed> get feeds => throw _privateConstructorUsedError;

  /// Create a copy of _ExploreFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$ExploreFeedsStatsUpdatedCopyWith<_ExploreFeedsStatsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExploreFeedsStatsUpdatedCopyWith<$Res> {
  factory _$ExploreFeedsStatsUpdatedCopyWith(
    _ExploreFeedsStatsUpdated value,
    $Res Function(_ExploreFeedsStatsUpdated) then,
  ) = __$ExploreFeedsStatsUpdatedCopyWithImpl<$Res, _ExploreFeedsStatsUpdated>;
  @useResult
  $Res call({List<Feed> feeds});
}

/// @nodoc
class __$ExploreFeedsStatsUpdatedCopyWithImpl<
  $Res,
  $Val extends _ExploreFeedsStatsUpdated
>
    implements _$ExploreFeedsStatsUpdatedCopyWith<$Res> {
  __$ExploreFeedsStatsUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _ExploreFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feeds = null}) {
    return _then(
      _value.copyWith(
            feeds: null == feeds
                ? _value.feeds
                : feeds // ignore: cast_nullable_to_non_nullable
                      as List<Feed>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_ExploreFeedsStatsUpdatedImplCopyWith<$Res>
    implements _$ExploreFeedsStatsUpdatedCopyWith<$Res> {
  factory _$$_ExploreFeedsStatsUpdatedImplCopyWith(
    _$_ExploreFeedsStatsUpdatedImpl value,
    $Res Function(_$_ExploreFeedsStatsUpdatedImpl) then,
  ) = __$$_ExploreFeedsStatsUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Feed> feeds});
}

/// @nodoc
class __$$_ExploreFeedsStatsUpdatedImplCopyWithImpl<$Res>
    extends
        __$ExploreFeedsStatsUpdatedCopyWithImpl<
          $Res,
          _$_ExploreFeedsStatsUpdatedImpl
        >
    implements _$$_ExploreFeedsStatsUpdatedImplCopyWith<$Res> {
  __$$_ExploreFeedsStatsUpdatedImplCopyWithImpl(
    _$_ExploreFeedsStatsUpdatedImpl _value,
    $Res Function(_$_ExploreFeedsStatsUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of _ExploreFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feeds = null}) {
    return _then(
      _$_ExploreFeedsStatsUpdatedImpl(
        null == feeds
            ? _value._feeds
            : feeds // ignore: cast_nullable_to_non_nullable
                  as List<Feed>,
      ),
    );
  }
}

/// @nodoc

class _$_ExploreFeedsStatsUpdatedImpl implements __ExploreFeedsStatsUpdated {
  const _$_ExploreFeedsStatsUpdatedImpl(final List<Feed> feeds)
    : _feeds = feeds;

  final List<Feed> _feeds;
  @override
  List<Feed> get feeds {
    if (_feeds is EqualUnmodifiableListView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  String toString() {
    return '_ExploreFeedsStatsUpdated(feeds: $feeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExploreFeedsStatsUpdatedImpl &&
            const DeepCollectionEquality().equals(other._feeds, _feeds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_feeds));

  /// Create a copy of _ExploreFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExploreFeedsStatsUpdatedImplCopyWith<_$_ExploreFeedsStatsUpdatedImpl>
  get copyWith =>
      __$$_ExploreFeedsStatsUpdatedImplCopyWithImpl<
        _$_ExploreFeedsStatsUpdatedImpl
      >(this, _$identity);
}

abstract class __ExploreFeedsStatsUpdated implements _ExploreFeedsStatsUpdated {
  const factory __ExploreFeedsStatsUpdated(final List<Feed> feeds) =
      _$_ExploreFeedsStatsUpdatedImpl;

  @override
  List<Feed> get feeds;

  /// Create a copy of _ExploreFeedsStatsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_ExploreFeedsStatsUpdatedImplCopyWith<_$_ExploreFeedsStatsUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedState {
  List<Feed> get classFeeds => throw _privateConstructorUsedError;
  List<Feed> get exploreFeeds => throw _privateConstructorUsedError;
  FeedTab get selectedTab => throw _privateConstructorUsedError;
  bool get isLoadingClass => throw _privateConstructorUsedError;
  bool get isLoadingExplore => throw _privateConstructorUsedError;
  bool get isLoadingMoreClass => throw _privateConstructorUsedError;
  bool get isLoadingMoreExplore => throw _privateConstructorUsedError;
  bool get hasMoreClass => throw _privateConstructorUsedError;
  bool get hasMoreExplore => throw _privateConstructorUsedError;
  String? get classNextCursor => throw _privateConstructorUsedError;
  String? get exploreNextCursor => throw _privateConstructorUsedError;
  int get newFeedCount => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  String? get authorId => throw _privateConstructorUsedError;
  String? get viewerUserId => throw _privateConstructorUsedError;
  String get viewerFullName => throw _privateConstructorUsedError;
  String get viewerAvatar => throw _privateConstructorUsedError;
  String get viewerRole => throw _privateConstructorUsedError;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res, FeedState>;
  @useResult
  $Res call({
    List<Feed> classFeeds,
    List<Feed> exploreFeeds,
    FeedTab selectedTab,
    bool isLoadingClass,
    bool isLoadingExplore,
    bool isLoadingMoreClass,
    bool isLoadingMoreExplore,
    bool hasMoreClass,
    bool hasMoreExplore,
    String? classNextCursor,
    String? exploreNextCursor,
    int newFeedCount,
    String onPageError,
    String? authorId,
    String? viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
  });
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res, $Val extends FeedState>
    implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classFeeds = null,
    Object? exploreFeeds = null,
    Object? selectedTab = null,
    Object? isLoadingClass = null,
    Object? isLoadingExplore = null,
    Object? isLoadingMoreClass = null,
    Object? isLoadingMoreExplore = null,
    Object? hasMoreClass = null,
    Object? hasMoreExplore = null,
    Object? classNextCursor = freezed,
    Object? exploreNextCursor = freezed,
    Object? newFeedCount = null,
    Object? onPageError = null,
    Object? authorId = freezed,
    Object? viewerUserId = freezed,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
  }) {
    return _then(
      _value.copyWith(
            classFeeds: null == classFeeds
                ? _value.classFeeds
                : classFeeds // ignore: cast_nullable_to_non_nullable
                      as List<Feed>,
            exploreFeeds: null == exploreFeeds
                ? _value.exploreFeeds
                : exploreFeeds // ignore: cast_nullable_to_non_nullable
                      as List<Feed>,
            selectedTab: null == selectedTab
                ? _value.selectedTab
                : selectedTab // ignore: cast_nullable_to_non_nullable
                      as FeedTab,
            isLoadingClass: null == isLoadingClass
                ? _value.isLoadingClass
                : isLoadingClass // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingExplore: null == isLoadingExplore
                ? _value.isLoadingExplore
                : isLoadingExplore // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingMoreClass: null == isLoadingMoreClass
                ? _value.isLoadingMoreClass
                : isLoadingMoreClass // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingMoreExplore: null == isLoadingMoreExplore
                ? _value.isLoadingMoreExplore
                : isLoadingMoreExplore // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMoreClass: null == hasMoreClass
                ? _value.hasMoreClass
                : hasMoreClass // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMoreExplore: null == hasMoreExplore
                ? _value.hasMoreExplore
                : hasMoreExplore // ignore: cast_nullable_to_non_nullable
                      as bool,
            classNextCursor: freezed == classNextCursor
                ? _value.classNextCursor
                : classNextCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            exploreNextCursor: freezed == exploreNextCursor
                ? _value.exploreNextCursor
                : exploreNextCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            newFeedCount: null == newFeedCount
                ? _value.newFeedCount
                : newFeedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            authorId: freezed == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            viewerUserId: freezed == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedStateImplCopyWith<$Res>
    implements $FeedStateCopyWith<$Res> {
  factory _$$FeedStateImplCopyWith(
    _$FeedStateImpl value,
    $Res Function(_$FeedStateImpl) then,
  ) = __$$FeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Feed> classFeeds,
    List<Feed> exploreFeeds,
    FeedTab selectedTab,
    bool isLoadingClass,
    bool isLoadingExplore,
    bool isLoadingMoreClass,
    bool isLoadingMoreExplore,
    bool hasMoreClass,
    bool hasMoreExplore,
    String? classNextCursor,
    String? exploreNextCursor,
    int newFeedCount,
    String onPageError,
    String? authorId,
    String? viewerUserId,
    String viewerFullName,
    String viewerAvatar,
    String viewerRole,
  });
}

/// @nodoc
class __$$FeedStateImplCopyWithImpl<$Res>
    extends _$FeedStateCopyWithImpl<$Res, _$FeedStateImpl>
    implements _$$FeedStateImplCopyWith<$Res> {
  __$$FeedStateImplCopyWithImpl(
    _$FeedStateImpl _value,
    $Res Function(_$FeedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classFeeds = null,
    Object? exploreFeeds = null,
    Object? selectedTab = null,
    Object? isLoadingClass = null,
    Object? isLoadingExplore = null,
    Object? isLoadingMoreClass = null,
    Object? isLoadingMoreExplore = null,
    Object? hasMoreClass = null,
    Object? hasMoreExplore = null,
    Object? classNextCursor = freezed,
    Object? exploreNextCursor = freezed,
    Object? newFeedCount = null,
    Object? onPageError = null,
    Object? authorId = freezed,
    Object? viewerUserId = freezed,
    Object? viewerFullName = null,
    Object? viewerAvatar = null,
    Object? viewerRole = null,
  }) {
    return _then(
      _$FeedStateImpl(
        classFeeds: null == classFeeds
            ? _value._classFeeds
            : classFeeds // ignore: cast_nullable_to_non_nullable
                  as List<Feed>,
        exploreFeeds: null == exploreFeeds
            ? _value._exploreFeeds
            : exploreFeeds // ignore: cast_nullable_to_non_nullable
                  as List<Feed>,
        selectedTab: null == selectedTab
            ? _value.selectedTab
            : selectedTab // ignore: cast_nullable_to_non_nullable
                  as FeedTab,
        isLoadingClass: null == isLoadingClass
            ? _value.isLoadingClass
            : isLoadingClass // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingExplore: null == isLoadingExplore
            ? _value.isLoadingExplore
            : isLoadingExplore // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingMoreClass: null == isLoadingMoreClass
            ? _value.isLoadingMoreClass
            : isLoadingMoreClass // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingMoreExplore: null == isLoadingMoreExplore
            ? _value.isLoadingMoreExplore
            : isLoadingMoreExplore // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMoreClass: null == hasMoreClass
            ? _value.hasMoreClass
            : hasMoreClass // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMoreExplore: null == hasMoreExplore
            ? _value.hasMoreExplore
            : hasMoreExplore // ignore: cast_nullable_to_non_nullable
                  as bool,
        classNextCursor: freezed == classNextCursor
            ? _value.classNextCursor
            : classNextCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        exploreNextCursor: freezed == exploreNextCursor
            ? _value.exploreNextCursor
            : exploreNextCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        newFeedCount: null == newFeedCount
            ? _value.newFeedCount
            : newFeedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        authorId: freezed == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        viewerUserId: freezed == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
      ),
    );
  }
}

/// @nodoc

class _$FeedStateImpl implements _FeedState {
  const _$FeedStateImpl({
    final List<Feed> classFeeds = const [],
    final List<Feed> exploreFeeds = const [],
    this.selectedTab = FeedTab.myClass,
    this.isLoadingClass = false,
    this.isLoadingExplore = false,
    this.isLoadingMoreClass = false,
    this.isLoadingMoreExplore = false,
    this.hasMoreClass = false,
    this.hasMoreExplore = false,
    this.classNextCursor,
    this.exploreNextCursor,
    this.newFeedCount = 0,
    this.onPageError = '',
    this.authorId,
    this.viewerUserId,
    this.viewerFullName = '',
    this.viewerAvatar = '',
    this.viewerRole = '',
  }) : _classFeeds = classFeeds,
       _exploreFeeds = exploreFeeds;

  final List<Feed> _classFeeds;
  @override
  @JsonKey()
  List<Feed> get classFeeds {
    if (_classFeeds is EqualUnmodifiableListView) return _classFeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classFeeds);
  }

  final List<Feed> _exploreFeeds;
  @override
  @JsonKey()
  List<Feed> get exploreFeeds {
    if (_exploreFeeds is EqualUnmodifiableListView) return _exploreFeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exploreFeeds);
  }

  @override
  @JsonKey()
  final FeedTab selectedTab;
  @override
  @JsonKey()
  final bool isLoadingClass;
  @override
  @JsonKey()
  final bool isLoadingExplore;
  @override
  @JsonKey()
  final bool isLoadingMoreClass;
  @override
  @JsonKey()
  final bool isLoadingMoreExplore;
  @override
  @JsonKey()
  final bool hasMoreClass;
  @override
  @JsonKey()
  final bool hasMoreExplore;
  @override
  final String? classNextCursor;
  @override
  final String? exploreNextCursor;
  @override
  @JsonKey()
  final int newFeedCount;
  @override
  @JsonKey()
  final String onPageError;
  @override
  final String? authorId;
  @override
  final String? viewerUserId;
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
  String toString() {
    return 'FeedState(classFeeds: $classFeeds, exploreFeeds: $exploreFeeds, selectedTab: $selectedTab, isLoadingClass: $isLoadingClass, isLoadingExplore: $isLoadingExplore, isLoadingMoreClass: $isLoadingMoreClass, isLoadingMoreExplore: $isLoadingMoreExplore, hasMoreClass: $hasMoreClass, hasMoreExplore: $hasMoreExplore, classNextCursor: $classNextCursor, exploreNextCursor: $exploreNextCursor, newFeedCount: $newFeedCount, onPageError: $onPageError, authorId: $authorId, viewerUserId: $viewerUserId, viewerFullName: $viewerFullName, viewerAvatar: $viewerAvatar, viewerRole: $viewerRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStateImpl &&
            const DeepCollectionEquality().equals(
              other._classFeeds,
              _classFeeds,
            ) &&
            const DeepCollectionEquality().equals(
              other._exploreFeeds,
              _exploreFeeds,
            ) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.isLoadingClass, isLoadingClass) ||
                other.isLoadingClass == isLoadingClass) &&
            (identical(other.isLoadingExplore, isLoadingExplore) ||
                other.isLoadingExplore == isLoadingExplore) &&
            (identical(other.isLoadingMoreClass, isLoadingMoreClass) ||
                other.isLoadingMoreClass == isLoadingMoreClass) &&
            (identical(other.isLoadingMoreExplore, isLoadingMoreExplore) ||
                other.isLoadingMoreExplore == isLoadingMoreExplore) &&
            (identical(other.hasMoreClass, hasMoreClass) ||
                other.hasMoreClass == hasMoreClass) &&
            (identical(other.hasMoreExplore, hasMoreExplore) ||
                other.hasMoreExplore == hasMoreExplore) &&
            (identical(other.classNextCursor, classNextCursor) ||
                other.classNextCursor == classNextCursor) &&
            (identical(other.exploreNextCursor, exploreNextCursor) ||
                other.exploreNextCursor == exploreNextCursor) &&
            (identical(other.newFeedCount, newFeedCount) ||
                other.newFeedCount == newFeedCount) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId) &&
            (identical(other.viewerFullName, viewerFullName) ||
                other.viewerFullName == viewerFullName) &&
            (identical(other.viewerAvatar, viewerAvatar) ||
                other.viewerAvatar == viewerAvatar) &&
            (identical(other.viewerRole, viewerRole) ||
                other.viewerRole == viewerRole));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_classFeeds),
    const DeepCollectionEquality().hash(_exploreFeeds),
    selectedTab,
    isLoadingClass,
    isLoadingExplore,
    isLoadingMoreClass,
    isLoadingMoreExplore,
    hasMoreClass,
    hasMoreExplore,
    classNextCursor,
    exploreNextCursor,
    newFeedCount,
    onPageError,
    authorId,
    viewerUserId,
    viewerFullName,
    viewerAvatar,
    viewerRole,
  );

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      __$$FeedStateImplCopyWithImpl<_$FeedStateImpl>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState({
    final List<Feed> classFeeds,
    final List<Feed> exploreFeeds,
    final FeedTab selectedTab,
    final bool isLoadingClass,
    final bool isLoadingExplore,
    final bool isLoadingMoreClass,
    final bool isLoadingMoreExplore,
    final bool hasMoreClass,
    final bool hasMoreExplore,
    final String? classNextCursor,
    final String? exploreNextCursor,
    final int newFeedCount,
    final String onPageError,
    final String? authorId,
    final String? viewerUserId,
    final String viewerFullName,
    final String viewerAvatar,
    final String viewerRole,
  }) = _$FeedStateImpl;

  @override
  List<Feed> get classFeeds;
  @override
  List<Feed> get exploreFeeds;
  @override
  FeedTab get selectedTab;
  @override
  bool get isLoadingClass;
  @override
  bool get isLoadingExplore;
  @override
  bool get isLoadingMoreClass;
  @override
  bool get isLoadingMoreExplore;
  @override
  bool get hasMoreClass;
  @override
  bool get hasMoreExplore;
  @override
  String? get classNextCursor;
  @override
  String? get exploreNextCursor;
  @override
  int get newFeedCount;
  @override
  String get onPageError;
  @override
  String? get authorId;
  @override
  String? get viewerUserId;
  @override
  String get viewerFullName;
  @override
  String get viewerAvatar;
  @override
  String get viewerRole;

  /// Create a copy of FeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedStateImplCopyWith<_$FeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
