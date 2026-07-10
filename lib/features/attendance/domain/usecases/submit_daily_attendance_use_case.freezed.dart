// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_daily_attendance_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitDailyAttendanceInput {
  String get date => throw _privateConstructorUsedError;
  List<AttendanceStudent> get attendanceStudent =>
      throw _privateConstructorUsedError;

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitDailyAttendanceInputCopyWith<SubmitDailyAttendanceInput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitDailyAttendanceInputCopyWith<$Res> {
  factory $SubmitDailyAttendanceInputCopyWith(
    SubmitDailyAttendanceInput value,
    $Res Function(SubmitDailyAttendanceInput) then,
  ) =
      _$SubmitDailyAttendanceInputCopyWithImpl<
        $Res,
        SubmitDailyAttendanceInput
      >;
  @useResult
  $Res call({String date, List<AttendanceStudent> attendanceStudent});
}

/// @nodoc
class _$SubmitDailyAttendanceInputCopyWithImpl<
  $Res,
  $Val extends SubmitDailyAttendanceInput
>
    implements $SubmitDailyAttendanceInputCopyWith<$Res> {
  _$SubmitDailyAttendanceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? attendanceStudent = null}) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            attendanceStudent: null == attendanceStudent
                ? _value.attendanceStudent
                : attendanceStudent // ignore: cast_nullable_to_non_nullable
                      as List<AttendanceStudent>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitDailyAttendanceInputImplCopyWith<$Res>
    implements $SubmitDailyAttendanceInputCopyWith<$Res> {
  factory _$$SubmitDailyAttendanceInputImplCopyWith(
    _$SubmitDailyAttendanceInputImpl value,
    $Res Function(_$SubmitDailyAttendanceInputImpl) then,
  ) = __$$SubmitDailyAttendanceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, List<AttendanceStudent> attendanceStudent});
}

/// @nodoc
class __$$SubmitDailyAttendanceInputImplCopyWithImpl<$Res>
    extends
        _$SubmitDailyAttendanceInputCopyWithImpl<
          $Res,
          _$SubmitDailyAttendanceInputImpl
        >
    implements _$$SubmitDailyAttendanceInputImplCopyWith<$Res> {
  __$$SubmitDailyAttendanceInputImplCopyWithImpl(
    _$SubmitDailyAttendanceInputImpl _value,
    $Res Function(_$SubmitDailyAttendanceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = null, Object? attendanceStudent = null}) {
    return _then(
      _$SubmitDailyAttendanceInputImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        attendanceStudent: null == attendanceStudent
            ? _value._attendanceStudent
            : attendanceStudent // ignore: cast_nullable_to_non_nullable
                  as List<AttendanceStudent>,
      ),
    );
  }
}

/// @nodoc

class _$SubmitDailyAttendanceInputImpl implements _SubmitDailyAttendanceInput {
  const _$SubmitDailyAttendanceInputImpl({
    required this.date,
    required final List<AttendanceStudent> attendanceStudent,
  }) : _attendanceStudent = attendanceStudent;

  @override
  final String date;
  final List<AttendanceStudent> _attendanceStudent;
  @override
  List<AttendanceStudent> get attendanceStudent {
    if (_attendanceStudent is EqualUnmodifiableListView)
      return _attendanceStudent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceStudent);
  }

  @override
  String toString() {
    return 'SubmitDailyAttendanceInput(date: $date, attendanceStudent: $attendanceStudent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDailyAttendanceInputImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(
              other._attendanceStudent,
              _attendanceStudent,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    date,
    const DeepCollectionEquality().hash(_attendanceStudent),
  );

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitDailyAttendanceInputImplCopyWith<_$SubmitDailyAttendanceInputImpl>
  get copyWith =>
      __$$SubmitDailyAttendanceInputImplCopyWithImpl<
        _$SubmitDailyAttendanceInputImpl
      >(this, _$identity);
}

abstract class _SubmitDailyAttendanceInput
    implements SubmitDailyAttendanceInput {
  const factory _SubmitDailyAttendanceInput({
    required final String date,
    required final List<AttendanceStudent> attendanceStudent,
  }) = _$SubmitDailyAttendanceInputImpl;

  @override
  String get date;
  @override
  List<AttendanceStudent> get attendanceStudent;

  /// Create a copy of SubmitDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitDailyAttendanceInputImplCopyWith<_$SubmitDailyAttendanceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitDailyAttendanceOutput {}

/// @nodoc
abstract class $SubmitDailyAttendanceOutputCopyWith<$Res> {
  factory $SubmitDailyAttendanceOutputCopyWith(
    SubmitDailyAttendanceOutput value,
    $Res Function(SubmitDailyAttendanceOutput) then,
  ) =
      _$SubmitDailyAttendanceOutputCopyWithImpl<
        $Res,
        SubmitDailyAttendanceOutput
      >;
}

/// @nodoc
class _$SubmitDailyAttendanceOutputCopyWithImpl<
  $Res,
  $Val extends SubmitDailyAttendanceOutput
>
    implements $SubmitDailyAttendanceOutputCopyWith<$Res> {
  _$SubmitDailyAttendanceOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitDailyAttendanceOutputImplCopyWith<$Res> {
  factory _$$SubmitDailyAttendanceOutputImplCopyWith(
    _$SubmitDailyAttendanceOutputImpl value,
    $Res Function(_$SubmitDailyAttendanceOutputImpl) then,
  ) = __$$SubmitDailyAttendanceOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitDailyAttendanceOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitDailyAttendanceOutputCopyWithImpl<
          $Res,
          _$SubmitDailyAttendanceOutputImpl
        >
    implements _$$SubmitDailyAttendanceOutputImplCopyWith<$Res> {
  __$$SubmitDailyAttendanceOutputImplCopyWithImpl(
    _$SubmitDailyAttendanceOutputImpl _value,
    $Res Function(_$SubmitDailyAttendanceOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitDailyAttendanceOutputImpl
    implements _SubmitDailyAttendanceOutput {
  const _$SubmitDailyAttendanceOutputImpl();

  @override
  String toString() {
    return 'SubmitDailyAttendanceOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitDailyAttendanceOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitDailyAttendanceOutput
    implements SubmitDailyAttendanceOutput {
  const factory _SubmitDailyAttendanceOutput() =
      _$SubmitDailyAttendanceOutputImpl;
}
