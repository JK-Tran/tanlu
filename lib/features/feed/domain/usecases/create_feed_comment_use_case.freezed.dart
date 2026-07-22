// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_feed_comment_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateFeedCommentInput {
  int get postId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedCommentInputCopyWith<CreateFeedCommentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedCommentInputCopyWith<$Res> {
  factory $CreateFeedCommentInputCopyWith(
    CreateFeedCommentInput value,
    $Res Function(CreateFeedCommentInput) then,
  ) = _$CreateFeedCommentInputCopyWithImpl<$Res, CreateFeedCommentInput>;
  @useResult
  $Res call({int postId, String content, int? parentId});
}

/// @nodoc
class _$CreateFeedCommentInputCopyWithImpl<
  $Res,
  $Val extends CreateFeedCommentInput
>
    implements $CreateFeedCommentInputCopyWith<$Res> {
  _$CreateFeedCommentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
    Object? parentId = freezed,
  }) {
    return _then(
      _value.copyWith(
            postId: null == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$CreateFeedCommentInputImplCopyWith<$Res>
    implements $CreateFeedCommentInputCopyWith<$Res> {
  factory _$$CreateFeedCommentInputImplCopyWith(
    _$CreateFeedCommentInputImpl value,
    $Res Function(_$CreateFeedCommentInputImpl) then,
  ) = __$$CreateFeedCommentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId, String content, int? parentId});
}

/// @nodoc
class __$$CreateFeedCommentInputImplCopyWithImpl<$Res>
    extends
        _$CreateFeedCommentInputCopyWithImpl<$Res, _$CreateFeedCommentInputImpl>
    implements _$$CreateFeedCommentInputImplCopyWith<$Res> {
  __$$CreateFeedCommentInputImplCopyWithImpl(
    _$CreateFeedCommentInputImpl _value,
    $Res Function(_$CreateFeedCommentInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? content = null,
    Object? parentId = freezed,
  }) {
    return _then(
      _$CreateFeedCommentInputImpl(
        postId: null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int,
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

class _$CreateFeedCommentInputImpl implements _CreateFeedCommentInput {
  const _$CreateFeedCommentInputImpl({
    required this.postId,
    required this.content,
    this.parentId,
  });

  @override
  final int postId;
  @override
  final String content;
  @override
  final int? parentId;

  @override
  String toString() {
    return 'CreateFeedCommentInput(postId: $postId, content: $content, parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedCommentInputImpl &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, content, parentId);

  /// Create a copy of CreateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedCommentInputImplCopyWith<_$CreateFeedCommentInputImpl>
  get copyWith =>
      __$$CreateFeedCommentInputImplCopyWithImpl<_$CreateFeedCommentInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedCommentInput implements CreateFeedCommentInput {
  const factory _CreateFeedCommentInput({
    required final int postId,
    required final String content,
    final int? parentId,
  }) = _$CreateFeedCommentInputImpl;

  @override
  int get postId;
  @override
  String get content;
  @override
  int? get parentId;

  /// Create a copy of CreateFeedCommentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedCommentInputImplCopyWith<_$CreateFeedCommentInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
