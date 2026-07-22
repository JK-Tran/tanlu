// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_feed_post_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateFeedPostInput {
  String get content => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  int? get classId => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedPostInputCopyWith<CreateFeedPostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedPostInputCopyWith<$Res> {
  factory $CreateFeedPostInputCopyWith(
    CreateFeedPostInput value,
    $Res Function(CreateFeedPostInput) then,
  ) = _$CreateFeedPostInputCopyWithImpl<$Res, CreateFeedPostInput>;
  @useResult
  $Res call({
    String content,
    List<String>? images,
    bool isPublic,
    int? classId,
  });
}

/// @nodoc
class _$CreateFeedPostInputCopyWithImpl<$Res, $Val extends CreateFeedPostInput>
    implements $CreateFeedPostInputCopyWith<$Res> {
  _$CreateFeedPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? images = freezed,
    Object? isPublic = null,
    Object? classId = freezed,
  }) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedPostInputImplCopyWith<$Res>
    implements $CreateFeedPostInputCopyWith<$Res> {
  factory _$$CreateFeedPostInputImplCopyWith(
    _$CreateFeedPostInputImpl value,
    $Res Function(_$CreateFeedPostInputImpl) then,
  ) = __$$CreateFeedPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String content,
    List<String>? images,
    bool isPublic,
    int? classId,
  });
}

/// @nodoc
class __$$CreateFeedPostInputImplCopyWithImpl<$Res>
    extends _$CreateFeedPostInputCopyWithImpl<$Res, _$CreateFeedPostInputImpl>
    implements _$$CreateFeedPostInputImplCopyWith<$Res> {
  __$$CreateFeedPostInputImplCopyWithImpl(
    _$CreateFeedPostInputImpl _value,
    $Res Function(_$CreateFeedPostInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? images = freezed,
    Object? isPublic = null,
    Object? classId = freezed,
  }) {
    return _then(
      _$CreateFeedPostInputImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedPostInputImpl implements _CreateFeedPostInput {
  const _$CreateFeedPostInputImpl({
    required this.content,
    final List<String>? images,
    required this.isPublic,
    this.classId,
  }) : _images = images;

  @override
  final String content;
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
  final bool isPublic;
  @override
  final int? classId;

  @override
  String toString() {
    return 'CreateFeedPostInput(content: $content, images: $images, isPublic: $isPublic, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedPostInputImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    content,
    const DeepCollectionEquality().hash(_images),
    isPublic,
    classId,
  );

  /// Create a copy of CreateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedPostInputImplCopyWith<_$CreateFeedPostInputImpl> get copyWith =>
      __$$CreateFeedPostInputImplCopyWithImpl<_$CreateFeedPostInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedPostInput implements CreateFeedPostInput {
  const factory _CreateFeedPostInput({
    required final String content,
    final List<String>? images,
    required final bool isPublic,
    final int? classId,
  }) = _$CreateFeedPostInputImpl;

  @override
  String get content;
  @override
  List<String>? get images;
  @override
  bool get isPublic;
  @override
  int? get classId;

  /// Create a copy of CreateFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedPostInputImplCopyWith<_$CreateFeedPostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
