// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StartOverviewEvent {
  String? get classId => throw _privateConstructorUsedError;

  /// Create a copy of StartOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StartOverviewEventCopyWith<StartOverviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartOverviewEventCopyWith<$Res> {
  factory $StartOverviewEventCopyWith(
    StartOverviewEvent value,
    $Res Function(StartOverviewEvent) then,
  ) = _$StartOverviewEventCopyWithImpl<$Res, StartOverviewEvent>;
  @useResult
  $Res call({String? classId});
}

/// @nodoc
class _$StartOverviewEventCopyWithImpl<$Res, $Val extends StartOverviewEvent>
    implements $StartOverviewEventCopyWith<$Res> {
  _$StartOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StartOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = freezed}) {
    return _then(
      _value.copyWith(
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
abstract class _$$StartOverviewEventImplCopyWith<$Res>
    implements $StartOverviewEventCopyWith<$Res> {
  factory _$$StartOverviewEventImplCopyWith(
    _$StartOverviewEventImpl value,
    $Res Function(_$StartOverviewEventImpl) then,
  ) = __$$StartOverviewEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? classId});
}

/// @nodoc
class __$$StartOverviewEventImplCopyWithImpl<$Res>
    extends _$StartOverviewEventCopyWithImpl<$Res, _$StartOverviewEventImpl>
    implements _$$StartOverviewEventImplCopyWith<$Res> {
  __$$StartOverviewEventImplCopyWithImpl(
    _$StartOverviewEventImpl _value,
    $Res Function(_$StartOverviewEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StartOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = freezed}) {
    return _then(
      _$StartOverviewEventImpl(
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$StartOverviewEventImpl implements _StartOverviewEvent {
  const _$StartOverviewEventImpl({this.classId});

  @override
  final String? classId;

  @override
  String toString() {
    return 'StartOverviewEvent(classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartOverviewEventImpl &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId);

  /// Create a copy of StartOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartOverviewEventImplCopyWith<_$StartOverviewEventImpl> get copyWith =>
      __$$StartOverviewEventImplCopyWithImpl<_$StartOverviewEventImpl>(
        this,
        _$identity,
      );
}

abstract class _StartOverviewEvent implements StartOverviewEvent {
  const factory _StartOverviewEvent({final String? classId}) =
      _$StartOverviewEventImpl;

  @override
  String? get classId;

  /// Create a copy of StartOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartOverviewEventImplCopyWith<_$StartOverviewEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PendingLeaveRequestsUpdatedEvent {
  List<LeaveRequest> get leaveRequests => throw _privateConstructorUsedError;

  /// Create a copy of PendingLeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PendingLeaveRequestsUpdatedEventCopyWith<PendingLeaveRequestsUpdatedEvent>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingLeaveRequestsUpdatedEventCopyWith<$Res> {
  factory $PendingLeaveRequestsUpdatedEventCopyWith(
    PendingLeaveRequestsUpdatedEvent value,
    $Res Function(PendingLeaveRequestsUpdatedEvent) then,
  ) =
      _$PendingLeaveRequestsUpdatedEventCopyWithImpl<
        $Res,
        PendingLeaveRequestsUpdatedEvent
      >;
  @useResult
  $Res call({List<LeaveRequest> leaveRequests});
}

/// @nodoc
class _$PendingLeaveRequestsUpdatedEventCopyWithImpl<
  $Res,
  $Val extends PendingLeaveRequestsUpdatedEvent
>
    implements $PendingLeaveRequestsUpdatedEventCopyWith<$Res> {
  _$PendingLeaveRequestsUpdatedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingLeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequests = null}) {
    return _then(
      _value.copyWith(
            leaveRequests: null == leaveRequests
                ? _value.leaveRequests
                : leaveRequests // ignore: cast_nullable_to_non_nullable
                      as List<LeaveRequest>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PendingLeaveRequestsUpdatedEventImplCopyWith<$Res>
    implements $PendingLeaveRequestsUpdatedEventCopyWith<$Res> {
  factory _$$PendingLeaveRequestsUpdatedEventImplCopyWith(
    _$PendingLeaveRequestsUpdatedEventImpl value,
    $Res Function(_$PendingLeaveRequestsUpdatedEventImpl) then,
  ) = __$$PendingLeaveRequestsUpdatedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeaveRequest> leaveRequests});
}

/// @nodoc
class __$$PendingLeaveRequestsUpdatedEventImplCopyWithImpl<$Res>
    extends
        _$PendingLeaveRequestsUpdatedEventCopyWithImpl<
          $Res,
          _$PendingLeaveRequestsUpdatedEventImpl
        >
    implements _$$PendingLeaveRequestsUpdatedEventImplCopyWith<$Res> {
  __$$PendingLeaveRequestsUpdatedEventImplCopyWithImpl(
    _$PendingLeaveRequestsUpdatedEventImpl _value,
    $Res Function(_$PendingLeaveRequestsUpdatedEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PendingLeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequests = null}) {
    return _then(
      _$PendingLeaveRequestsUpdatedEventImpl(
        null == leaveRequests
            ? _value._leaveRequests
            : leaveRequests // ignore: cast_nullable_to_non_nullable
                  as List<LeaveRequest>,
      ),
    );
  }
}

/// @nodoc

class _$PendingLeaveRequestsUpdatedEventImpl
    implements _PendingLeaveRequestsUpdatedEvent {
  const _$PendingLeaveRequestsUpdatedEventImpl(
    final List<LeaveRequest> leaveRequests,
  ) : _leaveRequests = leaveRequests;

  final List<LeaveRequest> _leaveRequests;
  @override
  List<LeaveRequest> get leaveRequests {
    if (_leaveRequests is EqualUnmodifiableListView) return _leaveRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leaveRequests);
  }

  @override
  String toString() {
    return 'PendingLeaveRequestsUpdatedEvent(leaveRequests: $leaveRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingLeaveRequestsUpdatedEventImpl &&
            const DeepCollectionEquality().equals(
              other._leaveRequests,
              _leaveRequests,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_leaveRequests),
  );

  /// Create a copy of PendingLeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingLeaveRequestsUpdatedEventImplCopyWith<
    _$PendingLeaveRequestsUpdatedEventImpl
  >
  get copyWith =>
      __$$PendingLeaveRequestsUpdatedEventImplCopyWithImpl<
        _$PendingLeaveRequestsUpdatedEventImpl
      >(this, _$identity);
}

abstract class _PendingLeaveRequestsUpdatedEvent
    implements PendingLeaveRequestsUpdatedEvent {
  const factory _PendingLeaveRequestsUpdatedEvent(
    final List<LeaveRequest> leaveRequests,
  ) = _$PendingLeaveRequestsUpdatedEventImpl;

  @override
  List<LeaveRequest> get leaveRequests;

  /// Create a copy of PendingLeaveRequestsUpdatedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PendingLeaveRequestsUpdatedEventImplCopyWith<
    _$PendingLeaveRequestsUpdatedEventImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewState {
  List<LeaveRequest> get pendingLeaveRequests =>
      throw _privateConstructorUsedError;
  bool get isLoadingLeaveRequests => throw _privateConstructorUsedError;
  Map<String, String> get studentAvatarUrls =>
      throw _privateConstructorUsedError;
  String? get classId => throw _privateConstructorUsedError;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
    OverviewState value,
    $Res Function(OverviewState) then,
  ) = _$OverviewStateCopyWithImpl<$Res, OverviewState>;
  @useResult
  $Res call({
    List<LeaveRequest> pendingLeaveRequests,
    bool isLoadingLeaveRequests,
    Map<String, String> studentAvatarUrls,
    String? classId,
  });
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res, $Val extends OverviewState>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingLeaveRequests = null,
    Object? isLoadingLeaveRequests = null,
    Object? studentAvatarUrls = null,
    Object? classId = freezed,
  }) {
    return _then(
      _value.copyWith(
            pendingLeaveRequests: null == pendingLeaveRequests
                ? _value.pendingLeaveRequests
                : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
                      as List<LeaveRequest>,
            isLoadingLeaveRequests: null == isLoadingLeaveRequests
                ? _value.isLoadingLeaveRequests
                : isLoadingLeaveRequests // ignore: cast_nullable_to_non_nullable
                      as bool,
            studentAvatarUrls: null == studentAvatarUrls
                ? _value.studentAvatarUrls
                : studentAvatarUrls // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
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
abstract class _$$OverviewStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$OverviewStateImplCopyWith(
    _$OverviewStateImpl value,
    $Res Function(_$OverviewStateImpl) then,
  ) = __$$OverviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<LeaveRequest> pendingLeaveRequests,
    bool isLoadingLeaveRequests,
    Map<String, String> studentAvatarUrls,
    String? classId,
  });
}

/// @nodoc
class __$$OverviewStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$OverviewStateImpl>
    implements _$$OverviewStateImplCopyWith<$Res> {
  __$$OverviewStateImplCopyWithImpl(
    _$OverviewStateImpl _value,
    $Res Function(_$OverviewStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingLeaveRequests = null,
    Object? isLoadingLeaveRequests = null,
    Object? studentAvatarUrls = null,
    Object? classId = freezed,
  }) {
    return _then(
      _$OverviewStateImpl(
        pendingLeaveRequests: null == pendingLeaveRequests
            ? _value._pendingLeaveRequests
            : pendingLeaveRequests // ignore: cast_nullable_to_non_nullable
                  as List<LeaveRequest>,
        isLoadingLeaveRequests: null == isLoadingLeaveRequests
            ? _value.isLoadingLeaveRequests
            : isLoadingLeaveRequests // ignore: cast_nullable_to_non_nullable
                  as bool,
        studentAvatarUrls: null == studentAvatarUrls
            ? _value._studentAvatarUrls
            : studentAvatarUrls // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$OverviewStateImpl implements _OverviewState {
  const _$OverviewStateImpl({
    final List<LeaveRequest> pendingLeaveRequests = const [],
    this.isLoadingLeaveRequests = true,
    final Map<String, String> studentAvatarUrls = const {},
    this.classId,
  }) : _pendingLeaveRequests = pendingLeaveRequests,
       _studentAvatarUrls = studentAvatarUrls;

  final List<LeaveRequest> _pendingLeaveRequests;
  @override
  @JsonKey()
  List<LeaveRequest> get pendingLeaveRequests {
    if (_pendingLeaveRequests is EqualUnmodifiableListView)
      return _pendingLeaveRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingLeaveRequests);
  }

  @override
  @JsonKey()
  final bool isLoadingLeaveRequests;
  final Map<String, String> _studentAvatarUrls;
  @override
  @JsonKey()
  Map<String, String> get studentAvatarUrls {
    if (_studentAvatarUrls is EqualUnmodifiableMapView)
      return _studentAvatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_studentAvatarUrls);
  }

  @override
  final String? classId;

  @override
  String toString() {
    return 'OverviewState(pendingLeaveRequests: $pendingLeaveRequests, isLoadingLeaveRequests: $isLoadingLeaveRequests, studentAvatarUrls: $studentAvatarUrls, classId: $classId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverviewStateImpl &&
            const DeepCollectionEquality().equals(
              other._pendingLeaveRequests,
              _pendingLeaveRequests,
            ) &&
            (identical(other.isLoadingLeaveRequests, isLoadingLeaveRequests) ||
                other.isLoadingLeaveRequests == isLoadingLeaveRequests) &&
            const DeepCollectionEquality().equals(
              other._studentAvatarUrls,
              _studentAvatarUrls,
            ) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_pendingLeaveRequests),
    isLoadingLeaveRequests,
    const DeepCollectionEquality().hash(_studentAvatarUrls),
    classId,
  );

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OverviewStateImplCopyWith<_$OverviewStateImpl> get copyWith =>
      __$$OverviewStateImplCopyWithImpl<_$OverviewStateImpl>(this, _$identity);
}

abstract class _OverviewState implements OverviewState {
  const factory _OverviewState({
    final List<LeaveRequest> pendingLeaveRequests,
    final bool isLoadingLeaveRequests,
    final Map<String, String> studentAvatarUrls,
    final String? classId,
  }) = _$OverviewStateImpl;

  @override
  List<LeaveRequest> get pendingLeaveRequests;
  @override
  bool get isLoadingLeaveRequests;
  @override
  Map<String, String> get studentAvatarUrls;
  @override
  String? get classId;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OverviewStateImplCopyWith<_$OverviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
