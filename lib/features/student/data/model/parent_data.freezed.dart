// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parent_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParentData _$ParentDataFromJson(Map<String, dynamic> json) {
  return _ParentData.fromJson(json);
}

/// @nodoc
mixin _$ParentData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this ParentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentDataCopyWith<ParentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentDataCopyWith<$Res> {
  factory $ParentDataCopyWith(
    ParentData value,
    $Res Function(ParentData) then,
  ) = _$ParentDataCopyWithImpl<$Res, ParentData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  });
}

/// @nodoc
class _$ParentDataCopyWithImpl<$Res, $Val extends ParentData>
    implements $ParentDataCopyWith<$Res> {
  _$ParentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParentDataImplCopyWith<$Res>
    implements $ParentDataCopyWith<$Res> {
  factory _$$ParentDataImplCopyWith(
    _$ParentDataImpl value,
    $Res Function(_$ParentDataImpl) then,
  ) = __$$ParentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  });
}

/// @nodoc
class __$$ParentDataImplCopyWithImpl<$Res>
    extends _$ParentDataCopyWithImpl<$Res, _$ParentDataImpl>
    implements _$$ParentDataImplCopyWith<$Res> {
  __$$ParentDataImplCopyWithImpl(
    _$ParentDataImpl _value,
    $Res Function(_$ParentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$ParentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentDataImpl extends _ParentData {
  const _$ParentDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
  }) : super._();

  factory _$ParentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;

  @override
  String toString() {
    return 'ParentData(id: $id, fullName: $fullName, phone: $phone, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, phone, avatarUrl);

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentDataImplCopyWith<_$ParentDataImpl> get copyWith =>
      __$$ParentDataImplCopyWithImpl<_$ParentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentDataImplToJson(this);
  }
}

abstract class _ParentData extends ParentData {
  const factory _ParentData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
  }) = _$ParentDataImpl;
  const _ParentData._() : super._();

  factory _ParentData.fromJson(Map<String, dynamic> json) =
      _$ParentDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;

  /// Create a copy of ParentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentDataImplCopyWith<_$ParentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
