// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_feed_comment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitFeedCommentInput {
  String get feedId => throw _privateConstructorUsedError;
  String get feedAuthorId => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedCommentInputCopyWith<SubmitFeedCommentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedCommentInputCopyWith<$Res> {
  factory $SubmitFeedCommentInputCopyWith(
    SubmitFeedCommentInput value,
    $Res Function(SubmitFeedCommentInput) then,
  ) = _$SubmitFeedCommentInputCopyWithImpl<$Res, SubmitFeedCommentInput>;
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    Author author,
    String content,
    String? parentId,
  });

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$SubmitFeedCommentInputCopyWithImpl<
  $Res,
  $Val extends SubmitFeedCommentInput
>
    implements $SubmitFeedCommentInputCopyWith<$Res> {
  _$SubmitFeedCommentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? author = null,
    Object? content = null,
    Object? parentId = freezed,
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
            author: null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                      as Author,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFeedCommentInputImplCopyWith<$Res>
    implements $SubmitFeedCommentInputCopyWith<$Res> {
  factory _$$SubmitFeedCommentInputImplCopyWith(
    _$SubmitFeedCommentInputImpl value,
    $Res Function(_$SubmitFeedCommentInputImpl) then,
  ) = __$$SubmitFeedCommentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    Author author,
    String content,
    String? parentId,
  });

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$SubmitFeedCommentInputImplCopyWithImpl<$Res>
    extends
        _$SubmitFeedCommentInputCopyWithImpl<$Res, _$SubmitFeedCommentInputImpl>
    implements _$$SubmitFeedCommentInputImplCopyWith<$Res> {
  __$$SubmitFeedCommentInputImplCopyWithImpl(
    _$SubmitFeedCommentInputImpl _value,
    $Res Function(_$SubmitFeedCommentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? author = null,
    Object? content = null,
    Object? parentId = freezed,
  }) {
    return _then(
      _$SubmitFeedCommentInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        feedAuthorId: null == feedAuthorId
            ? _value.feedAuthorId
            : feedAuthorId // ignore: cast_nullable_to_non_nullable
                  as String,
        author: null == author
            ? _value.author
            : author // ignore: cast_nullable_to_non_nullable
                  as Author,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedCommentInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedCommentInput {
  const _$SubmitFeedCommentInputImpl({
    required this.feedId,
    required this.feedAuthorId,
    required this.author,
    required this.content,
    this.parentId,
  });

  @override
  final String feedId;
  @override
  final String feedAuthorId;
  @override
  final Author author;
  @override
  final String content;
  @override
  final String? parentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedCommentInput(feedId: $feedId, feedAuthorId: $feedAuthorId, author: $author, content: $content, parentId: $parentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedCommentInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('feedAuthorId', feedAuthorId))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('parentId', parentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedCommentInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.feedAuthorId, feedAuthorId) ||
                other.feedAuthorId == feedAuthorId) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, feedId, feedAuthorId, author, content, parentId);

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedCommentInputImplCopyWith<_$SubmitFeedCommentInputImpl>
  get copyWith =>
      __$$SubmitFeedCommentInputImplCopyWithImpl<_$SubmitFeedCommentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFeedCommentInput implements SubmitFeedCommentInput {
  const factory _SubmitFeedCommentInput({
    required final String feedId,
    required final String feedAuthorId,
    required final Author author,
    required final String content,
    final String? parentId,
  }) = _$SubmitFeedCommentInputImpl;

  @override
  String get feedId;
  @override
  String get feedAuthorId;
  @override
  Author get author;
  @override
  String get content;
  @override
  String? get parentId;

  /// Create a copy of SubmitFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedCommentInputImplCopyWith<_$SubmitFeedCommentInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFeedCommentOutput {
  Comment get comment => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedCommentOutputCopyWith<SubmitFeedCommentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedCommentOutputCopyWith<$Res> {
  factory $SubmitFeedCommentOutputCopyWith(
    SubmitFeedCommentOutput value,
    $Res Function(SubmitFeedCommentOutput) then,
  ) = _$SubmitFeedCommentOutputCopyWithImpl<$Res, SubmitFeedCommentOutput>;
  @useResult
  $Res call({Comment comment});

  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class _$SubmitFeedCommentOutputCopyWithImpl<
  $Res,
  $Val extends SubmitFeedCommentOutput
>
    implements $SubmitFeedCommentOutputCopyWith<$Res> {
  _$SubmitFeedCommentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedCommentOutput
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

  /// Create a copy of SubmitFeedCommentOutput
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
abstract class _$$SubmitFeedCommentOutputImplCopyWith<$Res>
    implements $SubmitFeedCommentOutputCopyWith<$Res> {
  factory _$$SubmitFeedCommentOutputImplCopyWith(
    _$SubmitFeedCommentOutputImpl value,
    $Res Function(_$SubmitFeedCommentOutputImpl) then,
  ) = __$$SubmitFeedCommentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Comment comment});

  @override
  $CommentCopyWith<$Res> get comment;
}

/// @nodoc
class __$$SubmitFeedCommentOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitFeedCommentOutputCopyWithImpl<
          $Res,
          _$SubmitFeedCommentOutputImpl
        >
    implements _$$SubmitFeedCommentOutputImplCopyWith<$Res> {
  __$$SubmitFeedCommentOutputImplCopyWithImpl(
    _$SubmitFeedCommentOutputImpl _value,
    $Res Function(_$SubmitFeedCommentOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null}) {
    return _then(
      _$SubmitFeedCommentOutputImpl(
        comment: null == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as Comment,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedCommentOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedCommentOutput {
  const _$SubmitFeedCommentOutputImpl({required this.comment});

  @override
  final Comment comment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedCommentOutput(comment: $comment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedCommentOutput'))
      ..add(DiagnosticsProperty('comment', comment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedCommentOutputImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of SubmitFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedCommentOutputImplCopyWith<_$SubmitFeedCommentOutputImpl>
  get copyWith =>
      __$$SubmitFeedCommentOutputImplCopyWithImpl<
        _$SubmitFeedCommentOutputImpl
      >(this, _$identity);
}

abstract class _SubmitFeedCommentOutput implements SubmitFeedCommentOutput {
  const factory _SubmitFeedCommentOutput({required final Comment comment}) =
      _$SubmitFeedCommentOutputImpl;

  @override
  Comment get comment;

  /// Create a copy of SubmitFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedCommentOutputImplCopyWith<_$SubmitFeedCommentOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
