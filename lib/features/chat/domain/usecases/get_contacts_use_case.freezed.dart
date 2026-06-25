// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_contacts_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetContactsInput {
  String get currentUserId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;

  /// Create a copy of GetContactsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetContactsInputCopyWith<GetContactsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetContactsInputCopyWith<$Res> {
  factory $GetContactsInputCopyWith(
    GetContactsInput value,
    $Res Function(GetContactsInput) then,
  ) = _$GetContactsInputCopyWithImpl<$Res, GetContactsInput>;
  @useResult
  $Res call({String currentUserId, String role, String? classId});
}

/// @nodoc
class _$GetContactsInputCopyWithImpl<$Res, $Val extends GetContactsInput>
    implements $GetContactsInputCopyWith<$Res> {
  _$GetContactsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetContactsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? role = null,
    Object? classId = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetContactsInputImplCopyWith<$Res>
    implements $GetContactsInputCopyWith<$Res> {
  factory _$$GetContactsInputImplCopyWith(
    _$GetContactsInputImpl value,
    $Res Function(_$GetContactsInputImpl) then,
  ) = __$$GetContactsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentUserId, String role, String? classId});
}

/// @nodoc
class __$$GetContactsInputImplCopyWithImpl<$Res>
    extends _$GetContactsInputCopyWithImpl<$Res, _$GetContactsInputImpl>
    implements _$$GetContactsInputImplCopyWith<$Res> {
  __$$GetContactsInputImplCopyWithImpl(
    _$GetContactsInputImpl _value,
    $Res Function(_$GetContactsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetContactsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUserId = null,
    Object? role = null,
    Object? classId = freezed,
  }) {
    return _then(
      _$GetContactsInputImpl(
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GetContactsInputImpl
    with DiagnosticableTreeMixin
    implements _GetContactsInput {
  const _$GetContactsInputImpl({
    required this.currentUserId,
    required this.role,
    this.classId,
  });

  @override
  final String currentUserId;
  @override
  final String role;
  @override
  final String? classId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetContactsInput(currentUserId: $currentUserId, role: $role, classId: $classId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetContactsInput'))
      ..add(DiagnosticsProperty('currentUserId', currentUserId))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('classId', classId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContactsInputImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId, role, classId);

  /// Create a copy of GetContactsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactsInputImplCopyWith<_$GetContactsInputImpl> get copyWith =>
      __$$GetContactsInputImplCopyWithImpl<_$GetContactsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetContactsInput implements GetContactsInput {
  const factory _GetContactsInput({
    required final String currentUserId,
    required final String role,
    final String? classId,
  }) = _$GetContactsInputImpl;

  @override
  String get currentUserId;
  @override
  String get role;
  @override
  String? get classId;

  /// Create a copy of GetContactsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetContactsInputImplCopyWith<_$GetContactsInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetContactsOutput {
  List<Contact> get contacts => throw _privateConstructorUsedError;

  /// Create a copy of GetContactsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetContactsOutputCopyWith<GetContactsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetContactsOutputCopyWith<$Res> {
  factory $GetContactsOutputCopyWith(
    GetContactsOutput value,
    $Res Function(GetContactsOutput) then,
  ) = _$GetContactsOutputCopyWithImpl<$Res, GetContactsOutput>;
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class _$GetContactsOutputCopyWithImpl<$Res, $Val extends GetContactsOutput>
    implements $GetContactsOutputCopyWith<$Res> {
  _$GetContactsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetContactsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contacts = null}) {
    return _then(
      _value.copyWith(
            contacts: null == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<Contact>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetContactsOutputImplCopyWith<$Res>
    implements $GetContactsOutputCopyWith<$Res> {
  factory _$$GetContactsOutputImplCopyWith(
    _$GetContactsOutputImpl value,
    $Res Function(_$GetContactsOutputImpl) then,
  ) = __$$GetContactsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> contacts});
}

/// @nodoc
class __$$GetContactsOutputImplCopyWithImpl<$Res>
    extends _$GetContactsOutputCopyWithImpl<$Res, _$GetContactsOutputImpl>
    implements _$$GetContactsOutputImplCopyWith<$Res> {
  __$$GetContactsOutputImplCopyWithImpl(
    _$GetContactsOutputImpl _value,
    $Res Function(_$GetContactsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetContactsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contacts = null}) {
    return _then(
      _$GetContactsOutputImpl(
        contacts: null == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<Contact>,
      ),
    );
  }
}

/// @nodoc

class _$GetContactsOutputImpl
    with DiagnosticableTreeMixin
    implements _GetContactsOutput {
  const _$GetContactsOutputImpl({required final List<Contact> contacts})
    : _contacts = contacts;

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetContactsOutput(contacts: $contacts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetContactsOutput'))
      ..add(DiagnosticsProperty('contacts', contacts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContactsOutputImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of GetContactsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetContactsOutputImplCopyWith<_$GetContactsOutputImpl> get copyWith =>
      __$$GetContactsOutputImplCopyWithImpl<_$GetContactsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetContactsOutput implements GetContactsOutput {
  const factory _GetContactsOutput({required final List<Contact> contacts}) =
      _$GetContactsOutputImpl;

  @override
  List<Contact> get contacts;

  /// Create a copy of GetContactsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetContactsOutputImplCopyWith<_$GetContactsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
