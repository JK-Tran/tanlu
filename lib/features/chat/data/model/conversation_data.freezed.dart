// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ConversationData _$ConversationDataFromJson(Map<String, dynamic> json) {
  return _ConversationData.fromJson(json);
}

/// @nodoc
mixin _$ConversationData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'centerId')
  String? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'memberIds')
  List<String>? get memberIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageText')
  String? get lastMessageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastMessageSenderId')
  String? get lastMessageSenderId => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'lastMessageAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationDataCopyWith<ConversationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDataCopyWith<$Res> {
  factory $ConversationDataCopyWith(
    ConversationData value,
    $Res Function(ConversationData) then,
  ) = _$ConversationDataCopyWithImpl<$Res, ConversationData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'memberIds') List<String>? memberIds,
    @JsonKey(name: 'lastMessageText') String? lastMessageText,
    @JsonKey(name: 'lastMessageSenderId') String? lastMessageSenderId,
    @JsonKey(
      name: 'lastMessageAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastMessageAt,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ConversationDataCopyWithImpl<$Res, $Val extends ConversationData>
    implements $ConversationDataCopyWith<$Res> {
  _$ConversationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? classId = freezed,
    Object? centerId = freezed,
    Object? memberIds = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageSenderId = freezed,
    Object? lastMessageAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
            centerId: freezed == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as String?,
            memberIds: freezed == memberIds
                ? _value.memberIds
                : memberIds // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            lastMessageText: freezed == lastMessageText
                ? _value.lastMessageText
                : lastMessageText // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastMessageSenderId: freezed == lastMessageSenderId
                ? _value.lastMessageSenderId
                : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastMessageAt: freezed == lastMessageAt
                ? _value.lastMessageAt
                : lastMessageAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConversationDataImplCopyWith<$Res>
    implements $ConversationDataCopyWith<$Res> {
  factory _$$ConversationDataImplCopyWith(
    _$ConversationDataImpl value,
    $Res Function(_$ConversationDataImpl) then,
  ) = __$$ConversationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'memberIds') List<String>? memberIds,
    @JsonKey(name: 'lastMessageText') String? lastMessageText,
    @JsonKey(name: 'lastMessageSenderId') String? lastMessageSenderId,
    @JsonKey(
      name: 'lastMessageAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastMessageAt,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ConversationDataImplCopyWithImpl<$Res>
    extends _$ConversationDataCopyWithImpl<$Res, _$ConversationDataImpl>
    implements _$$ConversationDataImplCopyWith<$Res> {
  __$$ConversationDataImplCopyWithImpl(
    _$ConversationDataImpl _value,
    $Res Function(_$ConversationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? classId = freezed,
    Object? centerId = freezed,
    Object? memberIds = freezed,
    Object? lastMessageText = freezed,
    Object? lastMessageSenderId = freezed,
    Object? lastMessageAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ConversationDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
        centerId: freezed == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as String?,
        memberIds: freezed == memberIds
            ? _value._memberIds
            : memberIds // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        lastMessageText: freezed == lastMessageText
            ? _value.lastMessageText
            : lastMessageText // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastMessageSenderId: freezed == lastMessageSenderId
            ? _value.lastMessageSenderId
            : lastMessageSenderId // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastMessageAt: freezed == lastMessageAt
            ? _value.lastMessageAt
            : lastMessageAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDataImpl implements _ConversationData {
  const _$ConversationDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'name') this.name,
    @JsonKey(name: 'type') this.type,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'centerId') this.centerId,
    @JsonKey(name: 'memberIds') final List<String>? memberIds,
    @JsonKey(name: 'lastMessageText') this.lastMessageText,
    @JsonKey(name: 'lastMessageSenderId') this.lastMessageSenderId,
    @JsonKey(
      name: 'lastMessageAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.lastMessageAt,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    this.updatedAt,
  }) : _memberIds = memberIds;

  factory _$ConversationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'classId')
  final String? classId;
  @override
  @JsonKey(name: 'centerId')
  final String? centerId;
  final List<String>? _memberIds;
  @override
  @JsonKey(name: 'memberIds')
  List<String>? get memberIds {
    final value = _memberIds;
    if (value == null) return null;
    if (_memberIds is EqualUnmodifiableListView) return _memberIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'lastMessageText')
  final String? lastMessageText;
  @override
  @JsonKey(name: 'lastMessageSenderId')
  final String? lastMessageSenderId;
  @override
  @JsonKey(
    name: 'lastMessageAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? lastMessageAt;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ConversationData(id: $id, name: $name, type: $type, classId: $classId, centerId: $centerId, memberIds: $memberIds, lastMessageText: $lastMessageText, lastMessageSenderId: $lastMessageSenderId, lastMessageAt: $lastMessageAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            const DeepCollectionEquality().equals(
              other._memberIds,
              _memberIds,
            ) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastMessageSenderId, lastMessageSenderId) ||
                other.lastMessageSenderId == lastMessageSenderId) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    classId,
    centerId,
    const DeepCollectionEquality().hash(_memberIds),
    lastMessageText,
    lastMessageSenderId,
    lastMessageAt,
    createdAt,
    updatedAt,
  );

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDataImplCopyWith<_$ConversationDataImpl> get copyWith =>
      __$$ConversationDataImplCopyWithImpl<_$ConversationDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDataImplToJson(this);
  }
}

abstract class _ConversationData implements ConversationData {
  const factory _ConversationData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'classId') final String? classId,
    @JsonKey(name: 'centerId') final String? centerId,
    @JsonKey(name: 'memberIds') final List<String>? memberIds,
    @JsonKey(name: 'lastMessageText') final String? lastMessageText,
    @JsonKey(name: 'lastMessageSenderId') final String? lastMessageSenderId,
    @JsonKey(
      name: 'lastMessageAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? lastMessageAt,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    final DateTime? updatedAt,
  }) = _$ConversationDataImpl;

  factory _ConversationData.fromJson(Map<String, dynamic> json) =
      _$ConversationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'classId')
  String? get classId;
  @override
  @JsonKey(name: 'centerId')
  String? get centerId;
  @override
  @JsonKey(name: 'memberIds')
  List<String>? get memberIds;
  @override
  @JsonKey(name: 'lastMessageText')
  String? get lastMessageText;
  @override
  @JsonKey(name: 'lastMessageSenderId')
  String? get lastMessageSenderId;
  @override
  @JsonKey(
    name: 'lastMessageAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get lastMessageAt;
  @override
  @JsonKey(
    name: 'createdAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get createdAt;
  @override
  @JsonKey(
    name: 'updatedAt',
    fromJson: FirestoreJson.toDateTime,
    toJson: FirestoreJson.dateTimeToFirestore,
  )
  DateTime? get updatedAt;

  /// Create a copy of ConversationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationDataImplCopyWith<_$ConversationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
