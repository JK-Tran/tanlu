// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_feed_comments_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFeedCommentsInput {
  int get postId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int? get highlightCommentId => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedCommentsInputCopyWith<GetFeedCommentsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedCommentsInputCopyWith<$Res> {
  factory $GetFeedCommentsInputCopyWith(
    GetFeedCommentsInput value,
    $Res Function(GetFeedCommentsInput) then,
  ) = _$GetFeedCommentsInputCopyWithImpl<$Res, GetFeedCommentsInput>;
  @useResult
  $Res call({int postId, int page, int limit, int? highlightCommentId});
}

/// @nodoc
class _$GetFeedCommentsInputCopyWithImpl<
  $Res,
  $Val extends GetFeedCommentsInput
>
    implements $GetFeedCommentsInputCopyWith<$Res> {
  _$GetFeedCommentsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
    Object? limit = null,
    Object? highlightCommentId = freezed,
  }) {
    return _then(
      _value.copyWith(
            postId: null == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$GetFeedCommentsInputImplCopyWith<$Res>
    implements $GetFeedCommentsInputCopyWith<$Res> {
  factory _$$GetFeedCommentsInputImplCopyWith(
    _$GetFeedCommentsInputImpl value,
    $Res Function(_$GetFeedCommentsInputImpl) then,
  ) = __$$GetFeedCommentsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, int page, int limit, int? highlightCommentId});
}

/// @nodoc
class __$$GetFeedCommentsInputImplCopyWithImpl<$Res>
    extends _$GetFeedCommentsInputCopyWithImpl<$Res, _$GetFeedCommentsInputImpl>
    implements _$$GetFeedCommentsInputImplCopyWith<$Res> {
  __$$GetFeedCommentsInputImplCopyWithImpl(
    _$GetFeedCommentsInputImpl _value,
    $Res Function(_$GetFeedCommentsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? page = null,
    Object? limit = null,
    Object? highlightCommentId = freezed,
  }) {
    return _then(
      _$GetFeedCommentsInputImpl(
        postId: null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        highlightCommentId: freezed == highlightCommentId
            ? _value.highlightCommentId
            : highlightCommentId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedCommentsInputImpl implements _GetFeedCommentsInput {
  const _$GetFeedCommentsInputImpl({
    required this.postId,
    this.page = 1,
    this.limit = 20,
    this.highlightCommentId,
  });

  @override
  final int postId;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  final int? highlightCommentId;

  @override
  String toString() {
    return 'GetFeedCommentsInput(postId: $postId, page: $page, limit: $limit, highlightCommentId: $highlightCommentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedCommentsInputImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.highlightCommentId, highlightCommentId) ||
                other.highlightCommentId == highlightCommentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postId, page, limit, highlightCommentId);

  /// Create a copy of GetFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedCommentsInputImplCopyWith<_$GetFeedCommentsInputImpl>
  get copyWith =>
      __$$GetFeedCommentsInputImplCopyWithImpl<_$GetFeedCommentsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedCommentsInput implements GetFeedCommentsInput {
  const factory _GetFeedCommentsInput({
    required final int postId,
    final int page,
    final int limit,
    final int? highlightCommentId,
  }) = _$GetFeedCommentsInputImpl;

  @override
  int get postId;
  @override
  int get page;
  @override
  int get limit;
  @override
  int? get highlightCommentId;

  /// Create a copy of GetFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedCommentsInputImplCopyWith<_$GetFeedCommentsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFeedCommentsOutput {
  PagedList<FeedComment> get comments => throw _privateConstructorUsedError;

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFeedCommentsOutputCopyWith<GetFeedCommentsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFeedCommentsOutputCopyWith<$Res> {
  factory $GetFeedCommentsOutputCopyWith(
    GetFeedCommentsOutput value,
    $Res Function(GetFeedCommentsOutput) then,
  ) = _$GetFeedCommentsOutputCopyWithImpl<$Res, GetFeedCommentsOutput>;
  @useResult
  $Res call({PagedList<FeedComment> comments});

  $PagedListCopyWith<FeedComment, $Res> get comments;
}

/// @nodoc
class _$GetFeedCommentsOutputCopyWithImpl<
  $Res,
  $Val extends GetFeedCommentsOutput
>
    implements $GetFeedCommentsOutputCopyWith<$Res> {
  _$GetFeedCommentsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comments = null}) {
    return _then(
      _value.copyWith(
            comments: null == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as PagedList<FeedComment>,
          )
          as $Val,
    );
  }

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PagedListCopyWith<FeedComment, $Res> get comments {
    return $PagedListCopyWith<FeedComment, $Res>(_value.comments, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFeedCommentsOutputImplCopyWith<$Res>
    implements $GetFeedCommentsOutputCopyWith<$Res> {
  factory _$$GetFeedCommentsOutputImplCopyWith(
    _$GetFeedCommentsOutputImpl value,
    $Res Function(_$GetFeedCommentsOutputImpl) then,
  ) = __$$GetFeedCommentsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PagedList<FeedComment> comments});

  @override
  $PagedListCopyWith<FeedComment, $Res> get comments;
}

/// @nodoc
class __$$GetFeedCommentsOutputImplCopyWithImpl<$Res>
    extends
        _$GetFeedCommentsOutputCopyWithImpl<$Res, _$GetFeedCommentsOutputImpl>
    implements _$$GetFeedCommentsOutputImplCopyWith<$Res> {
  __$$GetFeedCommentsOutputImplCopyWithImpl(
    _$GetFeedCommentsOutputImpl _value,
    $Res Function(_$GetFeedCommentsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comments = null}) {
    return _then(
      _$GetFeedCommentsOutputImpl(
        comments: null == comments
            ? _value.comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as PagedList<FeedComment>,
      ),
    );
  }
}

/// @nodoc

class _$GetFeedCommentsOutputImpl implements _GetFeedCommentsOutput {
  const _$GetFeedCommentsOutputImpl({required this.comments});

  @override
  final PagedList<FeedComment> comments;

  @override
  String toString() {
    return 'GetFeedCommentsOutput(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedCommentsOutputImpl &&
            (identical(other.comments, comments) ||
                other.comments == comments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comments);

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFeedCommentsOutputImplCopyWith<_$GetFeedCommentsOutputImpl>
  get copyWith =>
      __$$GetFeedCommentsOutputImplCopyWithImpl<_$GetFeedCommentsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFeedCommentsOutput implements GetFeedCommentsOutput {
  const factory _GetFeedCommentsOutput({
    required final PagedList<FeedComment> comments,
  }) = _$GetFeedCommentsOutputImpl;

  @override
  PagedList<FeedComment> get comments;

  /// Create a copy of GetFeedCommentsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFeedCommentsOutputImplCopyWith<_$GetFeedCommentsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
