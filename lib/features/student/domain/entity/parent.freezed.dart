// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Parent {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call({int id, String fullName, String phone, String avatarUrl});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? avatarUrl = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            avatarUrl: null == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParentImplCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$ParentImplCopyWith(
    _$ParentImpl value,
    $Res Function(_$ParentImpl) then,
  ) = __$$ParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fullName, String phone, String avatarUrl});
}

/// @nodoc
class __$$ParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$ParentImpl>
    implements _$$ParentImplCopyWith<$Res> {
  __$$ParentImplCopyWithImpl(
    _$ParentImpl _value,
    $Res Function(_$ParentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? phone = null,
    Object? avatarUrl = null,
  }) {
    return _then(
      _$ParentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        avatarUrl: null == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ParentImpl implements _Parent {
  const _$ParentImpl({
    this.id = 0,
    this.fullName = '',
    this.phone = '',
    this.avatarUrl = '',
  });

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String avatarUrl;

  @override
  String toString() {
    return 'Parent(id: $id, fullName: $fullName, phone: $phone, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, phone, avatarUrl);

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      __$$ParentImplCopyWithImpl<_$ParentImpl>(this, _$identity);
}

abstract class _Parent implements Parent {
  const factory _Parent({
    final int id,
    final String fullName,
    final String phone,
    final String avatarUrl,
  }) = _$ParentImpl;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get phone;
  @override
  String get avatarUrl;

  /// Create a copy of Parent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
