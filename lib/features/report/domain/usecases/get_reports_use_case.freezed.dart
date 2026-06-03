// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_reports_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetReportsInput {
  String? get reportMonth => throw _privateConstructorUsedError;

  /// Create a copy of GetReportsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetReportsInputCopyWith<GetReportsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReportsInputCopyWith<$Res> {
  factory $GetReportsInputCopyWith(
    GetReportsInput value,
    $Res Function(GetReportsInput) then,
  ) = _$GetReportsInputCopyWithImpl<$Res, GetReportsInput>;
  @useResult
  $Res call({String? reportMonth});
}

/// @nodoc
class _$GetReportsInputCopyWithImpl<$Res, $Val extends GetReportsInput>
    implements $GetReportsInputCopyWith<$Res> {
  _$GetReportsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetReportsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportMonth = freezed}) {
    return _then(
      _value.copyWith(
            reportMonth: freezed == reportMonth
                ? _value.reportMonth
                : reportMonth // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetReportsInputImplCopyWith<$Res>
    implements $GetReportsInputCopyWith<$Res> {
  factory _$$GetReportsInputImplCopyWith(
    _$GetReportsInputImpl value,
    $Res Function(_$GetReportsInputImpl) then,
  ) = __$$GetReportsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reportMonth});
}

/// @nodoc
class __$$GetReportsInputImplCopyWithImpl<$Res>
    extends _$GetReportsInputCopyWithImpl<$Res, _$GetReportsInputImpl>
    implements _$$GetReportsInputImplCopyWith<$Res> {
  __$$GetReportsInputImplCopyWithImpl(
    _$GetReportsInputImpl _value,
    $Res Function(_$GetReportsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetReportsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportMonth = freezed}) {
    return _then(
      _$GetReportsInputImpl(
        reportMonth: freezed == reportMonth
            ? _value.reportMonth
            : reportMonth // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$GetReportsInputImpl implements _GetReportsInput {
  const _$GetReportsInputImpl({this.reportMonth});

  @override
  final String? reportMonth;

  @override
  String toString() {
    return 'GetReportsInput(reportMonth: $reportMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReportsInputImpl &&
            (identical(other.reportMonth, reportMonth) ||
                other.reportMonth == reportMonth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportMonth);

  /// Create a copy of GetReportsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReportsInputImplCopyWith<_$GetReportsInputImpl> get copyWith =>
      __$$GetReportsInputImplCopyWithImpl<_$GetReportsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetReportsInput implements GetReportsInput {
  const factory _GetReportsInput({final String? reportMonth}) =
      _$GetReportsInputImpl;

  @override
  String? get reportMonth;

  /// Create a copy of GetReportsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReportsInputImplCopyWith<_$GetReportsInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetReportsOutput {
  List<Report> get reports => throw _privateConstructorUsedError;

  /// Create a copy of GetReportsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetReportsOutputCopyWith<GetReportsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReportsOutputCopyWith<$Res> {
  factory $GetReportsOutputCopyWith(
    GetReportsOutput value,
    $Res Function(GetReportsOutput) then,
  ) = _$GetReportsOutputCopyWithImpl<$Res, GetReportsOutput>;
  @useResult
  $Res call({List<Report> reports});
}

/// @nodoc
class _$GetReportsOutputCopyWithImpl<$Res, $Val extends GetReportsOutput>
    implements $GetReportsOutputCopyWith<$Res> {
  _$GetReportsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetReportsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reports = null}) {
    return _then(
      _value.copyWith(
            reports: null == reports
                ? _value.reports
                : reports // ignore: cast_nullable_to_non_nullable
                      as List<Report>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetReportsOutputImplCopyWith<$Res>
    implements $GetReportsOutputCopyWith<$Res> {
  factory _$$GetReportsOutputImplCopyWith(
    _$GetReportsOutputImpl value,
    $Res Function(_$GetReportsOutputImpl) then,
  ) = __$$GetReportsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Report> reports});
}

/// @nodoc
class __$$GetReportsOutputImplCopyWithImpl<$Res>
    extends _$GetReportsOutputCopyWithImpl<$Res, _$GetReportsOutputImpl>
    implements _$$GetReportsOutputImplCopyWith<$Res> {
  __$$GetReportsOutputImplCopyWithImpl(
    _$GetReportsOutputImpl _value,
    $Res Function(_$GetReportsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetReportsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reports = null}) {
    return _then(
      _$GetReportsOutputImpl(
        null == reports
            ? _value._reports
            : reports // ignore: cast_nullable_to_non_nullable
                  as List<Report>,
      ),
    );
  }
}

/// @nodoc

class _$GetReportsOutputImpl implements _GetReportsOutput {
  const _$GetReportsOutputImpl(final List<Report> reports) : _reports = reports;

  final List<Report> _reports;
  @override
  List<Report> get reports {
    if (_reports is EqualUnmodifiableListView) return _reports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reports);
  }

  @override
  String toString() {
    return 'GetReportsOutput(reports: $reports)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReportsOutputImpl &&
            const DeepCollectionEquality().equals(other._reports, _reports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reports));

  /// Create a copy of GetReportsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReportsOutputImplCopyWith<_$GetReportsOutputImpl> get copyWith =>
      __$$GetReportsOutputImplCopyWithImpl<_$GetReportsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetReportsOutput implements GetReportsOutput {
  const factory _GetReportsOutput(final List<Report> reports) =
      _$GetReportsOutputImpl;

  @override
  List<Report> get reports;

  /// Create a copy of GetReportsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReportsOutputImplCopyWith<_$GetReportsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
