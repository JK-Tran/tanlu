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
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  ContactRelation get relation => throw _privateConstructorUsedError;
  bool get canChat => throw _privateConstructorUsedError;

  /// `pendingSent` | `pendingReceived` | null
  String? get pendingRequest => throw _privateConstructorUsedError;

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
    String id,
    String fullName,
    String role,
    String avatar,
    ContactRelation relation,
    bool canChat,
    String? pendingRequest,
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
    Object? id = null,
    Object? fullName = null,
    Object? role = null,
    Object? avatar = null,
    Object? relation = null,
    Object? canChat = null,
    Object? pendingRequest = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String,
            relation: null == relation
                ? _value.relation
                : relation // ignore: cast_nullable_to_non_nullable
                      as ContactRelation,
            canChat: null == canChat
                ? _value.canChat
                : canChat // ignore: cast_nullable_to_non_nullable
                      as bool,
            pendingRequest: freezed == pendingRequest
                ? _value.pendingRequest
                : pendingRequest // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    String id,
    String fullName,
    String role,
    String avatar,
    ContactRelation relation,
    bool canChat,
    String? pendingRequest,
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
    Object? id = null,
    Object? fullName = null,
    Object? role = null,
    Object? avatar = null,
    Object? relation = null,
    Object? canChat = null,
    Object? pendingRequest = freezed,
  }) {
    return _then(
      _$ContactImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: null == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String,
        relation: null == relation
            ? _value.relation
            : relation // ignore: cast_nullable_to_non_nullable
                  as ContactRelation,
        canChat: null == canChat
            ? _value.canChat
            : canChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        pendingRequest: freezed == pendingRequest
            ? _value.pendingRequest
            : pendingRequest // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ContactImpl implements _Contact {
  const _$ContactImpl({
    this.id = '',
    this.fullName = '',
    this.role = '',
    this.avatar = '',
    this.relation = ContactRelation.none,
    this.canChat = false,
    this.pendingRequest,
  });

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final ContactRelation relation;
  @override
  @JsonKey()
  final bool canChat;

  /// `pendingSent` | `pendingReceived` | null
  @override
  final String? pendingRequest;

  @override
  String toString() {
    return 'Contact(id: $id, fullName: $fullName, role: $role, avatar: $avatar, relation: $relation, canChat: $canChat, pendingRequest: $pendingRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.relation, relation) ||
                other.relation == relation) &&
            (identical(other.canChat, canChat) || other.canChat == canChat) &&
            (identical(other.pendingRequest, pendingRequest) ||
                other.pendingRequest == pendingRequest));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    role,
    avatar,
    relation,
    canChat,
    pendingRequest,
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
    final String id,
    final String fullName,
    final String role,
    final String avatar,
    final ContactRelation relation,
    final bool canChat,
    final String? pendingRequest,
  }) = _$ContactImpl;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get role;
  @override
  String get avatar;
  @override
  ContactRelation get relation;
  @override
  bool get canChat;

  /// `pendingSent` | `pendingReceived` | null
  @override
  String? get pendingRequest;

  /// Create a copy of Contact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactImplCopyWith<_$ContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
