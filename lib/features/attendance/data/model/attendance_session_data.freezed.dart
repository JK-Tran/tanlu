// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_session_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceSessionData _$AttendanceSessionDataFromJson(
  Map<String, dynamic> json,
) {
  return _AttendanceSessionData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceSessionData {
  @JsonKey(name: 'isCheckInCompleted')
  bool? get isCheckInCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'isCheckOutCompleted')
  bool? get isCheckOutCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'completedAt')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this AttendanceSessionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSessionDataCopyWith<AttendanceSessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSessionDataCopyWith<$Res> {
  factory $AttendanceSessionDataCopyWith(
    AttendanceSessionData value,
    $Res Function(AttendanceSessionData) then,
  ) = _$AttendanceSessionDataCopyWithImpl<$Res, AttendanceSessionData>;
  @useResult
  $Res call({
    @JsonKey(name: 'isCheckInCompleted') bool? isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') bool? isCheckOutCompleted,
    @JsonKey(name: 'completedAt') DateTime? completedAt,
  });
}

/// @nodoc
class _$AttendanceSessionDataCopyWithImpl<
  $Res,
  $Val extends AttendanceSessionData
>
    implements $AttendanceSessionDataCopyWith<$Res> {
  _$AttendanceSessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckInCompleted = freezed,
    Object? isCheckOutCompleted = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            isCheckInCompleted: freezed == isCheckInCompleted
                ? _value.isCheckInCompleted
                : isCheckInCompleted // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isCheckOutCompleted: freezed == isCheckOutCompleted
                ? _value.isCheckOutCompleted
                : isCheckOutCompleted // ignore: cast_nullable_to_non_nullable
                      as bool?,
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
abstract class _$$AttendanceSessionDataImplCopyWith<$Res>
    implements $AttendanceSessionDataCopyWith<$Res> {
  factory _$$AttendanceSessionDataImplCopyWith(
    _$AttendanceSessionDataImpl value,
    $Res Function(_$AttendanceSessionDataImpl) then,
  ) = __$$AttendanceSessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'isCheckInCompleted') bool? isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') bool? isCheckOutCompleted,
    @JsonKey(name: 'completedAt') DateTime? completedAt,
  });
}

/// @nodoc
class __$$AttendanceSessionDataImplCopyWithImpl<$Res>
    extends
        _$AttendanceSessionDataCopyWithImpl<$Res, _$AttendanceSessionDataImpl>
    implements _$$AttendanceSessionDataImplCopyWith<$Res> {
  __$$AttendanceSessionDataImplCopyWithImpl(
    _$AttendanceSessionDataImpl _value,
    $Res Function(_$AttendanceSessionDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSessionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckInCompleted = freezed,
    Object? isCheckOutCompleted = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(
      _$AttendanceSessionDataImpl(
        isCheckInCompleted: freezed == isCheckInCompleted
            ? _value.isCheckInCompleted
            : isCheckInCompleted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isCheckOutCompleted: freezed == isCheckOutCompleted
            ? _value.isCheckOutCompleted
            : isCheckOutCompleted // ignore: cast_nullable_to_non_nullable
                  as bool?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceSessionDataImpl extends _AttendanceSessionData {
  const _$AttendanceSessionDataImpl({
    @JsonKey(name: 'isCheckInCompleted') this.isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') this.isCheckOutCompleted,
    @JsonKey(name: 'completedAt') this.completedAt,
  }) : super._();

  factory _$AttendanceSessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceSessionDataImplFromJson(json);

  @override
  @JsonKey(name: 'isCheckInCompleted')
  final bool? isCheckInCompleted;
  @override
  @JsonKey(name: 'isCheckOutCompleted')
  final bool? isCheckOutCompleted;
  @override
  @JsonKey(name: 'completedAt')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'AttendanceSessionData(isCheckInCompleted: $isCheckInCompleted, isCheckOutCompleted: $isCheckOutCompleted, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSessionDataImpl &&
            (identical(other.isCheckInCompleted, isCheckInCompleted) ||
                other.isCheckInCompleted == isCheckInCompleted) &&
            (identical(other.isCheckOutCompleted, isCheckOutCompleted) ||
                other.isCheckOutCompleted == isCheckOutCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isCheckInCompleted,
    isCheckOutCompleted,
    completedAt,
  );

  /// Create a copy of AttendanceSessionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSessionDataImplCopyWith<_$AttendanceSessionDataImpl>
  get copyWith =>
      __$$AttendanceSessionDataImplCopyWithImpl<_$AttendanceSessionDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceSessionDataImplToJson(this);
  }
}

abstract class _AttendanceSessionData extends AttendanceSessionData {
  const factory _AttendanceSessionData({
    @JsonKey(name: 'isCheckInCompleted') final bool? isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') final bool? isCheckOutCompleted,
    @JsonKey(name: 'completedAt') final DateTime? completedAt,
  }) = _$AttendanceSessionDataImpl;
  const _AttendanceSessionData._() : super._();

  factory _AttendanceSessionData.fromJson(Map<String, dynamic> json) =
      _$AttendanceSessionDataImpl.fromJson;

  @override
  @JsonKey(name: 'isCheckInCompleted')
  bool? get isCheckInCompleted;
  @override
  @JsonKey(name: 'isCheckOutCompleted')
  bool? get isCheckOutCompleted;
  @override
  @JsonKey(name: 'completedAt')
  DateTime? get completedAt;

  /// Create a copy of AttendanceSessionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSessionDataImplCopyWith<_$AttendanceSessionDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
