// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_report_file_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteReportFileInput {
  int get reportId => throw _privateConstructorUsedError;
  int get fileId => throw _privateConstructorUsedError;

  /// Create a copy of DeleteReportFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteReportFileInputCopyWith<DeleteReportFileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteReportFileInputCopyWith<$Res> {
  factory $DeleteReportFileInputCopyWith(
    DeleteReportFileInput value,
    $Res Function(DeleteReportFileInput) then,
  ) = _$DeleteReportFileInputCopyWithImpl<$Res, DeleteReportFileInput>;
  @useResult
  $Res call({int reportId, int fileId});
}

/// @nodoc
class _$DeleteReportFileInputCopyWithImpl<
  $Res,
  $Val extends DeleteReportFileInput
>
    implements $DeleteReportFileInputCopyWith<$Res> {
  _$DeleteReportFileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteReportFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportId = null, Object? fileId = null}) {
    return _then(
      _value.copyWith(
            reportId: null == reportId
                ? _value.reportId
                : reportId // ignore: cast_nullable_to_non_nullable
                      as int,
            fileId: null == fileId
                ? _value.fileId
                : fileId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteReportFileInputImplCopyWith<$Res>
    implements $DeleteReportFileInputCopyWith<$Res> {
  factory _$$DeleteReportFileInputImplCopyWith(
    _$DeleteReportFileInputImpl value,
    $Res Function(_$DeleteReportFileInputImpl) then,
  ) = __$$DeleteReportFileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int reportId, int fileId});
}

/// @nodoc
class __$$DeleteReportFileInputImplCopyWithImpl<$Res>
    extends
        _$DeleteReportFileInputCopyWithImpl<$Res, _$DeleteReportFileInputImpl>
    implements _$$DeleteReportFileInputImplCopyWith<$Res> {
  __$$DeleteReportFileInputImplCopyWithImpl(
    _$DeleteReportFileInputImpl _value,
    $Res Function(_$DeleteReportFileInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteReportFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportId = null, Object? fileId = null}) {
    return _then(
      _$DeleteReportFileInputImpl(
        reportId: null == reportId
            ? _value.reportId
            : reportId // ignore: cast_nullable_to_non_nullable
                  as int,
        fileId: null == fileId
            ? _value.fileId
            : fileId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteReportFileInputImpl implements _DeleteReportFileInput {
  const _$DeleteReportFileInputImpl({
    required this.reportId,
    required this.fileId,
  });

  @override
  final int reportId;
  @override
  final int fileId;

  @override
  String toString() {
    return 'DeleteReportFileInput(reportId: $reportId, fileId: $fileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReportFileInputImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.fileId, fileId) || other.fileId == fileId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId, fileId);

  /// Create a copy of DeleteReportFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReportFileInputImplCopyWith<_$DeleteReportFileInputImpl>
  get copyWith =>
      __$$DeleteReportFileInputImplCopyWithImpl<_$DeleteReportFileInputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteReportFileInput implements DeleteReportFileInput {
  const factory _DeleteReportFileInput({
    required final int reportId,
    required final int fileId,
  }) = _$DeleteReportFileInputImpl;

  @override
  int get reportId;
  @override
  int get fileId;

  /// Create a copy of DeleteReportFileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteReportFileInputImplCopyWith<_$DeleteReportFileInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteReportFileOutput {}

/// @nodoc
abstract class $DeleteReportFileOutputCopyWith<$Res> {
  factory $DeleteReportFileOutputCopyWith(
    DeleteReportFileOutput value,
    $Res Function(DeleteReportFileOutput) then,
  ) = _$DeleteReportFileOutputCopyWithImpl<$Res, DeleteReportFileOutput>;
}

/// @nodoc
class _$DeleteReportFileOutputCopyWithImpl<
  $Res,
  $Val extends DeleteReportFileOutput
>
    implements $DeleteReportFileOutputCopyWith<$Res> {
  _$DeleteReportFileOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteReportFileOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeleteReportFileOutputImplCopyWith<$Res> {
  factory _$$DeleteReportFileOutputImplCopyWith(
    _$DeleteReportFileOutputImpl value,
    $Res Function(_$DeleteReportFileOutputImpl) then,
  ) = __$$DeleteReportFileOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteReportFileOutputImplCopyWithImpl<$Res>
    extends
        _$DeleteReportFileOutputCopyWithImpl<$Res, _$DeleteReportFileOutputImpl>
    implements _$$DeleteReportFileOutputImplCopyWith<$Res> {
  __$$DeleteReportFileOutputImplCopyWithImpl(
    _$DeleteReportFileOutputImpl _value,
    $Res Function(_$DeleteReportFileOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteReportFileOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteReportFileOutputImpl implements _DeleteReportFileOutput {
  const _$DeleteReportFileOutputImpl();

  @override
  String toString() {
    return 'DeleteReportFileOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReportFileOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DeleteReportFileOutput implements DeleteReportFileOutput {
  const factory _DeleteReportFileOutput() = _$DeleteReportFileOutputImpl;
}
