// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toggle_post_like_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TogglePostLikeInput {
  int get postId => throw _privateConstructorUsedError;

  /// Create a copy of TogglePostLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TogglePostLikeInputCopyWith<TogglePostLikeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TogglePostLikeInputCopyWith<$Res> {
  factory $TogglePostLikeInputCopyWith(
    TogglePostLikeInput value,
    $Res Function(TogglePostLikeInput) then,
  ) = _$TogglePostLikeInputCopyWithImpl<$Res, TogglePostLikeInput>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class _$TogglePostLikeInputCopyWithImpl<$Res, $Val extends TogglePostLikeInput>
    implements $TogglePostLikeInputCopyWith<$Res> {
  _$TogglePostLikeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TogglePostLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null}) {
    return _then(
      _value.copyWith(
            postId: null == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TogglePostLikeInputImplCopyWith<$Res>
    implements $TogglePostLikeInputCopyWith<$Res> {
  factory _$$TogglePostLikeInputImplCopyWith(
    _$TogglePostLikeInputImpl value,
    $Res Function(_$TogglePostLikeInputImpl) then,
  ) = __$$TogglePostLikeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$TogglePostLikeInputImplCopyWithImpl<$Res>
    extends _$TogglePostLikeInputCopyWithImpl<$Res, _$TogglePostLikeInputImpl>
    implements _$$TogglePostLikeInputImplCopyWith<$Res> {
  __$$TogglePostLikeInputImplCopyWithImpl(
    _$TogglePostLikeInputImpl _value,
    $Res Function(_$TogglePostLikeInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TogglePostLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? postId = null}) {
    return _then(
      _$TogglePostLikeInputImpl(
        postId: null == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$TogglePostLikeInputImpl implements _TogglePostLikeInput {
  const _$TogglePostLikeInputImpl({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'TogglePostLikeInput(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePostLikeInputImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  /// Create a copy of TogglePostLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TogglePostLikeInputImplCopyWith<_$TogglePostLikeInputImpl> get copyWith =>
      __$$TogglePostLikeInputImplCopyWithImpl<_$TogglePostLikeInputImpl>(
        this,
        _$identity,
      );
}

abstract class _TogglePostLikeInput implements TogglePostLikeInput {
  const factory _TogglePostLikeInput({required final int postId}) =
      _$TogglePostLikeInputImpl;

  @override
  int get postId;

  /// Create a copy of TogglePostLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TogglePostLikeInputImplCopyWith<_$TogglePostLikeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
