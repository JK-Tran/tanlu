// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceSession {
  bool get isCheckInCompleted => throw _privateConstructorUsedError;
  bool get isCheckOutCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSessionCopyWith<AttendanceSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSessionCopyWith<$Res> {
  factory $AttendanceSessionCopyWith(
    AttendanceSession value,
    $Res Function(AttendanceSession) then,
  ) = _$AttendanceSessionCopyWithImpl<$Res, AttendanceSession>;
  @useResult
  $Res call({
    bool isCheckInCompleted,
    bool isCheckOutCompleted,
    DateTime? completedAt,
  });
}

/// @nodoc
class _$AttendanceSessionCopyWithImpl<$Res, $Val extends AttendanceSession>
    implements $AttendanceSessionCopyWith<$Res> {
  _$AttendanceSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckInCompleted = null,
    Object? isCheckOutCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            isCheckInCompleted: null == isCheckInCompleted
                ? _value.isCheckInCompleted
                : isCheckInCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            isCheckOutCompleted: null == isCheckOutCompleted
                ? _value.isCheckOutCompleted
                : isCheckOutCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceSessionImplCopyWith<$Res>
    implements $AttendanceSessionCopyWith<$Res> {
  factory _$$AttendanceSessionImplCopyWith(
    _$AttendanceSessionImpl value,
    $Res Function(_$AttendanceSessionImpl) then,
  ) = __$$AttendanceSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isCheckInCompleted,
    bool isCheckOutCompleted,
    DateTime? completedAt,
  });
}

/// @nodoc
class __$$AttendanceSessionImplCopyWithImpl<$Res>
    extends _$AttendanceSessionCopyWithImpl<$Res, _$AttendanceSessionImpl>
    implements _$$AttendanceSessionImplCopyWith<$Res> {
  __$$AttendanceSessionImplCopyWithImpl(
    _$AttendanceSessionImpl _value,
    $Res Function(_$AttendanceSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckInCompleted = null,
    Object? isCheckOutCompleted = null,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$AttendanceSessionImpl(
        isCheckInCompleted: null == isCheckInCompleted
            ? _value.isCheckInCompleted
            : isCheckInCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        isCheckOutCompleted: null == isCheckOutCompleted
            ? _value.isCheckOutCompleted
            : isCheckOutCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceSessionImpl implements _AttendanceSession {
  const _$AttendanceSessionImpl({
    this.isCheckInCompleted = false,
    this.isCheckOutCompleted = false,
    this.completedAt,
  });

  @override
  @JsonKey()
  final bool isCheckInCompleted;
  @override
  @JsonKey()
  final bool isCheckOutCompleted;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'AttendanceSession(isCheckInCompleted: $isCheckInCompleted, isCheckOutCompleted: $isCheckOutCompleted, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSessionImpl &&
            (identical(other.isCheckInCompleted, isCheckInCompleted) ||
                other.isCheckInCompleted == isCheckInCompleted) &&
            (identical(other.isCheckOutCompleted, isCheckOutCompleted) ||
                other.isCheckOutCompleted == isCheckOutCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isCheckInCompleted,
    isCheckOutCompleted,
    completedAt,
  );

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSessionImplCopyWith<_$AttendanceSessionImpl> get copyWith =>
      __$$AttendanceSessionImplCopyWithImpl<_$AttendanceSessionImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceSession implements AttendanceSession {
  const factory _AttendanceSession({
    final bool isCheckInCompleted,
    final bool isCheckOutCompleted,
    final DateTime? completedAt,
  }) = _$AttendanceSessionImpl;

  @override
  bool get isCheckInCompleted;
  @override
  bool get isCheckOutCompleted;
  @override
  DateTime? get completedAt;

  /// Create a copy of AttendanceSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSessionImplCopyWith<_$AttendanceSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
