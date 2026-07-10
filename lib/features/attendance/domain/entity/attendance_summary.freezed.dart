// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AttendanceSummary {
  int get total => throw _privateConstructorUsedError;
  int get present => throw _privateConstructorUsedError;
  int get absentExcused => throw _privateConstructorUsedError;
  int get absentUnexcused => throw _privateConstructorUsedError;
  int get leaveRequests => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSummaryCopyWith<AttendanceSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSummaryCopyWith<$Res> {
  factory $AttendanceSummaryCopyWith(
    AttendanceSummary value,
    $Res Function(AttendanceSummary) then,
  ) = _$AttendanceSummaryCopyWithImpl<$Res, AttendanceSummary>;
  @useResult
  $Res call({
    int total,
    int present,
    int absentExcused,
    int absentUnexcused,
    int leaveRequests,
  });
}

/// @nodoc
class _$AttendanceSummaryCopyWithImpl<$Res, $Val extends AttendanceSummary>
    implements $AttendanceSummaryCopyWith<$Res> {
  _$AttendanceSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? present = null,
    Object? absentExcused = null,
    Object? absentUnexcused = null,
    Object? leaveRequests = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            present: null == present
                ? _value.present
                : present // ignore: cast_nullable_to_non_nullable
                      as int,
            absentExcused: null == absentExcused
                ? _value.absentExcused
                : absentExcused // ignore: cast_nullable_to_non_nullable
                      as int,
            absentUnexcused: null == absentUnexcused
                ? _value.absentUnexcused
                : absentUnexcused // ignore: cast_nullable_to_non_nullable
                      as int,
            leaveRequests: null == leaveRequests
                ? _value.leaveRequests
                : leaveRequests // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AttendanceSummaryImplCopyWith<$Res>
    implements $AttendanceSummaryCopyWith<$Res> {
  factory _$$AttendanceSummaryImplCopyWith(
    _$AttendanceSummaryImpl value,
    $Res Function(_$AttendanceSummaryImpl) then,
  ) = __$$AttendanceSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int present,
    int absentExcused,
    int absentUnexcused,
    int leaveRequests,
  });
}

/// @nodoc
class __$$AttendanceSummaryImplCopyWithImpl<$Res>
    extends _$AttendanceSummaryCopyWithImpl<$Res, _$AttendanceSummaryImpl>
    implements _$$AttendanceSummaryImplCopyWith<$Res> {
  __$$AttendanceSummaryImplCopyWithImpl(
    _$AttendanceSummaryImpl _value,
    $Res Function(_$AttendanceSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? present = null,
    Object? absentExcused = null,
    Object? absentUnexcused = null,
    Object? leaveRequests = null,
  }) {
    return _then(
      _$AttendanceSummaryImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        present: null == present
            ? _value.present
            : present // ignore: cast_nullable_to_non_nullable
                  as int,
        absentExcused: null == absentExcused
            ? _value.absentExcused
            : absentExcused // ignore: cast_nullable_to_non_nullable
                  as int,
        absentUnexcused: null == absentUnexcused
            ? _value.absentUnexcused
            : absentUnexcused // ignore: cast_nullable_to_non_nullable
                  as int,
        leaveRequests: null == leaveRequests
            ? _value.leaveRequests
            : leaveRequests // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AttendanceSummaryImpl implements _AttendanceSummary {
  const _$AttendanceSummaryImpl({
    this.total = 0,
    this.present = 0,
    this.absentExcused = 0,
    this.absentUnexcused = 0,
    this.leaveRequests = 0,
  });

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int present;
  @override
  @JsonKey()
  final int absentExcused;
  @override
  @JsonKey()
  final int absentUnexcused;
  @override
  @JsonKey()
  final int leaveRequests;

  @override
  String toString() {
    return 'AttendanceSummary(total: $total, present: $present, absentExcused: $absentExcused, absentUnexcused: $absentUnexcused, leaveRequests: $leaveRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSummaryImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.present, present) || other.present == present) &&
            (identical(other.absentExcused, absentExcused) ||
                other.absentExcused == absentExcused) &&
            (identical(other.absentUnexcused, absentUnexcused) ||
                other.absentUnexcused == absentUnexcused) &&
            (identical(other.leaveRequests, leaveRequests) ||
                other.leaveRequests == leaveRequests));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    present,
    absentExcused,
    absentUnexcused,
    leaveRequests,
  );

  /// Create a copy of AttendanceSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSummaryImplCopyWith<_$AttendanceSummaryImpl> get copyWith =>
      __$$AttendanceSummaryImplCopyWithImpl<_$AttendanceSummaryImpl>(
        this,
        _$identity,
      );
}

abstract class _AttendanceSummary implements AttendanceSummary {
  const factory _AttendanceSummary({
    final int total,
    final int present,
    final int absentExcused,
    final int absentUnexcused,
    final int leaveRequests,
  }) = _$AttendanceSummaryImpl;

  @override
  int get total;
  @override
  int get present;
  @override
  int get absentExcused;
  @override
  int get absentUnexcused;
  @override
  int get leaveRequests;

  /// Create a copy of AttendanceSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSummaryImplCopyWith<_$AttendanceSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
