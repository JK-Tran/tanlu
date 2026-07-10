// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_summary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceSummaryData _$AttendanceSummaryDataFromJson(
  Map<String, dynamic> json,
) {
  return _AttendanceSummaryData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceSummaryData {
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'present')
  int? get present => throw _privateConstructorUsedError;
  @JsonKey(name: 'absent_excused')
  int? get absentExcused => throw _privateConstructorUsedError;
  @JsonKey(name: 'absent_unexcused')
  int? get absentUnexcused => throw _privateConstructorUsedError;
  @JsonKey(name: 'leave_requests')
  int? get leaveRequests => throw _privateConstructorUsedError;

  /// Serializes this AttendanceSummaryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSummaryDataCopyWith<AttendanceSummaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSummaryDataCopyWith<$Res> {
  factory $AttendanceSummaryDataCopyWith(
    AttendanceSummaryData value,
    $Res Function(AttendanceSummaryData) then,
  ) = _$AttendanceSummaryDataCopyWithImpl<$Res, AttendanceSummaryData>;
  @useResult
  $Res call({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'present') int? present,
    @JsonKey(name: 'absent_excused') int? absentExcused,
    @JsonKey(name: 'absent_unexcused') int? absentUnexcused,
    @JsonKey(name: 'leave_requests') int? leaveRequests,
  });
}

/// @nodoc
class _$AttendanceSummaryDataCopyWithImpl<
  $Res,
  $Val extends AttendanceSummaryData
>
    implements $AttendanceSummaryDataCopyWith<$Res> {
  _$AttendanceSummaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? present = freezed,
    Object? absentExcused = freezed,
    Object? absentUnexcused = freezed,
    Object? leaveRequests = freezed,
  }) {
    return _then(
      _value.copyWith(
            total: freezed == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int?,
            present: freezed == present
                ? _value.present
                : present // ignore: cast_nullable_to_non_nullable
                      as int?,
            absentExcused: freezed == absentExcused
                ? _value.absentExcused
                : absentExcused // ignore: cast_nullable_to_non_nullable
                      as int?,
            absentUnexcused: freezed == absentUnexcused
                ? _value.absentUnexcused
                : absentUnexcused // ignore: cast_nullable_to_non_nullable
                      as int?,
            leaveRequests: freezed == leaveRequests
                ? _value.leaveRequests
                : leaveRequests // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceSummaryDataImplCopyWith<$Res>
    implements $AttendanceSummaryDataCopyWith<$Res> {
  factory _$$AttendanceSummaryDataImplCopyWith(
    _$AttendanceSummaryDataImpl value,
    $Res Function(_$AttendanceSummaryDataImpl) then,
  ) = __$$AttendanceSummaryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'present') int? present,
    @JsonKey(name: 'absent_excused') int? absentExcused,
    @JsonKey(name: 'absent_unexcused') int? absentUnexcused,
    @JsonKey(name: 'leave_requests') int? leaveRequests,
  });
}

/// @nodoc
class __$$AttendanceSummaryDataImplCopyWithImpl<$Res>
    extends
        _$AttendanceSummaryDataCopyWithImpl<$Res, _$AttendanceSummaryDataImpl>
    implements _$$AttendanceSummaryDataImplCopyWith<$Res> {
  __$$AttendanceSummaryDataImplCopyWithImpl(
    _$AttendanceSummaryDataImpl _value,
    $Res Function(_$AttendanceSummaryDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? present = freezed,
    Object? absentExcused = freezed,
    Object? absentUnexcused = freezed,
    Object? leaveRequests = freezed,
  }) {
    return _then(
      _$AttendanceSummaryDataImpl(
        total: freezed == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int?,
        present: freezed == present
            ? _value.present
            : present // ignore: cast_nullable_to_non_nullable
                  as int?,
        absentExcused: freezed == absentExcused
            ? _value.absentExcused
            : absentExcused // ignore: cast_nullable_to_non_nullable
                  as int?,
        absentUnexcused: freezed == absentUnexcused
            ? _value.absentUnexcused
            : absentUnexcused // ignore: cast_nullable_to_non_nullable
                  as int?,
        leaveRequests: freezed == leaveRequests
            ? _value.leaveRequests
            : leaveRequests // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceSummaryDataImpl extends _AttendanceSummaryData {
  const _$AttendanceSummaryDataImpl({
    @JsonKey(name: 'total') this.total,
    @JsonKey(name: 'present') this.present,
    @JsonKey(name: 'absent_excused') this.absentExcused,
    @JsonKey(name: 'absent_unexcused') this.absentUnexcused,
    @JsonKey(name: 'leave_requests') this.leaveRequests,
  }) : super._();

  factory _$AttendanceSummaryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceSummaryDataImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'present')
  final int? present;
  @override
  @JsonKey(name: 'absent_excused')
  final int? absentExcused;
  @override
  @JsonKey(name: 'absent_unexcused')
  final int? absentUnexcused;
  @override
  @JsonKey(name: 'leave_requests')
  final int? leaveRequests;

  @override
  String toString() {
    return 'AttendanceSummaryData(total: $total, present: $present, absentExcused: $absentExcused, absentUnexcused: $absentUnexcused, leaveRequests: $leaveRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSummaryDataImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absentExcused, absentExcused) ||
                other.absentExcused == absentExcused) &&
            (identical(other.absentUnexcused, absentUnexcused) ||
                other.absentUnexcused == absentUnexcused) &&
            (identical(other.leaveRequests, leaveRequests) ||
                other.leaveRequests == leaveRequests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    present,
    absentExcused,
    absentUnexcused,
    leaveRequests,
  );

  /// Create a copy of AttendanceSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSummaryDataImplCopyWith<_$AttendanceSummaryDataImpl>
  get copyWith =>
      __$$AttendanceSummaryDataImplCopyWithImpl<_$AttendanceSummaryDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceSummaryDataImplToJson(this);
  }
}

abstract class _AttendanceSummaryData extends AttendanceSummaryData {
  const factory _AttendanceSummaryData({
    @JsonKey(name: 'total') final int? total,
    @JsonKey(name: 'present') final int? present,
    @JsonKey(name: 'absent_excused') final int? absentExcused,
    @JsonKey(name: 'absent_unexcused') final int? absentUnexcused,
    @JsonKey(name: 'leave_requests') final int? leaveRequests,
  }) = _$AttendanceSummaryDataImpl;
  const _AttendanceSummaryData._() : super._();

  factory _AttendanceSummaryData.fromJson(Map<String, dynamic> json) =
      _$AttendanceSummaryDataImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'present')
  int? get present;
  @override
  @JsonKey(name: 'absent_excused')
  int? get absentExcused;
  @override
  @JsonKey(name: 'absent_unexcused')
  int? get absentUnexcused;
  @override
  @JsonKey(name: 'leave_requests')
  int? get leaveRequests;

  /// Create a copy of AttendanceSummaryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSummaryDataImplCopyWith<_$AttendanceSummaryDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
