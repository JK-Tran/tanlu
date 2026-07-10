// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead')
  bool? get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this NotificationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
    NotificationData value,
    $Res Function(NotificationData) then,
  ) = _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  });
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? isRead = freezed,
    Object? data = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            isRead: freezed == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationDataImplCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$NotificationDataImplCopyWith(
    _$NotificationDataImpl value,
    $Res Function(_$NotificationDataImpl) then,
  ) = __$$NotificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'data') Map<String, dynamic>? data,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  });
}

/// @nodoc
class __$$NotificationDataImplCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$NotificationDataImpl>
    implements _$$NotificationDataImplCopyWith<$Res> {
  __$$NotificationDataImplCopyWithImpl(
    _$NotificationDataImpl _value,
    $Res Function(_$NotificationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? isRead = freezed,
    Object? data = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$NotificationDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        isRead: freezed == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationDataImpl extends _NotificationData {
  const _$NotificationDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'userId') this.userId,
    @JsonKey(name: 'title') this.title,
    @JsonKey(name: 'body') this.body,
    @JsonKey(name: 'type') this.type,
    @JsonKey(name: 'isRead') this.isRead,
    @JsonKey(name: 'data') final Map<String, dynamic>? data,
    @JsonKey(name: 'createdAt') this.createdAt,
  }) : _data = data,
       super._();

  factory _$NotificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'userId')
  final int? userId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'isRead')
  final bool? isRead;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'NotificationData(id: $id, userId: $userId, title: $title, body: $body, type: $type, isRead: $isRead, data: $data, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    title,
    body,
    type,
    isRead,
    const DeepCollectionEquality().hash(_data),
    createdAt,
  );

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      __$$NotificationDataImplCopyWithImpl<_$NotificationDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationDataImplToJson(this);
  }
}

abstract class _NotificationData extends NotificationData {
  const factory _NotificationData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'userId') final int? userId,
    @JsonKey(name: 'title') final String? title,
    @JsonKey(name: 'body') final String? body,
    @JsonKey(name: 'type') final String? type,
    @JsonKey(name: 'isRead') final bool? isRead,
    @JsonKey(name: 'data') final Map<String, dynamic>? data,
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
  }) = _$NotificationDataImpl;
  const _NotificationData._() : super._();

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$NotificationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'userId')
  int? get userId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'isRead')
  bool? get isRead;
  @override
  @JsonKey(name: 'data')
  Map<String, dynamic>? get data;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;

  /// Create a copy of NotificationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationDataImplCopyWith<_$NotificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationResponseData _$NotificationResponseDataFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationResponseData.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponseData {
  @JsonKey(name: 'data')
  List<NotificationData>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'unreadCount')
  int? get unreadCount => throw _privateConstructorUsedError;

  /// Serializes this NotificationResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationResponseDataCopyWith<NotificationResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseDataCopyWith<$Res> {
  factory $NotificationResponseDataCopyWith(
    NotificationResponseData value,
    $Res Function(NotificationResponseData) then,
  ) = _$NotificationResponseDataCopyWithImpl<$Res, NotificationResponseData>;
  @useResult
  $Res call({
    @JsonKey(name: 'data') List<NotificationData>? data,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  });
}

/// @nodoc
class _$NotificationResponseDataCopyWithImpl<
  $Res,
  $Val extends NotificationResponseData
>
    implements $NotificationResponseDataCopyWith<$Res> {
  _$NotificationResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed, Object? unreadCount = freezed}) {
    return _then(
      _value.copyWith(
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<NotificationData>?,
            unreadCount: freezed == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationResponseDataImplCopyWith<$Res>
    implements $NotificationResponseDataCopyWith<$Res> {
  factory _$$NotificationResponseDataImplCopyWith(
    _$NotificationResponseDataImpl value,
    $Res Function(_$NotificationResponseDataImpl) then,
  ) = __$$NotificationResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'data') List<NotificationData>? data,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  });
}

/// @nodoc
class __$$NotificationResponseDataImplCopyWithImpl<$Res>
    extends
        _$NotificationResponseDataCopyWithImpl<
          $Res,
          _$NotificationResponseDataImpl
        >
    implements _$$NotificationResponseDataImplCopyWith<$Res> {
  __$$NotificationResponseDataImplCopyWithImpl(
    _$NotificationResponseDataImpl _value,
    $Res Function(_$NotificationResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = freezed, Object? unreadCount = freezed}) {
    return _then(
      _$NotificationResponseDataImpl(
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<NotificationData>?,
        unreadCount: freezed == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationResponseDataImpl implements _NotificationResponseData {
  const _$NotificationResponseDataImpl({
    @JsonKey(name: 'data') final List<NotificationData>? data,
    @JsonKey(name: 'unreadCount') this.unreadCount,
  }) : _data = data;

  factory _$NotificationResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationResponseDataImplFromJson(json);

  final List<NotificationData>? _data;
  @override
  @JsonKey(name: 'data')
  List<NotificationData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'unreadCount')
  final int? unreadCount;

  @override
  String toString() {
    return 'NotificationResponseData(data: $data, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationResponseDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    unreadCount,
  );

  /// Create a copy of NotificationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationResponseDataImplCopyWith<_$NotificationResponseDataImpl>
  get copyWith =>
      __$$NotificationResponseDataImplCopyWithImpl<
        _$NotificationResponseDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationResponseDataImplToJson(this);
  }
}

abstract class _NotificationResponseData implements NotificationResponseData {
  const factory _NotificationResponseData({
    @JsonKey(name: 'data') final List<NotificationData>? data,
    @JsonKey(name: 'unreadCount') final int? unreadCount,
  }) = _$NotificationResponseDataImpl;

  factory _NotificationResponseData.fromJson(Map<String, dynamic> json) =
      _$NotificationResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<NotificationData>? get data;
  @override
  @JsonKey(name: 'unreadCount')
  int? get unreadCount;

  /// Create a copy of NotificationResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationResponseDataImplCopyWith<_$NotificationResponseDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
