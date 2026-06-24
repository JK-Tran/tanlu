// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_feed_comment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateFeedCommentInput {
  String get feedId => throw _privateConstructorUsedError;
  String get feedAuthorId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedCommentInputCopyWith<UpdateFeedCommentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedCommentInputCopyWith<$Res> {
  factory $UpdateFeedCommentInputCopyWith(
    UpdateFeedCommentInput value,
    $Res Function(UpdateFeedCommentInput) then,
  ) = _$UpdateFeedCommentInputCopyWithImpl<$Res, UpdateFeedCommentInput>;
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    String commentId,
    Author currentUser,
    String content,
  });

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$UpdateFeedCommentInputCopyWithImpl<
  $Res,
  $Val extends UpdateFeedCommentInput
>
    implements $UpdateFeedCommentInputCopyWith<$Res> {
  _$UpdateFeedCommentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? commentId = null,
    Object? currentUser = null,
    Object? content = null,
  }) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
            feedAuthorId: null == feedAuthorId
                ? _value.feedAuthorId
                : feedAuthorId // ignore: cast_nullable_to_non_nullable
                      as String,
            commentId: null == commentId
                ? _value.commentId
                : commentId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentUser: null == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                      as Author,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateFeedCommentInput
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
abstract class _$$UpdateFeedCommentInputImplCopyWith<$Res>
    implements $UpdateFeedCommentInputCopyWith<$Res> {
  factory _$$UpdateFeedCommentInputImplCopyWith(
    _$UpdateFeedCommentInputImpl value,
    $Res Function(_$UpdateFeedCommentInputImpl) then,
  ) = __$$UpdateFeedCommentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    String commentId,
    Author currentUser,
    String content,
  });

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$UpdateFeedCommentInputImplCopyWithImpl<$Res>
    extends
        _$UpdateFeedCommentInputCopyWithImpl<$Res, _$UpdateFeedCommentInputImpl>
    implements _$$UpdateFeedCommentInputImplCopyWith<$Res> {
  __$$UpdateFeedCommentInputImplCopyWithImpl(
    _$UpdateFeedCommentInputImpl _value,
    $Res Function(_$UpdateFeedCommentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? commentId = null,
    Object? currentUser = null,
    Object? content = null,
  }) {
    return _then(
      _$UpdateFeedCommentInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        feedAuthorId: null == feedAuthorId
            ? _value.feedAuthorId
            : feedAuthorId // ignore: cast_nullable_to_non_nullable
                  as String,
        commentId: null == commentId
            ? _value.commentId
            : commentId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentUser: null == currentUser
            ? _value.currentUser
            : currentUser // ignore: cast_nullable_to_non_nullable
                  as Author,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFeedCommentInputImpl
    with DiagnosticableTreeMixin
    implements _UpdateFeedCommentInput {
  const _$UpdateFeedCommentInputImpl({
    required this.feedId,
    required this.feedAuthorId,
    required this.commentId,
    required this.currentUser,
    required this.content,
  });

  @override
  final String feedId;
  @override
  final String feedAuthorId;
  @override
  final String commentId;
  @override
  final Author currentUser;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFeedCommentInput(feedId: $feedId, feedAuthorId: $feedAuthorId, commentId: $commentId, currentUser: $currentUser, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFeedCommentInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('feedAuthorId', feedAuthorId))
      ..add(DiagnosticsProperty('commentId', commentId))
      ..add(DiagnosticsProperty('currentUser', currentUser))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedCommentInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.feedAuthorId, feedAuthorId) ||
                other.feedAuthorId == feedAuthorId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    feedId,
    feedAuthorId,
    commentId,
    currentUser,
    content,
  );

  /// Create a copy of UpdateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedCommentInputImplCopyWith<_$UpdateFeedCommentInputImpl>
  get copyWith =>
      __$$UpdateFeedCommentInputImplCopyWithImpl<_$UpdateFeedCommentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateFeedCommentInput implements UpdateFeedCommentInput {
  const factory _UpdateFeedCommentInput({
    required final String feedId,
    required final String feedAuthorId,
    required final String commentId,
    required final Author currentUser,
    required final String content,
  }) = _$UpdateFeedCommentInputImpl;

  @override
  String get feedId;
  @override
  String get feedAuthorId;
  @override
  String get commentId;
  @override
  Author get currentUser;
  @override
  String get content;

  /// Create a copy of UpdateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedCommentInputImplCopyWith<_$UpdateFeedCommentInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateFeedCommentOutput {
  Comment get comment => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedCommentOutputCopyWith<UpdateFeedCommentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedCommentOutputCopyWith<$Res> {
  factory $UpdateFeedCommentOutputCopyWith(
    UpdateFeedCommentOutput value,
    $Res Function(UpdateFeedCommentOutput) then,
  ) = _$UpdateFeedCommentOutputCopyWithImpl<$Res, UpdateFeedCommentOutput>;
  @useResult
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$UpdateFeedCommentOutputCopyWithImpl<
  $Res,
  $Val extends UpdateFeedCommentOutput
>
    implements $UpdateFeedCommentOutputCopyWith<$Res> {
  _$UpdateFeedCommentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null}) {
    return _then(
      _value.copyWith(
            comment: null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                      as Comment,
          )
          as $Val,
    );
  }

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res> get comment {
    return $CommentCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateFeedCommentOutputImplCopyWith<$Res>
    implements $UpdateFeedCommentOutputCopyWith<$Res> {
  factory _$$UpdateFeedCommentOutputImplCopyWith(
    _$UpdateFeedCommentOutputImpl value,
    $Res Function(_$UpdateFeedCommentOutputImpl) then,
  ) = __$$UpdateFeedCommentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Comment comment});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$UpdateFeedCommentOutputImplCopyWithImpl<$Res>
    extends
        _$UpdateFeedCommentOutputCopyWithImpl<
          $Res,
          _$UpdateFeedCommentOutputImpl
        >
    implements _$$UpdateFeedCommentOutputImplCopyWith<$Res> {
  __$$UpdateFeedCommentOutputImplCopyWithImpl(
    _$UpdateFeedCommentOutputImpl _value,
    $Res Function(_$UpdateFeedCommentOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null}) {
    return _then(
      _$UpdateFeedCommentOutputImpl(
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as Comment,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFeedCommentOutputImpl
    with DiagnosticableTreeMixin
    implements _UpdateFeedCommentOutput {
  const _$UpdateFeedCommentOutputImpl({required this.comment});

  @override
  final Comment comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateFeedCommentOutput(comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateFeedCommentOutput'))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedCommentOutputImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedCommentOutputImplCopyWith<_$UpdateFeedCommentOutputImpl>
  get copyWith =>
      __$$UpdateFeedCommentOutputImplCopyWithImpl<
        _$UpdateFeedCommentOutputImpl
      >(this, _$identity);
}

abstract class _UpdateFeedCommentOutput implements UpdateFeedCommentOutput {
  const factory _UpdateFeedCommentOutput({required final Comment comment}) =
      _$UpdateFeedCommentOutputImpl;

  @override
  Comment get comment;

  /// Create a copy of UpdateFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedCommentOutputImplCopyWith<_$UpdateFeedCommentOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
