// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_notifications_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetNotificationsInput {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationsInputCopyWith<GetNotificationsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsInputCopyWith<$Res> {
  factory $GetNotificationsInputCopyWith(
    GetNotificationsInput value,
    $Res Function(GetNotificationsInput) then,
  ) = _$GetNotificationsInputCopyWithImpl<$Res, GetNotificationsInput>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$GetNotificationsInputCopyWithImpl<
  $Res,
  $Val extends GetNotificationsInput
>
    implements $GetNotificationsInputCopyWith<$Res> {
  _$GetNotificationsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? limit = null}) {
    return _then(
      _value.copyWith(
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetNotificationsInputImplCopyWith<$Res>
    implements $GetNotificationsInputCopyWith<$Res> {
  factory _$$GetNotificationsInputImplCopyWith(
    _$GetNotificationsInputImpl value,
    $Res Function(_$GetNotificationsInputImpl) then,
  ) = __$$GetNotificationsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$GetNotificationsInputImplCopyWithImpl<$Res>
    extends
        _$GetNotificationsInputCopyWithImpl<$Res, _$GetNotificationsInputImpl>
    implements _$$GetNotificationsInputImplCopyWith<$Res> {
  __$$GetNotificationsInputImplCopyWithImpl(
    _$GetNotificationsInputImpl _value,
    $Res Function(_$GetNotificationsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetNotificationsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null, Object? limit = null}) {
    return _then(
      _$GetNotificationsInputImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetNotificationsInputImpl implements _GetNotificationsInput {
  const _$GetNotificationsInputImpl({this.page = 1, this.limit = 20});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetNotificationsInput(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsInputImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  /// Create a copy of GetNotificationsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsInputImplCopyWith<_$GetNotificationsInputImpl>
  get copyWith =>
      __$$GetNotificationsInputImplCopyWithImpl<_$GetNotificationsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetNotificationsInput implements GetNotificationsInput {
  const factory _GetNotificationsInput({final int page, final int limit}) =
      _$GetNotificationsInputImpl;

  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of GetNotificationsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsInputImplCopyWith<_$GetNotificationsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetNotificationsOutput {
  List<NotificationEntity> get notifications =>
      throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  /// Create a copy of GetNotificationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetNotificationsOutputCopyWith<GetNotificationsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNotificationsOutputCopyWith<$Res> {
  factory $GetNotificationsOutputCopyWith(
    GetNotificationsOutput value,
    $Res Function(GetNotificationsOutput) then,
  ) = _$GetNotificationsOutputCopyWithImpl<$Res, GetNotificationsOutput>;
  @useResult
  $Res call({List<NotificationEntity> notifications, int unreadCount});
}

/// @nodoc
class _$GetNotificationsOutputCopyWithImpl<
  $Res,
  $Val extends GetNotificationsOutput
>
    implements $GetNotificationsOutputCopyWith<$Res> {
  _$GetNotificationsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetNotificationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notifications = null, Object? unreadCount = null}) {
    return _then(
      _value.copyWith(
            notifications: null == notifications
                ? _value.notifications
                : notifications // ignore: cast_nullable_to_non_nullable
                      as List<NotificationEntity>,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetNotificationsOutputImplCopyWith<$Res>
    implements $GetNotificationsOutputCopyWith<$Res> {
  factory _$$GetNotificationsOutputImplCopyWith(
    _$GetNotificationsOutputImpl value,
    $Res Function(_$GetNotificationsOutputImpl) then,
  ) = __$$GetNotificationsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationEntity> notifications, int unreadCount});
}

/// @nodoc
class __$$GetNotificationsOutputImplCopyWithImpl<$Res>
    extends
        _$GetNotificationsOutputCopyWithImpl<$Res, _$GetNotificationsOutputImpl>
    implements _$$GetNotificationsOutputImplCopyWith<$Res> {
  __$$GetNotificationsOutputImplCopyWithImpl(
    _$GetNotificationsOutputImpl _value,
    $Res Function(_$GetNotificationsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetNotificationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notifications = null, Object? unreadCount = null}) {
    return _then(
      _$GetNotificationsOutputImpl(
        notifications: null == notifications
            ? _value._notifications
            : notifications // ignore: cast_nullable_to_non_nullable
                  as List<NotificationEntity>,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetNotificationsOutputImpl extends _GetNotificationsOutput {
  const _$GetNotificationsOutputImpl({
    required final List<NotificationEntity> notifications,
    required this.unreadCount,
  }) : _notifications = notifications,
       super._();

  final List<NotificationEntity> _notifications;
  @override
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final int unreadCount;

  @override
  String toString() {
    return 'GetNotificationsOutput(notifications: $notifications, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsOutputImpl &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notifications),
    unreadCount,
  );

  /// Create a copy of GetNotificationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsOutputImplCopyWith<_$GetNotificationsOutputImpl>
  get copyWith =>
      __$$GetNotificationsOutputImplCopyWithImpl<_$GetNotificationsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetNotificationsOutput extends GetNotificationsOutput {
  const factory _GetNotificationsOutput({
    required final List<NotificationEntity> notifications,
    required final int unreadCount,
  }) = _$GetNotificationsOutputImpl;
  const _GetNotificationsOutput._() : super._();

  @override
  List<NotificationEntity> get notifications;
  @override
  int get unreadCount;

  /// Create a copy of GetNotificationsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNotificationsOutputImplCopyWith<_$GetNotificationsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
