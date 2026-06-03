// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_report_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateReportInput {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get teacherComment => throw _privateConstructorUsedError;
  ReportStatus? get status => throw _privateConstructorUsedError;
  List<String>? get files => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReportInputCopyWith<UpdateReportInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReportInputCopyWith<$Res> {
  factory $UpdateReportInputCopyWith(
    UpdateReportInput value,
    $Res Function(UpdateReportInput) then,
  ) = _$UpdateReportInputCopyWithImpl<$Res, UpdateReportInput>;
  @useResult
  $Res call({
    int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  });
}

/// @nodoc
class _$UpdateReportInputCopyWithImpl<$Res, $Val extends UpdateReportInput>
    implements $UpdateReportInputCopyWith<$Res> {
  _$UpdateReportInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? teacherComment = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            teacherComment: freezed == teacherComment
                ? _value.teacherComment
                : teacherComment // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus?,
            files: freezed == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateReportInputImplCopyWith<$Res>
    implements $UpdateReportInputCopyWith<$Res> {
  factory _$$UpdateReportInputImplCopyWith(
    _$UpdateReportInputImpl value,
    $Res Function(_$UpdateReportInputImpl) then,
  ) = __$$UpdateReportInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  });
}

/// @nodoc
class __$$UpdateReportInputImplCopyWithImpl<$Res>
    extends _$UpdateReportInputCopyWithImpl<$Res, _$UpdateReportInputImpl>
    implements _$$UpdateReportInputImplCopyWith<$Res> {
  __$$UpdateReportInputImplCopyWithImpl(
    _$UpdateReportInputImpl _value,
    $Res Function(_$UpdateReportInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? teacherComment = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(
      _$UpdateReportInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        teacherComment: freezed == teacherComment
            ? _value.teacherComment
            : teacherComment // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus?,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateReportInputImpl implements _UpdateReportInput {
  const _$UpdateReportInputImpl({
    required this.id,
    this.title,
    this.teacherComment,
    this.status,
    final List<String>? files,
  }) : _files = files;

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? teacherComment;
  @override
  final ReportStatus? status;
  final List<String>? _files;
  @override
  List<String>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateReportInput(id: $id, title: $title, teacherComment: $teacherComment, status: $status, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReportInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.teacherComment, teacherComment) ||
                other.teacherComment == teacherComment) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    teacherComment,
    status,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of UpdateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReportInputImplCopyWith<_$UpdateReportInputImpl> get copyWith =>
      __$$UpdateReportInputImplCopyWithImpl<_$UpdateReportInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateReportInput implements UpdateReportInput {
  const factory _UpdateReportInput({
    required final int id,
    final String? title,
    final String? teacherComment,
    final ReportStatus? status,
    final List<String>? files,
  }) = _$UpdateReportInputImpl;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get teacherComment;
  @override
  ReportStatus? get status;
  @override
  List<String>? get files;

  /// Create a copy of UpdateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReportInputImplCopyWith<_$UpdateReportInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateReportOutput {
  Report get report => throw _privateConstructorUsedError;

  /// Create a copy of UpdateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateReportOutputCopyWith<UpdateReportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateReportOutputCopyWith<$Res> {
  factory $UpdateReportOutputCopyWith(
    UpdateReportOutput value,
    $Res Function(UpdateReportOutput) then,
  ) = _$UpdateReportOutputCopyWithImpl<$Res, UpdateReportOutput>;
  @useResult
  $Res call({Report report});

  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class _$UpdateReportOutputCopyWithImpl<$Res, $Val extends UpdateReportOutput>
    implements $UpdateReportOutputCopyWith<$Res> {
  _$UpdateReportOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateReportOutput
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

  /// Create a copy of UpdateReportOutput
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
abstract class _$$UpdateReportOutputImplCopyWith<$Res>
    implements $UpdateReportOutputCopyWith<$Res> {
  factory _$$UpdateReportOutputImplCopyWith(
    _$UpdateReportOutputImpl value,
    $Res Function(_$UpdateReportOutputImpl) then,
  ) = __$$UpdateReportOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Report report});

  @override
  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class __$$UpdateReportOutputImplCopyWithImpl<$Res>
    extends _$UpdateReportOutputCopyWithImpl<$Res, _$UpdateReportOutputImpl>
    implements _$$UpdateReportOutputImplCopyWith<$Res> {
  __$$UpdateReportOutputImplCopyWithImpl(
    _$UpdateReportOutputImpl _value,
    $Res Function(_$UpdateReportOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? report = null}) {
    return _then(
      _$UpdateReportOutputImpl(
        null == report
            ? _value.report
            : report // ignore: cast_nullable_to_non_nullable
                  as Report,
      ),
    );
  }
}

/// @nodoc

class _$UpdateReportOutputImpl implements _UpdateReportOutput {
  const _$UpdateReportOutputImpl(this.report);

  @override
  final Report report;

  @override
  String toString() {
    return 'UpdateReportOutput(report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReportOutputImpl &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  /// Create a copy of UpdateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReportOutputImplCopyWith<_$UpdateReportOutputImpl> get copyWith =>
      __$$UpdateReportOutputImplCopyWithImpl<_$UpdateReportOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateReportOutput implements UpdateReportOutput {
  const factory _UpdateReportOutput(final Report report) =
      _$UpdateReportOutputImpl;

  @override
  Report get report;

  /// Create a copy of UpdateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReportOutputImplCopyWith<_$UpdateReportOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
