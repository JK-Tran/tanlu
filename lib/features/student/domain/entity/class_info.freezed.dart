// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClassInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassInfoCopyWith<ClassInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassInfoCopyWith<$Res> {
  factory $ClassInfoCopyWith(ClassInfo value, $Res Function(ClassInfo) then) =
      _$ClassInfoCopyWithImpl<$Res, ClassInfo>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$ClassInfoCopyWithImpl<$Res, $Val extends ClassInfo>
    implements $ClassInfoCopyWith<$Res> {
  _$ClassInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClassInfoImplCopyWith<$Res>
    implements $ClassInfoCopyWith<$Res> {
  factory _$$ClassInfoImplCopyWith(
    _$ClassInfoImpl value,
    $Res Function(_$ClassInfoImpl) then,
  ) = __$$ClassInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$ClassInfoImplCopyWithImpl<$Res>
    extends _$ClassInfoCopyWithImpl<$Res, _$ClassInfoImpl>
    implements _$$ClassInfoImplCopyWith<$Res> {
  __$$ClassInfoImplCopyWithImpl(
    _$ClassInfoImpl _value,
    $Res Function(_$ClassInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null}) {
    return _then(
      _$ClassInfoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ClassInfoImpl implements _ClassInfo {
  const _$ClassInfoImpl({this.id = 0, this.name = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ClassInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassInfoImplCopyWith<_$ClassInfoImpl> get copyWith =>
      __$$ClassInfoImplCopyWithImpl<_$ClassInfoImpl>(this, _$identity);
}

abstract class _ClassInfo implements ClassInfo {
  const factory _ClassInfo({final int id, final String name}) = _$ClassInfoImpl;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of ClassInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassInfoImplCopyWith<_$ClassInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
