// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContactData _$ContactDataFromJson(Map<String, dynamic> json) {
  return _ContactData.fromJson(json);
}

/// @nodoc
mixin _$ContactData {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship')
  String? get relationship => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPrimary')
  bool? get isPrimary => throw _privateConstructorUsedError;

  /// Serializes this ContactData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactDataCopyWith<ContactData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDataCopyWith<$Res> {
  factory $ContactDataCopyWith(
    ContactData value,
    $Res Function(ContactData) then,
  ) = _$ContactDataCopyWithImpl<$Res, ContactData>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'relationship') String? relationship,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'isPrimary') bool? isPrimary,
  });
}

/// @nodoc
class _$ContactDataCopyWithImpl<$Res, $Val extends ContactData>
    implements $ContactDataCopyWith<$Res> {
  _$ContactDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? relationship = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            relationship: freezed == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            dob: freezed == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrimary: freezed == isPrimary
                ? _value.isPrimary
                : isPrimary // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactDataImplCopyWith<$Res>
    implements $ContactDataCopyWith<$Res> {
  factory _$$ContactDataImplCopyWith(
    _$ContactDataImpl value,
    $Res Function(_$ContactDataImpl) then,
  ) = __$$ContactDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'relationship') String? relationship,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'isPrimary') bool? isPrimary,
  });
}

/// @nodoc
class __$$ContactDataImplCopyWithImpl<$Res>
    extends _$ContactDataCopyWithImpl<$Res, _$ContactDataImpl>
    implements _$$ContactDataImplCopyWith<$Res> {
  __$$ContactDataImplCopyWithImpl(
    _$ContactDataImpl _value,
    $Res Function(_$ContactDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? relationship = freezed,
    Object? phone = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
    Object? isPrimary = freezed,
  }) {
    return _then(
      _$ContactDataImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        relationship: freezed == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        dob: freezed == dob
            ? _value.dob
            : dob // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrimary: freezed == isPrimary
            ? _value.isPrimary
            : isPrimary // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDataImpl implements _ContactData {
  const _$ContactDataImpl({
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'relationship') this.relationship,
    @JsonKey(name: 'phone') this.phone,
    @JsonKey(name: 'dob') this.dob,
    @JsonKey(name: 'userId') this.userId,
    @JsonKey(name: 'isPrimary') this.isPrimary,
  });

  factory _$ContactDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'relationship')
  final String? relationship;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'dob')
  final String? dob;
  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'isPrimary')
  final bool? isPrimary;

  @override
  String toString() {
    return 'ContactData(name: $name, relationship: $relationship, phone: $phone, dob: $dob, userId: $userId, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    relationship,
    phone,
    dob,
    userId,
    isPrimary,
  );

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDataImplCopyWith<_$ContactDataImpl> get copyWith =>
      __$$ContactDataImplCopyWithImpl<_$ContactDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDataImplToJson(this);
  }
}

abstract class _ContactData implements ContactData {
  const factory _ContactData({
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'relationship') final String? relationship,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'dob') final String? dob,
    @JsonKey(name: 'userId') final String? userId,
    @JsonKey(name: 'isPrimary') final bool? isPrimary,
  }) = _$ContactDataImpl;

  factory _ContactData.fromJson(Map<String, dynamic> json) =
      _$ContactDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'relationship')
  String? get relationship;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'dob')
  String? get dob;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'isPrimary')
  bool? get isPrimary;

  /// Create a copy of ContactData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactDataImplCopyWith<_$ContactDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
