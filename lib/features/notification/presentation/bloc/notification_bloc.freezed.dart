// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, bool isRefresh)
    loadNotifications,
    required TResult Function(List<int> notificationIds) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function() incrementUnreadCount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult? Function(List<int> notificationIds)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function()? incrementUnreadCount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult Function(List<int> notificationIds)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function()? incrementUnreadCount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_IncrementUnreadCount value) incrementUnreadCount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_IncrementUnreadCount value)? incrementUnreadCount,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_IncrementUnreadCount value)? incrementUnreadCount,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
    NotificationEvent value,
    $Res Function(NotificationEvent) then,
  ) = _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadNotificationsImplCopyWith<$Res> {
  factory _$$LoadNotificationsImplCopyWith(
    _$LoadNotificationsImpl value,
    $Res Function(_$LoadNotificationsImpl) then,
  ) = __$$LoadNotificationsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int limit, bool isRefresh});
}

/// @nodoc
class __$$LoadNotificationsImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$LoadNotificationsImpl>
    implements _$$LoadNotificationsImplCopyWith<$Res> {
  __$$LoadNotificationsImplCopyWithImpl(
    _$LoadNotificationsImpl _value,
    $Res Function(_$LoadNotificationsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
    Object? isRefresh = null,
  }) {
    return _then(
      _$LoadNotificationsImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        isRefresh: null == isRefresh
            ? _value.isRefresh
            : isRefresh // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadNotificationsImpl implements _LoadNotifications {
  const _$LoadNotificationsImpl({
    this.page = 1,
    this.limit = 20,
    this.isRefresh = false,
  });

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final bool isRefresh;

  @override
  String toString() {
    return 'NotificationEvent.loadNotifications(page: $page, limit: $limit, isRefresh: $isRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNotificationsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.isRefresh, isRefresh) ||
                other.isRefresh == isRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit, isRefresh);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNotificationsImplCopyWith<_$LoadNotificationsImpl> get copyWith =>
      __$$LoadNotificationsImplCopyWithImpl<_$LoadNotificationsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, bool isRefresh)
    loadNotifications,
    required TResult Function(List<int> notificationIds) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function() incrementUnreadCount,
  }) {
    return loadNotifications(page, limit, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult? Function(List<int> notificationIds)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function()? incrementUnreadCount,
  }) {
    return loadNotifications?.call(page, limit, isRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult Function(List<int> notificationIds)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function()? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications(page, limit, isRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_IncrementUnreadCount value) incrementUnreadCount,
  }) {
    return loadNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_IncrementUnreadCount value)? incrementUnreadCount,
  }) {
    return loadNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_IncrementUnreadCount value)? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (loadNotifications != null) {
      return loadNotifications(this);
    }
    return orElse();
  }
}

abstract class _LoadNotifications implements NotificationEvent {
  const factory _LoadNotifications({
    final int page,
    final int limit,
    final bool isRefresh,
  }) = _$LoadNotificationsImpl;

  int get page;
  int get limit;
  bool get isRefresh;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadNotificationsImplCopyWith<_$LoadNotificationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAsReadImplCopyWith<$Res> {
  factory _$$MarkAsReadImplCopyWith(
    _$MarkAsReadImpl value,
    $Res Function(_$MarkAsReadImpl) then,
  ) = __$$MarkAsReadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class __$$MarkAsReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$MarkAsReadImpl>
    implements _$$MarkAsReadImplCopyWith<$Res> {
  __$$MarkAsReadImplCopyWithImpl(
    _$MarkAsReadImpl _value,
    $Res Function(_$MarkAsReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notificationIds = null}) {
    return _then(
      _$MarkAsReadImpl(
        null == notificationIds
            ? _value._notificationIds
            : notificationIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$MarkAsReadImpl implements _MarkAsRead {
  const _$MarkAsReadImpl(final List<int> notificationIds)
    : _notificationIds = notificationIds;

  final List<int> _notificationIds;
  @override
  List<int> get notificationIds {
    if (_notificationIds is EqualUnmodifiableListView) return _notificationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationIds);
  }

  @override
  String toString() {
    return 'NotificationEvent.markAsRead(notificationIds: $notificationIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadImpl &&
            const DeepCollectionEquality().equals(
              other._notificationIds,
              _notificationIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notificationIds),
  );

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      __$$MarkAsReadImplCopyWithImpl<_$MarkAsReadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, bool isRefresh)
    loadNotifications,
    required TResult Function(List<int> notificationIds) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function() incrementUnreadCount,
  }) {
    return markAsRead(notificationIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult? Function(List<int> notificationIds)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function()? incrementUnreadCount,
  }) {
    return markAsRead?.call(notificationIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult Function(List<int> notificationIds)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function()? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(notificationIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_IncrementUnreadCount value) incrementUnreadCount,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_IncrementUnreadCount value)? incrementUnreadCount,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_IncrementUnreadCount value)? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAsRead implements NotificationEvent {
  const factory _MarkAsRead(final List<int> notificationIds) = _$MarkAsReadImpl;

  List<int> get notificationIds;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsReadImplCopyWith<_$MarkAsReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkAllAsReadImplCopyWith<$Res> {
  factory _$$MarkAllAsReadImplCopyWith(
    _$MarkAllAsReadImpl value,
    $Res Function(_$MarkAllAsReadImpl) then,
  ) = __$$MarkAllAsReadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllAsReadImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$MarkAllAsReadImpl>
    implements _$$MarkAllAsReadImplCopyWith<$Res> {
  __$$MarkAllAsReadImplCopyWithImpl(
    _$MarkAllAsReadImpl _value,
    $Res Function(_$MarkAllAsReadImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarkAllAsReadImpl implements _MarkAllAsRead {
  const _$MarkAllAsReadImpl();

  @override
  String toString() {
    return 'NotificationEvent.markAllAsRead()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAllAsReadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, bool isRefresh)
    loadNotifications,
    required TResult Function(List<int> notificationIds) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function() incrementUnreadCount,
  }) {
    return markAllAsRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult? Function(List<int> notificationIds)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function()? incrementUnreadCount,
  }) {
    return markAllAsRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult Function(List<int> notificationIds)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function()? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_IncrementUnreadCount value) incrementUnreadCount,
  }) {
    return markAllAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_IncrementUnreadCount value)? incrementUnreadCount,
  }) {
    return markAllAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_IncrementUnreadCount value)? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead(this);
    }
    return orElse();
  }
}

abstract class _MarkAllAsRead implements NotificationEvent {
  const factory _MarkAllAsRead() = _$MarkAllAsReadImpl;
}

/// @nodoc
abstract class _$$IncrementUnreadCountImplCopyWith<$Res> {
  factory _$$IncrementUnreadCountImplCopyWith(
    _$IncrementUnreadCountImpl value,
    $Res Function(_$IncrementUnreadCountImpl) then,
  ) = __$$IncrementUnreadCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementUnreadCountImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$IncrementUnreadCountImpl>
    implements _$$IncrementUnreadCountImplCopyWith<$Res> {
  __$$IncrementUnreadCountImplCopyWithImpl(
    _$IncrementUnreadCountImpl _value,
    $Res Function(_$IncrementUnreadCountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IncrementUnreadCountImpl implements _IncrementUnreadCount {
  const _$IncrementUnreadCountImpl();

  @override
  String toString() {
    return 'NotificationEvent.incrementUnreadCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementUnreadCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit, bool isRefresh)
    loadNotifications,
    required TResult Function(List<int> notificationIds) markAsRead,
    required TResult Function() markAllAsRead,
    required TResult Function() incrementUnreadCount,
  }) {
    return incrementUnreadCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult? Function(List<int> notificationIds)? markAsRead,
    TResult? Function()? markAllAsRead,
    TResult? Function()? incrementUnreadCount,
  }) {
    return incrementUnreadCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit, bool isRefresh)? loadNotifications,
    TResult Function(List<int> notificationIds)? markAsRead,
    TResult Function()? markAllAsRead,
    TResult Function()? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (incrementUnreadCount != null) {
      return incrementUnreadCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotifications value) loadNotifications,
    required TResult Function(_MarkAsRead value) markAsRead,
    required TResult Function(_MarkAllAsRead value) markAllAsRead,
    required TResult Function(_IncrementUnreadCount value) incrementUnreadCount,
  }) {
    return incrementUnreadCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotifications value)? loadNotifications,
    TResult? Function(_MarkAsRead value)? markAsRead,
    TResult? Function(_MarkAllAsRead value)? markAllAsRead,
    TResult? Function(_IncrementUnreadCount value)? incrementUnreadCount,
  }) {
    return incrementUnreadCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotifications value)? loadNotifications,
    TResult Function(_MarkAsRead value)? markAsRead,
    TResult Function(_MarkAllAsRead value)? markAllAsRead,
    TResult Function(_IncrementUnreadCount value)? incrementUnreadCount,
    required TResult orElse(),
  }) {
    if (incrementUnreadCount != null) {
      return incrementUnreadCount(this);
    }
    return orElse();
  }
}

abstract class _IncrementUnreadCount implements NotificationEvent {
  const factory _IncrementUnreadCount() = _$IncrementUnreadCountImpl;
}

/// @nodoc
mixin _$NotificationState {
  List<NotificationEntity> get notifications =>
      throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
    NotificationState value,
    $Res Function(NotificationState) then,
  ) = _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call({
    List<NotificationEntity> notifications,
    int unreadCount,
    bool isLoading,
    int page,
    bool hasReachedMax,
    String? error,
  });
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? unreadCount = null,
    Object? isLoading = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? error = freezed,
  }) {
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
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            hasReachedMax: null == hasReachedMax
                ? _value.hasReachedMax
                : hasReachedMax // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(
    _$NotificationStateImpl value,
    $Res Function(_$NotificationStateImpl) then,
  ) = __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<NotificationEntity> notifications,
    int unreadCount,
    bool isLoading,
    int page,
    bool hasReachedMax,
    String? error,
  });
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(
    _$NotificationStateImpl _value,
    $Res Function(_$NotificationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? unreadCount = null,
    Object? isLoading = null,
    Object? page = null,
    Object? hasReachedMax = null,
    Object? error = freezed,
  }) {
    return _then(
      _$NotificationStateImpl(
        notifications: null == notifications
            ? _value._notifications
            : notifications // ignore: cast_nullable_to_non_nullable
                  as List<NotificationEntity>,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        hasReachedMax: null == hasReachedMax
            ? _value.hasReachedMax
            : hasReachedMax // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl({
    final List<NotificationEntity> notifications = const [],
    this.unreadCount = 0,
    this.isLoading = false,
    this.page = 1,
    this.hasReachedMax = false,
    this.error,
  }) : _notifications = notifications;

  final List<NotificationEntity> _notifications;
  @override
  @JsonKey()
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final int unreadCount;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasReachedMax;
  @override
  final String? error;

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, unreadCount: $unreadCount, isLoading: $isLoading, page: $page, hasReachedMax: $hasReachedMax, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            const DeepCollectionEquality().equals(
              other._notifications,
              _notifications,
            ) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notifications),
    unreadCount,
    isLoading,
    page,
    hasReachedMax,
    error,
  );

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState({
    final List<NotificationEntity> notifications,
    final int unreadCount,
    final bool isLoading,
    final int page,
    final bool hasReachedMax,
    final String? error,
  }) = _$NotificationStateImpl;

  @override
  List<NotificationEntity> get notifications;
  @override
  int get unreadCount;
  @override
  bool get isLoading;
  @override
  int get page;
  @override
  bool get hasReachedMax;
  @override
  String? get error;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
