// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_report_by_id_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetReportByIdInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of GetReportByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetReportByIdInputCopyWith<GetReportByIdInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReportByIdInputCopyWith<$Res> {
  factory $GetReportByIdInputCopyWith(
    GetReportByIdInput value,
    $Res Function(GetReportByIdInput) then,
  ) = _$GetReportByIdInputCopyWithImpl<$Res, GetReportByIdInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetReportByIdInputCopyWithImpl<$Res, $Val extends GetReportByIdInput>
    implements $GetReportByIdInputCopyWith<$Res> {
  _$GetReportByIdInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetReportByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetReportByIdInputImplCopyWith<$Res>
    implements $GetReportByIdInputCopyWith<$Res> {
  factory _$$GetReportByIdInputImplCopyWith(
    _$GetReportByIdInputImpl value,
    $Res Function(_$GetReportByIdInputImpl) then,
  ) = __$$GetReportByIdInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetReportByIdInputImplCopyWithImpl<$Res>
    extends _$GetReportByIdInputCopyWithImpl<$Res, _$GetReportByIdInputImpl>
    implements _$$GetReportByIdInputImplCopyWith<$Res> {
  __$$GetReportByIdInputImplCopyWithImpl(
    _$GetReportByIdInputImpl _value,
    $Res Function(_$GetReportByIdInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetReportByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetReportByIdInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetReportByIdInputImpl implements _GetReportByIdInput {
  const _$GetReportByIdInputImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'GetReportByIdInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReportByIdInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetReportByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReportByIdInputImplCopyWith<_$GetReportByIdInputImpl> get copyWith =>
      __$$GetReportByIdInputImplCopyWithImpl<_$GetReportByIdInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetReportByIdInput implements GetReportByIdInput {
  const factory _GetReportByIdInput({required final int id}) =
      _$GetReportByIdInputImpl;

  @override
  int get id;

  /// Create a copy of GetReportByIdInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReportByIdInputImplCopyWith<_$GetReportByIdInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetReportByIdOutput {
  Report get report => throw _privateConstructorUsedError;

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetReportByIdOutputCopyWith<GetReportByIdOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReportByIdOutputCopyWith<$Res> {
  factory $GetReportByIdOutputCopyWith(
    GetReportByIdOutput value,
    $Res Function(GetReportByIdOutput) then,
  ) = _$GetReportByIdOutputCopyWithImpl<$Res, GetReportByIdOutput>;
  @useResult
  $Res call({Report report});

  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class _$GetReportByIdOutputCopyWithImpl<$Res, $Val extends GetReportByIdOutput>
    implements $GetReportByIdOutputCopyWith<$Res> {
  _$GetReportByIdOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? report = null}) {
    return _then(
      _value.copyWith(
            report: null == report
                ? _value.report
                : report // ignore: cast_nullable_to_non_nullable
                      as Report,
          )
          as $Val,
    );
  }

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReportCopyWith<$Res> get report {
    return $ReportCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetReportByIdOutputImplCopyWith<$Res>
    implements $GetReportByIdOutputCopyWith<$Res> {
  factory _$$GetReportByIdOutputImplCopyWith(
    _$GetReportByIdOutputImpl value,
    $Res Function(_$GetReportByIdOutputImpl) then,
  ) = __$$GetReportByIdOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Report report});

  @override
  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class __$$GetReportByIdOutputImplCopyWithImpl<$Res>
    extends _$GetReportByIdOutputCopyWithImpl<$Res, _$GetReportByIdOutputImpl>
    implements _$$GetReportByIdOutputImplCopyWith<$Res> {
  __$$GetReportByIdOutputImplCopyWithImpl(
    _$GetReportByIdOutputImpl _value,
    $Res Function(_$GetReportByIdOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? report = null}) {
    return _then(
      _$GetReportByIdOutputImpl(
        null == report
            ? _value.report
            : report // ignore: cast_nullable_to_non_nullable
                  as Report,
      ),
    );
  }
}

/// @nodoc

class _$GetReportByIdOutputImpl implements _GetReportByIdOutput {
  const _$GetReportByIdOutputImpl(this.report);

  @override
  final Report report;

  @override
  String toString() {
    return 'GetReportByIdOutput(report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReportByIdOutputImpl &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReportByIdOutputImplCopyWith<_$GetReportByIdOutputImpl> get copyWith =>
      __$$GetReportByIdOutputImplCopyWithImpl<_$GetReportByIdOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetReportByIdOutput implements GetReportByIdOutput {
  const factory _GetReportByIdOutput(final Report report) =
      _$GetReportByIdOutputImpl;

  @override
  Report get report;

  /// Create a copy of GetReportByIdOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReportByIdOutputImplCopyWith<_$GetReportByIdOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
