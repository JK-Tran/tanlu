// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_feed_comment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteFeedCommentInput {
  String get feedId => throw _privateConstructorUsedError;
  String get feedAuthorId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFeedCommentInputCopyWith<DeleteFeedCommentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFeedCommentInputCopyWith<$Res> {
  factory $DeleteFeedCommentInputCopyWith(
    DeleteFeedCommentInput value,
    $Res Function(DeleteFeedCommentInput) then,
  ) = _$DeleteFeedCommentInputCopyWithImpl<$Res, DeleteFeedCommentInput>;
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    String commentId,
    Author currentUser,
  });

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$DeleteFeedCommentInputCopyWithImpl<
  $Res,
  $Val extends DeleteFeedCommentInput
>
    implements $DeleteFeedCommentInputCopyWith<$Res> {
  _$DeleteFeedCommentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? commentId = null,
    Object? currentUser = null,
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
          )
          as $Val,
    );
  }

  /// Create a copy of DeleteFeedCommentInput
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
abstract class _$$DeleteFeedCommentInputImplCopyWith<$Res>
    implements $DeleteFeedCommentInputCopyWith<$Res> {
  factory _$$DeleteFeedCommentInputImplCopyWith(
    _$DeleteFeedCommentInputImpl value,
    $Res Function(_$DeleteFeedCommentInputImpl) then,
  ) = __$$DeleteFeedCommentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String feedId,
    String feedAuthorId,
    String commentId,
    Author currentUser,
  });

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$DeleteFeedCommentInputImplCopyWithImpl<$Res>
    extends
        _$DeleteFeedCommentInputCopyWithImpl<$Res, _$DeleteFeedCommentInputImpl>
    implements _$$DeleteFeedCommentInputImplCopyWith<$Res> {
  __$$DeleteFeedCommentInputImplCopyWithImpl(
    _$DeleteFeedCommentInputImpl _value,
    $Res Function(_$DeleteFeedCommentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? commentId = null,
    Object? currentUser = null,
  }) {
    return _then(
      _$DeleteFeedCommentInputImpl(
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
      ),
    );
  }
}

/// @nodoc

class _$DeleteFeedCommentInputImpl
    with DiagnosticableTreeMixin
    implements _DeleteFeedCommentInput {
  const _$DeleteFeedCommentInputImpl({
    required this.feedId,
    required this.feedAuthorId,
    required this.commentId,
    required this.currentUser,
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFeedCommentInput(feedId: $feedId, feedAuthorId: $feedAuthorId, commentId: $commentId, currentUser: $currentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFeedCommentInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('feedAuthorId', feedAuthorId))
      ..add(DiagnosticsProperty('commentId', commentId))
      ..add(DiagnosticsProperty('currentUser', currentUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedCommentInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.feedAuthorId, feedAuthorId) ||
                other.feedAuthorId == feedAuthorId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, feedId, feedAuthorId, commentId, currentUser);

  /// Create a copy of DeleteFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedCommentInputImplCopyWith<_$DeleteFeedCommentInputImpl>
  get copyWith =>
      __$$DeleteFeedCommentInputImplCopyWithImpl<_$DeleteFeedCommentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteFeedCommentInput implements DeleteFeedCommentInput {
  const factory _DeleteFeedCommentInput({
    required final String feedId,
    required final String feedAuthorId,
    required final String commentId,
    required final Author currentUser,
  }) = _$DeleteFeedCommentInputImpl;

  @override
  String get feedId;
  @override
  String get feedAuthorId;
  @override
  String get commentId;
  @override
  Author get currentUser;

  /// Create a copy of DeleteFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedCommentInputImplCopyWith<_$DeleteFeedCommentInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteFeedCommentOutput {
  String get feedId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFeedCommentOutputCopyWith<DeleteFeedCommentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFeedCommentOutputCopyWith<$Res> {
  factory $DeleteFeedCommentOutputCopyWith(
    DeleteFeedCommentOutput value,
    $Res Function(DeleteFeedCommentOutput) then,
  ) = _$DeleteFeedCommentOutputCopyWithImpl<$Res, DeleteFeedCommentOutput>;
  @useResult
  $Res call({String feedId, String commentId});
}

/// @nodoc
class _$DeleteFeedCommentOutputCopyWithImpl<
  $Res,
  $Val extends DeleteFeedCommentOutput
>
    implements $DeleteFeedCommentOutputCopyWith<$Res> {
  _$DeleteFeedCommentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? commentId = null}) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
            commentId: null == commentId
                ? _value.commentId
                : commentId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteFeedCommentOutputImplCopyWith<$Res>
    implements $DeleteFeedCommentOutputCopyWith<$Res> {
  factory _$$DeleteFeedCommentOutputImplCopyWith(
    _$DeleteFeedCommentOutputImpl value,
    $Res Function(_$DeleteFeedCommentOutputImpl) then,
  ) = __$$DeleteFeedCommentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, String commentId});
}

/// @nodoc
class __$$DeleteFeedCommentOutputImplCopyWithImpl<$Res>
    extends
        _$DeleteFeedCommentOutputCopyWithImpl<
          $Res,
          _$DeleteFeedCommentOutputImpl
        >
    implements _$$DeleteFeedCommentOutputImplCopyWith<$Res> {
  __$$DeleteFeedCommentOutputImplCopyWithImpl(
    _$DeleteFeedCommentOutputImpl _value,
    $Res Function(_$DeleteFeedCommentOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? commentId = null}) {
    return _then(
      _$DeleteFeedCommentOutputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        commentId: null == commentId
            ? _value.commentId
            : commentId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFeedCommentOutputImpl
    with DiagnosticableTreeMixin
    implements _DeleteFeedCommentOutput {
  const _$DeleteFeedCommentOutputImpl({
    required this.feedId,
    required this.commentId,
  });

  @override
  final String feedId;
  @override
  final String commentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFeedCommentOutput(feedId: $feedId, commentId: $commentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFeedCommentOutput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('commentId', commentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedCommentOutputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId, commentId);

  /// Create a copy of DeleteFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedCommentOutputImplCopyWith<_$DeleteFeedCommentOutputImpl>
  get copyWith =>
      __$$DeleteFeedCommentOutputImplCopyWithImpl<
        _$DeleteFeedCommentOutputImpl
      >(this, _$identity);
}

abstract class _DeleteFeedCommentOutput implements DeleteFeedCommentOutput {
  const factory _DeleteFeedCommentOutput({
    required final String feedId,
    required final String commentId,
  }) = _$DeleteFeedCommentOutputImpl;

  @override
  String get feedId;
  @override
  String get commentId;

  /// Create a copy of DeleteFeedCommentOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedCommentOutputImplCopyWith<_$DeleteFeedCommentOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
