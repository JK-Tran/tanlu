// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_check_out_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitCheckOutInput {
  String get date => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get checkOutTime => throw _privateConstructorUsedError;

  /// Create a copy of SubmitCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitCheckOutInputCopyWith<SubmitCheckOutInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitCheckOutInputCopyWith<$Res> {
  factory $SubmitCheckOutInputCopyWith(
    SubmitCheckOutInput value,
    $Res Function(SubmitCheckOutInput) then,
  ) = _$SubmitCheckOutInputCopyWithImpl<$Res, SubmitCheckOutInput>;
  @useResult
  $Res call({String date, String studentId, String checkOutTime});
}

/// @nodoc
class _$SubmitCheckOutInputCopyWithImpl<$Res, $Val extends SubmitCheckOutInput>
    implements $SubmitCheckOutInputCopyWith<$Res> {
  _$SubmitCheckOutInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? studentId = null,
    Object? checkOutTime = null,
  }) {
    return _then(
      _value.copyWith(
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            checkOutTime: null == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitCheckOutInputImplCopyWith<$Res>
    implements $SubmitCheckOutInputCopyWith<$Res> {
  factory _$$SubmitCheckOutInputImplCopyWith(
    _$SubmitCheckOutInputImpl value,
    $Res Function(_$SubmitCheckOutInputImpl) then,
  ) = __$$SubmitCheckOutInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String studentId, String checkOutTime});
}

/// @nodoc
class __$$SubmitCheckOutInputImplCopyWithImpl<$Res>
    extends _$SubmitCheckOutInputCopyWithImpl<$Res, _$SubmitCheckOutInputImpl>
    implements _$$SubmitCheckOutInputImplCopyWith<$Res> {
  __$$SubmitCheckOutInputImplCopyWithImpl(
    _$SubmitCheckOutInputImpl _value,
    $Res Function(_$SubmitCheckOutInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? studentId = null,
    Object? checkOutTime = null,
  }) {
    return _then(
      _$SubmitCheckOutInputImpl(
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        checkOutTime: null == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitCheckOutInputImpl implements _SubmitCheckOutInput {
  const _$SubmitCheckOutInputImpl({
    required this.date,
    required this.studentId,
    required this.checkOutTime,
  });

  @override
  final String date;
  @override
  final String studentId;
  @override
  final String checkOutTime;

  @override
  String toString() {
    return 'SubmitCheckOutInput(date: $date, studentId: $studentId, checkOutTime: $checkOutTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCheckOutInputImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, studentId, checkOutTime);

  /// Create a copy of SubmitCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitCheckOutInputImplCopyWith<_$SubmitCheckOutInputImpl> get copyWith =>
      __$$SubmitCheckOutInputImplCopyWithImpl<_$SubmitCheckOutInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitCheckOutInput implements SubmitCheckOutInput {
  const factory _SubmitCheckOutInput({
    required final String date,
    required final String studentId,
    required final String checkOutTime,
  }) = _$SubmitCheckOutInputImpl;

  @override
  String get date;
  @override
  String get studentId;
  @override
  String get checkOutTime;

  /// Create a copy of SubmitCheckOutInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitCheckOutInputImplCopyWith<_$SubmitCheckOutInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitCheckOutOutput {}

/// @nodoc
abstract class $SubmitCheckOutOutputCopyWith<$Res> {
  factory $SubmitCheckOutOutputCopyWith(
    SubmitCheckOutOutput value,
    $Res Function(SubmitCheckOutOutput) then,
  ) = _$SubmitCheckOutOutputCopyWithImpl<$Res, SubmitCheckOutOutput>;
}

/// @nodoc
class _$SubmitCheckOutOutputCopyWithImpl<
  $Res,
  $Val extends SubmitCheckOutOutput
>
    implements $SubmitCheckOutOutputCopyWith<$Res> {
  _$SubmitCheckOutOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitCheckOutOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitCheckOutOutputImplCopyWith<$Res> {
  factory _$$SubmitCheckOutOutputImplCopyWith(
    _$SubmitCheckOutOutputImpl value,
    $Res Function(_$SubmitCheckOutOutputImpl) then,
  ) = __$$SubmitCheckOutOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitCheckOutOutputImplCopyWithImpl<$Res>
    extends _$SubmitCheckOutOutputCopyWithImpl<$Res, _$SubmitCheckOutOutputImpl>
    implements _$$SubmitCheckOutOutputImplCopyWith<$Res> {
  __$$SubmitCheckOutOutputImplCopyWithImpl(
    _$SubmitCheckOutOutputImpl _value,
    $Res Function(_$SubmitCheckOutOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitCheckOutOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitCheckOutOutputImpl implements _SubmitCheckOutOutput {
  const _$SubmitCheckOutOutputImpl();

  @override
  String toString() {
    return 'SubmitCheckOutOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitCheckOutOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitCheckOutOutput implements SubmitCheckOutOutput {
  const factory _SubmitCheckOutOutput() = _$SubmitCheckOutOutputImpl;
}
