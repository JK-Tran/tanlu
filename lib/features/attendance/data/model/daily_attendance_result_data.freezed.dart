// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_attendance_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyAttendanceResultData _$DailyAttendanceResultDataFromJson(
  Map<String, dynamic> json,
) {
  return _DailyAttendanceResultData.fromJson(json);
}

/// @nodoc
mixin _$DailyAttendanceResultData {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'session')
  AttendanceSessionData? get session => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  AttendanceSummaryData? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'roster')
  List<AttendanceStudentData>? get roster => throw _privateConstructorUsedError;

  /// Serializes this DailyAttendanceResultData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyAttendanceResultDataCopyWith<DailyAttendanceResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyAttendanceResultDataCopyWith<$Res> {
  factory $DailyAttendanceResultDataCopyWith(
    DailyAttendanceResultData value,
    $Res Function(DailyAttendanceResultData) then,
  ) = _$DailyAttendanceResultDataCopyWithImpl<$Res, DailyAttendanceResultData>;
  @useResult
  $Res call({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'session') AttendanceSessionData? session,
    @JsonKey(name: 'summary') AttendanceSummaryData? summary,
    @JsonKey(name: 'roster') List<AttendanceStudentData>? roster,
  });

  $AttendanceSessionDataCopyWith<$Res>? get session;
  $AttendanceSummaryDataCopyWith<$Res>? get summary;
}

/// @nodoc
class _$DailyAttendanceResultDataCopyWithImpl<
  $Res,
  $Val extends DailyAttendanceResultData
>
    implements $DailyAttendanceResultDataCopyWith<$Res> {
  _$DailyAttendanceResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? session = freezed,
    Object? summary = freezed,
    Object? roster = freezed,
  }) {
    return _then(
      _value.copyWith(
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            session: freezed == session
                ? _value.session
                : session // ignore: cast_nullable_to_non_nullable
                      as AttendanceSessionData?,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as AttendanceSummaryData?,
            roster: freezed == roster
                ? _value.roster
                : roster // ignore: cast_nullable_to_non_nullable
                      as List<AttendanceStudentData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSessionDataCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $AttendanceSessionDataCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttendanceSummaryDataCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $AttendanceSummaryDataCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyAttendanceResultDataImplCopyWith<$Res>
    implements $DailyAttendanceResultDataCopyWith<$Res> {
  factory _$$DailyAttendanceResultDataImplCopyWith(
    _$DailyAttendanceResultDataImpl value,
    $Res Function(_$DailyAttendanceResultDataImpl) then,
  ) = __$$DailyAttendanceResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'session') AttendanceSessionData? session,
    @JsonKey(name: 'summary') AttendanceSummaryData? summary,
    @JsonKey(name: 'roster') List<AttendanceStudentData>? roster,
  });

  @override
  $AttendanceSessionDataCopyWith<$Res>? get session;
  @override
  $AttendanceSummaryDataCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$DailyAttendanceResultDataImplCopyWithImpl<$Res>
    extends
        _$DailyAttendanceResultDataCopyWithImpl<
          $Res,
          _$DailyAttendanceResultDataImpl
        >
    implements _$$DailyAttendanceResultDataImplCopyWith<$Res> {
  __$$DailyAttendanceResultDataImplCopyWithImpl(
    _$DailyAttendanceResultDataImpl _value,
    $Res Function(_$DailyAttendanceResultDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? session = freezed,
    Object? summary = freezed,
    Object? roster = freezed,
  }) {
    return _then(
      _$DailyAttendanceResultDataImpl(
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        session: freezed == session
            ? _value.session
            : session // ignore: cast_nullable_to_non_nullable
                  as AttendanceSessionData?,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as AttendanceSummaryData?,
        roster: freezed == roster
            ? _value._roster
            : roster // ignore: cast_nullable_to_non_nullable
                  as List<AttendanceStudentData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyAttendanceResultDataImpl extends _DailyAttendanceResultData {
  const _$DailyAttendanceResultDataImpl({
    @JsonKey(name: 'date') this.date,
    @JsonKey(name: 'session') this.session,
    @JsonKey(name: 'summary') this.summary,
    @JsonKey(name: 'roster') final List<AttendanceStudentData>? roster,
  }) : _roster = roster,
       super._();

  factory _$DailyAttendanceResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyAttendanceResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'session')
  final AttendanceSessionData? session;
  @override
  @JsonKey(name: 'summary')
  final AttendanceSummaryData? summary;
  final List<AttendanceStudentData>? _roster;
  @override
  @JsonKey(name: 'roster')
  List<AttendanceStudentData>? get roster {
    final value = _roster;
    if (value == null) return null;
    if (_roster is EqualUnmodifiableListView) return _roster;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DailyAttendanceResultData(date: $date, session: $session, summary: $summary, roster: $roster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyAttendanceResultDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._roster, _roster));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    session,
    summary,
    const DeepCollectionEquality().hash(_roster),
  );

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyAttendanceResultDataImplCopyWith<_$DailyAttendanceResultDataImpl>
  get copyWith =>
      __$$DailyAttendanceResultDataImplCopyWithImpl<
        _$DailyAttendanceResultDataImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyAttendanceResultDataImplToJson(this);
  }
}

abstract class _DailyAttendanceResultData extends DailyAttendanceResultData {
  const factory _DailyAttendanceResultData({
    @JsonKey(name: 'date') final String? date,
    @JsonKey(name: 'session') final AttendanceSessionData? session,
    @JsonKey(name: 'summary') final AttendanceSummaryData? summary,
    @JsonKey(name: 'roster') final List<AttendanceStudentData>? roster,
  }) = _$DailyAttendanceResultDataImpl;
  const _DailyAttendanceResultData._() : super._();

  factory _DailyAttendanceResultData.fromJson(Map<String, dynamic> json) =
      _$DailyAttendanceResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'session')
  AttendanceSessionData? get session;
  @override
  @JsonKey(name: 'summary')
  AttendanceSummaryData? get summary;
  @override
  @JsonKey(name: 'roster')
  List<AttendanceStudentData>? get roster;

  /// Create a copy of DailyAttendanceResultData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyAttendanceResultDataImplCopyWith<_$DailyAttendanceResultDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
