// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_sheet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AttendanceSheetData _$AttendanceSheetDataFromJson(Map<String, dynamic> json) {
  return _AttendanceSheetData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceSheetData {
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'attendances')
  StudentAttendanceData? get attendances => throw _privateConstructorUsedError;

  /// Serializes this AttendanceSheetData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceSheetDataCopyWith<AttendanceSheetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceSheetDataCopyWith<$Res> {
  factory $AttendanceSheetDataCopyWith(
    AttendanceSheetData value,
    $Res Function(AttendanceSheetData) then,
  ) = _$AttendanceSheetDataCopyWithImpl<$Res, AttendanceSheetData>;
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'attendances') StudentAttendanceData? attendances,
  });

  $StudentAttendanceDataCopyWith<$Res>? get attendances;
}

/// @nodoc
class _$AttendanceSheetDataCopyWithImpl<$Res, $Val extends AttendanceSheetData>
    implements $AttendanceSheetDataCopyWith<$Res> {
  _$AttendanceSheetDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? attendances = freezed}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            attendances: freezed == attendances
                ? _value.attendances
                : attendances // ignore: cast_nullable_to_non_nullable
                      as StudentAttendanceData?,
          )
          as $Val,
    );
  }

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentAttendanceDataCopyWith<$Res>? get attendances {
    if (_value.attendances == null) {
      return null;
    }

    return $StudentAttendanceDataCopyWith<$Res>(_value.attendances!, (value) {
      return _then(_value.copyWith(attendances: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceSheetDataImplCopyWith<$Res>
    implements $AttendanceSheetDataCopyWith<$Res> {
  factory _$$AttendanceSheetDataImplCopyWith(
    _$AttendanceSheetDataImpl value,
    $Res Function(_$AttendanceSheetDataImpl) then,
  ) = __$$AttendanceSheetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'date') String date,
    @JsonKey(name: 'attendances') StudentAttendanceData? attendances,
  });

  @override
  $StudentAttendanceDataCopyWith<$Res>? get attendances;
}

/// @nodoc
class __$$AttendanceSheetDataImplCopyWithImpl<$Res>
    extends _$AttendanceSheetDataCopyWithImpl<$Res, _$AttendanceSheetDataImpl>
    implements _$$AttendanceSheetDataImplCopyWith<$Res> {
  __$$AttendanceSheetDataImplCopyWithImpl(
    _$AttendanceSheetDataImpl _value,
    $Res Function(_$AttendanceSheetDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? attendances = freezed}) {
    return _then(
      _$AttendanceSheetDataImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        attendances: freezed == attendances
            ? _value.attendances
            : attendances // ignore: cast_nullable_to_non_nullable
                  as StudentAttendanceData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendanceSheetDataImpl extends _AttendanceSheetData {
  const _$AttendanceSheetDataImpl({
    @JsonKey(name: 'date') required this.date,
    @JsonKey(name: 'attendances') this.attendances,
  }) : super._();

  factory _$AttendanceSheetDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceSheetDataImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'attendances')
  final StudentAttendanceData? attendances;

  @override
  String toString() {
    return 'AttendanceSheetData(date: $date, attendances: $attendances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendanceSheetDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.attendances, attendances) ||
                other.attendances == attendances));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, attendances);

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceSheetDataImplCopyWith<_$AttendanceSheetDataImpl> get copyWith =>
      __$$AttendanceSheetDataImplCopyWithImpl<_$AttendanceSheetDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceSheetDataImplToJson(this);
  }
}

abstract class _AttendanceSheetData extends AttendanceSheetData {
  const factory _AttendanceSheetData({
    @JsonKey(name: 'date') required final String date,
    @JsonKey(name: 'attendances') final StudentAttendanceData? attendances,
  }) = _$AttendanceSheetDataImpl;
  const _AttendanceSheetData._() : super._();

  factory _AttendanceSheetData.fromJson(Map<String, dynamic> json) =
      _$AttendanceSheetDataImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'attendances')
  StudentAttendanceData? get attendances;

  /// Create a copy of AttendanceSheetData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceSheetDataImplCopyWith<_$AttendanceSheetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
