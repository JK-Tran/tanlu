// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_daily_attendance_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetDailyAttendanceInput {
  String? get date => throw _privateConstructorUsedError;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyAttendanceInputCopyWith<GetDailyAttendanceInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyAttendanceInputCopyWith<$Res> {
  factory $GetDailyAttendanceInputCopyWith(
    GetDailyAttendanceInput value,
    $Res Function(GetDailyAttendanceInput) then,
  ) = _$GetDailyAttendanceInputCopyWithImpl<$Res, GetDailyAttendanceInput>;
  @useResult
  $Res call({String? date});
}

/// @nodoc
class _$GetDailyAttendanceInputCopyWithImpl<
  $Res,
  $Val extends GetDailyAttendanceInput
>
    implements $GetDailyAttendanceInputCopyWith<$Res> {
  _$GetDailyAttendanceInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _value.copyWith(
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetDailyAttendanceInputImplCopyWith<$Res>
    implements $GetDailyAttendanceInputCopyWith<$Res> {
  factory _$$GetDailyAttendanceInputImplCopyWith(
    _$GetDailyAttendanceInputImpl value,
    $Res Function(_$GetDailyAttendanceInputImpl) then,
  ) = __$$GetDailyAttendanceInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date});
}

/// @nodoc
class __$$GetDailyAttendanceInputImplCopyWithImpl<$Res>
    extends
        _$GetDailyAttendanceInputCopyWithImpl<
          $Res,
          _$GetDailyAttendanceInputImpl
        >
    implements _$$GetDailyAttendanceInputImplCopyWith<$Res> {
  __$$GetDailyAttendanceInputImplCopyWithImpl(
    _$GetDailyAttendanceInputImpl _value,
    $Res Function(_$GetDailyAttendanceInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? date = freezed}) {
    return _then(
      _$GetDailyAttendanceInputImpl(
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GetDailyAttendanceInputImpl implements _GetDailyAttendanceInput {
  const _$GetDailyAttendanceInputImpl({this.date});

  @override
  final String? date;

  @override
  String toString() {
    return 'GetDailyAttendanceInput(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyAttendanceInputImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyAttendanceInputImplCopyWith<_$GetDailyAttendanceInputImpl>
  get copyWith =>
      __$$GetDailyAttendanceInputImplCopyWithImpl<
        _$GetDailyAttendanceInputImpl
      >(this, _$identity);
}

abstract class _GetDailyAttendanceInput implements GetDailyAttendanceInput {
  const factory _GetDailyAttendanceInput({final String? date}) =
      _$GetDailyAttendanceInputImpl;

  @override
  String? get date;

  /// Create a copy of GetDailyAttendanceInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyAttendanceInputImplCopyWith<_$GetDailyAttendanceInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetDailyAttendanceOutput {
  DailyAttendanceResult get dailyAttendance =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDailyAttendanceOutputCopyWith<GetDailyAttendanceOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDailyAttendanceOutputCopyWith<$Res> {
  factory $GetDailyAttendanceOutputCopyWith(
    GetDailyAttendanceOutput value,
    $Res Function(GetDailyAttendanceOutput) then,
  ) = _$GetDailyAttendanceOutputCopyWithImpl<$Res, GetDailyAttendanceOutput>;
  @useResult
  $Res call({DailyAttendanceResult dailyAttendance});

  $DailyAttendanceResultCopyWith<$Res> get dailyAttendance;
}

/// @nodoc
class _$GetDailyAttendanceOutputCopyWithImpl<
  $Res,
  $Val extends GetDailyAttendanceOutput
>
    implements $GetDailyAttendanceOutputCopyWith<$Res> {
  _$GetDailyAttendanceOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dailyAttendance = null}) {
    return _then(
      _value.copyWith(
            dailyAttendance: null == dailyAttendance
                ? _value.dailyAttendance
                : dailyAttendance // ignore: cast_nullable_to_non_nullable
                      as DailyAttendanceResult,
          )
          as $Val,
    );
  }

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DailyAttendanceResultCopyWith<$Res> get dailyAttendance {
    return $DailyAttendanceResultCopyWith<$Res>(_value.dailyAttendance, (
      value,
    ) {
      return _then(_value.copyWith(dailyAttendance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetDailyAttendanceOutputImplCopyWith<$Res>
    implements $GetDailyAttendanceOutputCopyWith<$Res> {
  factory _$$GetDailyAttendanceOutputImplCopyWith(
    _$GetDailyAttendanceOutputImpl value,
    $Res Function(_$GetDailyAttendanceOutputImpl) then,
  ) = __$$GetDailyAttendanceOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DailyAttendanceResult dailyAttendance});

  @override
  $DailyAttendanceResultCopyWith<$Res> get dailyAttendance;
}

/// @nodoc
class __$$GetDailyAttendanceOutputImplCopyWithImpl<$Res>
    extends
        _$GetDailyAttendanceOutputCopyWithImpl<
          $Res,
          _$GetDailyAttendanceOutputImpl
        >
    implements _$$GetDailyAttendanceOutputImplCopyWith<$Res> {
  __$$GetDailyAttendanceOutputImplCopyWithImpl(
    _$GetDailyAttendanceOutputImpl _value,
    $Res Function(_$GetDailyAttendanceOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? dailyAttendance = null}) {
    return _then(
      _$GetDailyAttendanceOutputImpl(
        dailyAttendance: null == dailyAttendance
            ? _value.dailyAttendance
            : dailyAttendance // ignore: cast_nullable_to_non_nullable
                  as DailyAttendanceResult,
      ),
    );
  }
}

/// @nodoc

class _$GetDailyAttendanceOutputImpl implements _GetDailyAttendanceOutput {
  const _$GetDailyAttendanceOutputImpl({required this.dailyAttendance});

  @override
  final DailyAttendanceResult dailyAttendance;

  @override
  String toString() {
    return 'GetDailyAttendanceOutput(dailyAttendance: $dailyAttendance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDailyAttendanceOutputImpl &&
            (identical(other.dailyAttendance, dailyAttendance) ||
                other.dailyAttendance == dailyAttendance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dailyAttendance);

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDailyAttendanceOutputImplCopyWith<_$GetDailyAttendanceOutputImpl>
  get copyWith =>
      __$$GetDailyAttendanceOutputImplCopyWithImpl<
        _$GetDailyAttendanceOutputImpl
      >(this, _$identity);
}

abstract class _GetDailyAttendanceOutput implements GetDailyAttendanceOutput {
  const factory _GetDailyAttendanceOutput({
    required final DailyAttendanceResult dailyAttendance,
  }) = _$GetDailyAttendanceOutputImpl;

  @override
  DailyAttendanceResult get dailyAttendance;

  /// Create a copy of GetDailyAttendanceOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDailyAttendanceOutputImplCopyWith<_$GetDailyAttendanceOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
