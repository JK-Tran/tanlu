// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_feed_post_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteFeedPostInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFeedPostInputCopyWith<DeleteFeedPostInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFeedPostInputCopyWith<$Res> {
  factory $DeleteFeedPostInputCopyWith(
    DeleteFeedPostInput value,
    $Res Function(DeleteFeedPostInput) then,
  ) = _$DeleteFeedPostInputCopyWithImpl<$Res, DeleteFeedPostInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteFeedPostInputCopyWithImpl<$Res, $Val extends DeleteFeedPostInput>
    implements $DeleteFeedPostInputCopyWith<$Res> {
  _$DeleteFeedPostInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteFeedPostInputImplCopyWith<$Res>
    implements $DeleteFeedPostInputCopyWith<$Res> {
  factory _$$DeleteFeedPostInputImplCopyWith(
    _$DeleteFeedPostInputImpl value,
    $Res Function(_$DeleteFeedPostInputImpl) then,
  ) = __$$DeleteFeedPostInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteFeedPostInputImplCopyWithImpl<$Res>
    extends _$DeleteFeedPostInputCopyWithImpl<$Res, _$DeleteFeedPostInputImpl>
    implements _$$DeleteFeedPostInputImplCopyWith<$Res> {
  __$$DeleteFeedPostInputImplCopyWithImpl(
    _$DeleteFeedPostInputImpl _value,
    $Res Function(_$DeleteFeedPostInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteFeedPostInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFeedPostInputImpl implements _DeleteFeedPostInput {
  const _$DeleteFeedPostInputImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteFeedPostInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedPostInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedPostInputImplCopyWith<_$DeleteFeedPostInputImpl> get copyWith =>
      __$$DeleteFeedPostInputImplCopyWithImpl<_$DeleteFeedPostInputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteFeedPostInput implements DeleteFeedPostInput {
  const factory _DeleteFeedPostInput({required final int id}) =
      _$DeleteFeedPostInputImpl;

  @override
  int get id;

  /// Create a copy of DeleteFeedPostInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedPostInputImplCopyWith<_$DeleteFeedPostInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
