// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_attendance_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DailyAttendanceResult {
  String get date => throw _privateConstructorUsedError;
  AttendanceSession get session => throw _privateConstructorUsedError;
  AttendanceSummary get summary => throw _privateConstructorUsedError;
  List<AttendanceStudent> get roster => throw _privateConstructorUsedError;

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAttendanceResultCopyWith<DailyAttendanceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAttendanceResultCopyWith<$Res> {
  factory $DailyAttendanceResultCopyWith(
    DailyAttendanceResult value,
    $Res Function(DailyAttendanceResult) then,
  ) = _$DailyAttendanceResultCopyWithImpl<$Res, DailyAttendanceResult>;
  @useResult
  $Res call({
    String date,
    AttendanceSession session,
    AttendanceSummary summary,
    List<AttendanceStudent> roster,
  });

  $AttendanceSessionCopyWith<$Res> get session;
  $AttendanceSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$DailyAttendanceResultCopyWithImpl<
  $Res,
  $Val extends DailyAttendanceResult
>
    implements $DailyAttendanceResultCopyWith<$Res> {
  _$DailyAttendanceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? session = null,
    Object? summary = null,
    Object? roster = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            session: null == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as AttendanceSession,
            summary: null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as AttendanceSummary,
            roster: null == roster
                ? _value.roster
                : roster // ignore: cast_nullable_to_non_nullable
                      as List<AttendanceStudent>,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSessionCopyWith<$Res> get session {
    return $AttendanceSessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSummaryCopyWith<$Res> get summary {
    return $AttendanceSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyAttendanceResultImplCopyWith<$Res>
    implements $DailyAttendanceResultCopyWith<$Res> {
  factory _$$DailyAttendanceResultImplCopyWith(
    _$DailyAttendanceResultImpl value,
    $Res Function(_$DailyAttendanceResultImpl) then,
  ) = __$$DailyAttendanceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String date,
    AttendanceSession session,
    AttendanceSummary summary,
    List<AttendanceStudent> roster,
  });

  @override
  $AttendanceSessionCopyWith<$Res> get session;
  @override
  $AttendanceSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$DailyAttendanceResultImplCopyWithImpl<$Res>
    extends
        _$DailyAttendanceResultCopyWithImpl<$Res, _$DailyAttendanceResultImpl>
    implements _$$DailyAttendanceResultImplCopyWith<$Res> {
  __$$DailyAttendanceResultImplCopyWithImpl(
    _$DailyAttendanceResultImpl _value,
    $Res Function(_$DailyAttendanceResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? session = null,
    Object? summary = null,
    Object? roster = null,
  }) {
    return _then(
      _$DailyAttendanceResultImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        session: null == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as AttendanceSession,
        summary: null == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as AttendanceSummary,
        roster: null == roster
            ? _value._roster
            : roster // ignore: cast_nullable_to_non_nullable
                  as List<AttendanceStudent>,
      ),
    );
  }
}

/// @nodoc

class _$DailyAttendanceResultImpl implements _DailyAttendanceResult {
  const _$DailyAttendanceResultImpl({
    this.date = '',
    this.session = const AttendanceSession(),
    this.summary = const AttendanceSummary(),
    final List<AttendanceStudent> roster = const [],
  }) : _roster = roster;

  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final AttendanceSession session;
  @override
  @JsonKey()
  final AttendanceSummary summary;
  final List<AttendanceStudent> _roster;
  @override
  @JsonKey()
  List<AttendanceStudent> get roster {
    if (_roster is EqualUnmodifiableListView) return _roster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roster);
  }

  @override
  String toString() {
    return 'DailyAttendanceResult(date: $date, session: $session, summary: $summary, roster: $roster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAttendanceResultImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._roster, _roster));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    session,
    summary,
    const DeepCollectionEquality().hash(_roster),
  );

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAttendanceResultImplCopyWith<_$DailyAttendanceResultImpl>
  get copyWith =>
      __$$DailyAttendanceResultImplCopyWithImpl<_$DailyAttendanceResultImpl>(
        this,
        _$identity,
      );
}

abstract class _DailyAttendanceResult implements DailyAttendanceResult {
  const factory _DailyAttendanceResult({
    final String date,
    final AttendanceSession session,
    final AttendanceSummary summary,
    final List<AttendanceStudent> roster,
  }) = _$DailyAttendanceResultImpl;

  @override
  String get date;
  @override
  AttendanceSession get session;
  @override
  AttendanceSummary get summary;
  @override
  List<AttendanceStudent> get roster;

  /// Create a copy of DailyAttendanceResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAttendanceResultImplCopyWith<_$DailyAttendanceResultImpl>
  get copyWith => throw _privateConstructorUsedError;
}
