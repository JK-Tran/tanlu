// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_feed_post_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateFeedPostInput {
  int get id => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool? get isPublic => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFeedPostInputCopyWith<UpdateFeedPostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFeedPostInputCopyWith<$Res> {
  factory $UpdateFeedPostInputCopyWith(
    UpdateFeedPostInput value,
    $Res Function(UpdateFeedPostInput) then,
  ) = _$UpdateFeedPostInputCopyWithImpl<$Res, UpdateFeedPostInput>;
  @useResult
  $Res call({int id, String? content, List<String>? images, bool? isPublic});
}

/// @nodoc
class _$UpdateFeedPostInputCopyWithImpl<$Res, $Val extends UpdateFeedPostInput>
    implements $UpdateFeedPostInputCopyWith<$Res> {
  _$UpdateFeedPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isPublic: freezed == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateFeedPostInputImplCopyWith<$Res>
    implements $UpdateFeedPostInputCopyWith<$Res> {
  factory _$$UpdateFeedPostInputImplCopyWith(
    _$UpdateFeedPostInputImpl value,
    $Res Function(_$UpdateFeedPostInputImpl) then,
  ) = __$$UpdateFeedPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? content, List<String>? images, bool? isPublic});
}

/// @nodoc
class __$$UpdateFeedPostInputImplCopyWithImpl<$Res>
    extends _$UpdateFeedPostInputCopyWithImpl<$Res, _$UpdateFeedPostInputImpl>
    implements _$$UpdateFeedPostInputImplCopyWith<$Res> {
  __$$UpdateFeedPostInputImplCopyWithImpl(
    _$UpdateFeedPostInputImpl _value,
    $Res Function(_$UpdateFeedPostInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? isPublic = freezed,
  }) {
    return _then(
      _$UpdateFeedPostInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isPublic: freezed == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateFeedPostInputImpl implements _UpdateFeedPostInput {
  const _$UpdateFeedPostInputImpl({
    required this.id,
    this.content,
    final List<String>? images,
    this.isPublic,
  }) : _images = images;

  @override
  final int id;
  @override
  final String? content;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isPublic;

  @override
  String toString() {
    return 'UpdateFeedPostInput(id: $id, content: $content, images: $images, isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFeedPostInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    content,
    const DeepCollectionEquality().hash(_images),
    isPublic,
  );

  /// Create a copy of UpdateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFeedPostInputImplCopyWith<_$UpdateFeedPostInputImpl> get copyWith =>
      __$$UpdateFeedPostInputImplCopyWithImpl<_$UpdateFeedPostInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateFeedPostInput implements UpdateFeedPostInput {
  const factory _UpdateFeedPostInput({
    required final int id,
    final String? content,
    final List<String>? images,
    final bool? isPublic,
  }) = _$UpdateFeedPostInputImpl;

  @override
  int get id;
  @override
  String? get content;
  @override
  List<String>? get images;
  @override
  bool? get isPublic;

  /// Create a copy of UpdateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFeedPostInputImplCopyWith<_$UpdateFeedPostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
