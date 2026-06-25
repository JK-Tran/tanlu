// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_feed_comment_like_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitFeedCommentLikeInput {
  String get feedId => throw _privateConstructorUsedError;
  String get commentId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedCommentLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedCommentLikeInputCopyWith<SubmitFeedCommentLikeInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedCommentLikeInputCopyWith<$Res> {
  factory $SubmitFeedCommentLikeInputCopyWith(
    SubmitFeedCommentLikeInput value,
    $Res Function(SubmitFeedCommentLikeInput) then,
  ) =
      _$SubmitFeedCommentLikeInputCopyWithImpl<
        $Res,
        SubmitFeedCommentLikeInput
      >;
  @useResult
  $Res call({String feedId, String commentId, Author currentUser});

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$SubmitFeedCommentLikeInputCopyWithImpl<
  $Res,
  $Val extends SubmitFeedCommentLikeInput
>
    implements $SubmitFeedCommentLikeInputCopyWith<$Res> {
  _$SubmitFeedCommentLikeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedCommentLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? commentId = null,
    Object? currentUser = null,
  }) {
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
            currentUser: null == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                      as Author,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitFeedCommentLikeInput
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
abstract class _$$SubmitFeedCommentLikeInputImplCopyWith<$Res>
    implements $SubmitFeedCommentLikeInputCopyWith<$Res> {
  factory _$$SubmitFeedCommentLikeInputImplCopyWith(
    _$SubmitFeedCommentLikeInputImpl value,
    $Res Function(_$SubmitFeedCommentLikeInputImpl) then,
  ) = __$$SubmitFeedCommentLikeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, String commentId, Author currentUser});

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$SubmitFeedCommentLikeInputImplCopyWithImpl<$Res>
    extends
        _$SubmitFeedCommentLikeInputCopyWithImpl<
          $Res,
          _$SubmitFeedCommentLikeInputImpl
        >
    implements _$$SubmitFeedCommentLikeInputImplCopyWith<$Res> {
  __$$SubmitFeedCommentLikeInputImplCopyWithImpl(
    _$SubmitFeedCommentLikeInputImpl _value,
    $Res Function(_$SubmitFeedCommentLikeInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedCommentLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? commentId = null,
    Object? currentUser = null,
  }) {
    return _then(
      _$SubmitFeedCommentLikeInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
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

class _$SubmitFeedCommentLikeInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedCommentLikeInput {
  const _$SubmitFeedCommentLikeInputImpl({
    required this.feedId,
    required this.commentId,
    required this.currentUser,
  });

  @override
  final String feedId;
  @override
  final String commentId;
  @override
  final Author currentUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedCommentLikeInput(feedId: $feedId, commentId: $commentId, currentUser: $currentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedCommentLikeInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('commentId', commentId))
      ..add(DiagnosticsProperty('currentUser', currentUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedCommentLikeInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId, commentId, currentUser);

  /// Create a copy of SubmitFeedCommentLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedCommentLikeInputImplCopyWith<_$SubmitFeedCommentLikeInputImpl>
  get copyWith =>
      __$$SubmitFeedCommentLikeInputImplCopyWithImpl<
        _$SubmitFeedCommentLikeInputImpl
      >(this, _$identity);
}

abstract class _SubmitFeedCommentLikeInput
    implements SubmitFeedCommentLikeInput {
  const factory _SubmitFeedCommentLikeInput({
    required final String feedId,
    required final String commentId,
    required final Author currentUser,
  }) = _$SubmitFeedCommentLikeInputImpl;

  @override
  String get feedId;
  @override
  String get commentId;
  @override
  Author get currentUser;

  /// Create a copy of SubmitFeedCommentLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedCommentLikeInputImplCopyWith<_$SubmitFeedCommentLikeInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFeedCommentLikeOutput {
  LikeResult get result => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedCommentLikeOutputCopyWith<SubmitFeedCommentLikeOutput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedCommentLikeOutputCopyWith<$Res> {
  factory $SubmitFeedCommentLikeOutputCopyWith(
    SubmitFeedCommentLikeOutput value,
    $Res Function(SubmitFeedCommentLikeOutput) then,
  ) =
      _$SubmitFeedCommentLikeOutputCopyWithImpl<
        $Res,
        SubmitFeedCommentLikeOutput
      >;
  @useResult
  $Res call({LikeResult result});

  $LikeResultCopyWith<$Res> get result;
}

/// @nodoc
class _$SubmitFeedCommentLikeOutputCopyWithImpl<
  $Res,
  $Val extends SubmitFeedCommentLikeOutput
>
    implements $SubmitFeedCommentLikeOutputCopyWith<$Res> {
  _$SubmitFeedCommentLikeOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _value.copyWith(
            result: null == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as LikeResult,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikeResultCopyWith<$Res> get result {
    return $LikeResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFeedCommentLikeOutputImplCopyWith<$Res>
    implements $SubmitFeedCommentLikeOutputCopyWith<$Res> {
  factory _$$SubmitFeedCommentLikeOutputImplCopyWith(
    _$SubmitFeedCommentLikeOutputImpl value,
    $Res Function(_$SubmitFeedCommentLikeOutputImpl) then,
  ) = __$$SubmitFeedCommentLikeOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikeResult result});

  @override
  $LikeResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$SubmitFeedCommentLikeOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitFeedCommentLikeOutputCopyWithImpl<
          $Res,
          _$SubmitFeedCommentLikeOutputImpl
        >
    implements _$$SubmitFeedCommentLikeOutputImplCopyWith<$Res> {
  __$$SubmitFeedCommentLikeOutputImplCopyWithImpl(
    _$SubmitFeedCommentLikeOutputImpl _value,
    $Res Function(_$SubmitFeedCommentLikeOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _$SubmitFeedCommentLikeOutputImpl(
        result: null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as LikeResult,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedCommentLikeOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedCommentLikeOutput {
  const _$SubmitFeedCommentLikeOutputImpl({required this.result});

  @override
  final LikeResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedCommentLikeOutput(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedCommentLikeOutput'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedCommentLikeOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedCommentLikeOutputImplCopyWith<_$SubmitFeedCommentLikeOutputImpl>
  get copyWith =>
      __$$SubmitFeedCommentLikeOutputImplCopyWithImpl<
        _$SubmitFeedCommentLikeOutputImpl
      >(this, _$identity);
}

abstract class _SubmitFeedCommentLikeOutput
    implements SubmitFeedCommentLikeOutput {
  const factory _SubmitFeedCommentLikeOutput({
    required final LikeResult result,
  }) = _$SubmitFeedCommentLikeOutputImpl;

  @override
  LikeResult get result;

  /// Create a copy of SubmitFeedCommentLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedCommentLikeOutputImplCopyWith<_$SubmitFeedCommentLikeOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
