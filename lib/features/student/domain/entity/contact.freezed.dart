// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Contact {
  String get name => throw _privateConstructorUsedError;
  String get relationship =>
      throw _privateConstructorUsedError; // 'Bố', 'Mẹ', hoặc role khác
  String get phone => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  bool get isPrimary => throw _privateConstructorUsedError;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call({
    String name,
    String relationship,
    String phone,
    DateTime? dob,
    String userId,
    bool isPrimary,
  });
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? phone = null,
    Object? dob = freezed,
    Object? userId = null,
    Object? isPrimary = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            relationship: null == relationship
                ? _value.relationship
                : relationship // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            dob: freezed == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            isPrimary: null == isPrimary
                ? _value.isPrimary
                : isPrimary // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContactImplCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$ContactImplCopyWith(
    _$ContactImpl value,
    $Res Function(_$ContactImpl) then,
  ) = __$$ContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String relationship,
    String phone,
    DateTime? dob,
    String userId,
    bool isPrimary,
  });
}

/// @nodoc
class __$$ContactImplCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$ContactImpl>
    implements _$$ContactImplCopyWith<$Res> {
  __$$ContactImplCopyWithImpl(
    _$ContactImpl _value,
    $Res Function(_$ContactImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? relationship = null,
    Object? phone = null,
    Object? dob = freezed,
    Object? userId = null,
    Object? isPrimary = null,
  }) {
    return _then(
      _$ContactImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        relationship: null == relationship
            ? _value.relationship
            : relationship // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        dob: freezed == dob
            ? _value.dob
            : dob // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        isPrimary: null == isPrimary
            ? _value.isPrimary
            : isPrimary // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ContactImpl implements _Contact {
  const _$ContactImpl({
    this.name = '',
    this.relationship = '',
    this.phone = '',
    this.dob,
    this.userId = '',
    this.isPrimary = false,
  });

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String relationship;
  // 'Bố', 'Mẹ', hoặc role khác
  @override
  @JsonKey()
  final String phone;
  @override
  final DateTime? dob;
  @override
  @JsonKey()
  final String userId;
  @override
  @JsonKey()
  final bool isPrimary;

  @override
  String toString() {
    return 'Contact(name: $name, relationship: $relationship, phone: $phone, dob: $dob, userId: $userId, isPrimary: $isPrimary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.relationship, relationship) ||
                other.relationship == relationship) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isPrimary, isPrimary) ||
                other.isPrimary == isPrimary));
  }

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

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      __$$ContactImplCopyWithImpl<_$ContactImpl>(this, _$identity);
}

abstract class _Contact implements Contact {
  const factory _Contact({
    final String name,
    final String relationship,
    final String phone,
    final DateTime? dob,
    final String userId,
    final bool isPrimary,
  }) = _$ContactImpl;

  @override
  String get name;
  @override
  String get relationship; // 'Bố', 'Mẹ', hoặc role khác
  @override
  String get phone;
  @override
  DateTime? get dob;
  @override
  String get userId;
  @override
  bool get isPrimary;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
