// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_feed_comments_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StreamFeedCommentsInput {
  String get feedId => throw _privateConstructorUsedError;
  String get feedAuthorId => throw _privateConstructorUsedError;
  String get viewerUserId => throw _privateConstructorUsedError;

  /// Create a copy of StreamFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamFeedCommentsInputCopyWith<StreamFeedCommentsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamFeedCommentsInputCopyWith<$Res> {
  factory $StreamFeedCommentsInputCopyWith(
    StreamFeedCommentsInput value,
    $Res Function(StreamFeedCommentsInput) then,
  ) = _$StreamFeedCommentsInputCopyWithImpl<$Res, StreamFeedCommentsInput>;
  @useResult
  $Res call({String feedId, String feedAuthorId, String viewerUserId});
}

/// @nodoc
class _$StreamFeedCommentsInputCopyWithImpl<
  $Res,
  $Val extends StreamFeedCommentsInput
>
    implements $StreamFeedCommentsInputCopyWith<$Res> {
  _$StreamFeedCommentsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? viewerUserId = null,
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
abstract class _$$StreamFeedCommentsInputImplCopyWith<$Res>
    implements $StreamFeedCommentsInputCopyWith<$Res> {
  factory _$$StreamFeedCommentsInputImplCopyWith(
    _$StreamFeedCommentsInputImpl value,
    $Res Function(_$StreamFeedCommentsInputImpl) then,
  ) = __$$StreamFeedCommentsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, String feedAuthorId, String viewerUserId});
}

/// @nodoc
class __$$StreamFeedCommentsInputImplCopyWithImpl<$Res>
    extends
        _$StreamFeedCommentsInputCopyWithImpl<
          $Res,
          _$StreamFeedCommentsInputImpl
        >
    implements _$$StreamFeedCommentsInputImplCopyWith<$Res> {
  __$$StreamFeedCommentsInputImplCopyWithImpl(
    _$StreamFeedCommentsInputImpl _value,
    $Res Function(_$StreamFeedCommentsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StreamFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedId = null,
    Object? feedAuthorId = null,
    Object? viewerUserId = null,
  }) {
    return _then(
      _$StreamFeedCommentsInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        feedAuthorId: null == feedAuthorId
            ? _value.feedAuthorId
            : feedAuthorId // ignore: cast_nullable_to_non_nullable
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

class _$StreamFeedCommentsInputImpl implements _StreamFeedCommentsInput {
  const _$StreamFeedCommentsInputImpl({
    required this.feedId,
    required this.feedAuthorId,
    this.viewerUserId = '',
  });

  @override
  final String feedId;
  @override
  final String feedAuthorId;
  @override
  @JsonKey()
  final String viewerUserId;

  @override
  String toString() {
    return 'StreamFeedCommentsInput(feedId: $feedId, feedAuthorId: $feedAuthorId, viewerUserId: $viewerUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamFeedCommentsInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.feedAuthorId, feedAuthorId) ||
                other.feedAuthorId == feedAuthorId) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, feedId, feedAuthorId, viewerUserId);

  /// Create a copy of StreamFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamFeedCommentsInputImplCopyWith<_$StreamFeedCommentsInputImpl>
  get copyWith =>
      __$$StreamFeedCommentsInputImplCopyWithImpl<
        _$StreamFeedCommentsInputImpl
      >(this, _$identity);
}

abstract class _StreamFeedCommentsInput implements StreamFeedCommentsInput {
  const factory _StreamFeedCommentsInput({
    required final String feedId,
    required final String feedAuthorId,
    final String viewerUserId,
  }) = _$StreamFeedCommentsInputImpl;

  @override
  String get feedId;
  @override
  String get feedAuthorId;
  @override
  String get viewerUserId;

  /// Create a copy of StreamFeedCommentsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamFeedCommentsInputImplCopyWith<_$StreamFeedCommentsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
