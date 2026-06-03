// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_report_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateReportInput {
  int get studentId => throw _privateConstructorUsedError;
  String get reportMonth => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get teacherComment => throw _privateConstructorUsedError;
  List<String>? get files => throw _privateConstructorUsedError;

  /// Create a copy of CreateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReportInputCopyWith<CreateReportInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportInputCopyWith<$Res> {
  factory $CreateReportInputCopyWith(
    CreateReportInput value,
    $Res Function(CreateReportInput) then,
  ) = _$CreateReportInputCopyWithImpl<$Res, CreateReportInput>;
  @useResult
  $Res call({
    int studentId,
    String reportMonth,
    String title,
    String teacherComment,
    List<String>? files,
  });
}

/// @nodoc
class _$CreateReportInputCopyWithImpl<$Res, $Val extends CreateReportInput>
    implements $CreateReportInputCopyWith<$Res> {
  _$CreateReportInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? reportMonth = null,
    Object? title = null,
    Object? teacherComment = null,
    Object? files = freezed,
  }) {
    return _then(
      _value.copyWith(
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as int,
            reportMonth: null == reportMonth
                ? _value.reportMonth
                : reportMonth // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            teacherComment: null == teacherComment
                ? _value.teacherComment
                : teacherComment // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$CreateReportInputImplCopyWith<$Res>
    implements $CreateReportInputCopyWith<$Res> {
  factory _$$CreateReportInputImplCopyWith(
    _$CreateReportInputImpl value,
    $Res Function(_$CreateReportInputImpl) then,
  ) = __$$CreateReportInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int studentId,
    String reportMonth,
    String title,
    String teacherComment,
    List<String>? files,
  });
}

/// @nodoc
class __$$CreateReportInputImplCopyWithImpl<$Res>
    extends _$CreateReportInputCopyWithImpl<$Res, _$CreateReportInputImpl>
    implements _$$CreateReportInputImplCopyWith<$Res> {
  __$$CreateReportInputImplCopyWithImpl(
    _$CreateReportInputImpl _value,
    $Res Function(_$CreateReportInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? reportMonth = null,
    Object? title = null,
    Object? teacherComment = null,
    Object? files = freezed,
  }) {
    return _then(
      _$CreateReportInputImpl(
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as int,
        reportMonth: null == reportMonth
            ? _value.reportMonth
            : reportMonth // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        teacherComment: null == teacherComment
            ? _value.teacherComment
            : teacherComment // ignore: cast_nullable_to_non_nullable
                  as String,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc

class _$CreateReportInputImpl implements _CreateReportInput {
  const _$CreateReportInputImpl({
    required this.studentId,
    required this.reportMonth,
    required this.title,
    required this.teacherComment,
    final List<String>? files,
  }) : _files = files;

  @override
  final int studentId;
  @override
  final String reportMonth;
  @override
  final String title;
  @override
  final String teacherComment;
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
    return 'CreateReportInput(studentId: $studentId, reportMonth: $reportMonth, title: $title, teacherComment: $teacherComment, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportInputImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.reportMonth, reportMonth) ||
                other.reportMonth == reportMonth) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.teacherComment, teacherComment) ||
                other.teacherComment == teacherComment) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    studentId,
    reportMonth,
    title,
    teacherComment,
    const DeepCollectionEquality().hash(_files),
  );

  /// Create a copy of CreateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportInputImplCopyWith<_$CreateReportInputImpl> get copyWith =>
      __$$CreateReportInputImplCopyWithImpl<_$CreateReportInputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateReportInput implements CreateReportInput {
  const factory _CreateReportInput({
    required final int studentId,
    required final String reportMonth,
    required final String title,
    required final String teacherComment,
    final List<String>? files,
  }) = _$CreateReportInputImpl;

  @override
  int get studentId;
  @override
  String get reportMonth;
  @override
  String get title;
  @override
  String get teacherComment;
  @override
  List<String>? get files;

  /// Create a copy of CreateReportInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReportInputImplCopyWith<_$CreateReportInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateReportOutput {
  Report get report => throw _privateConstructorUsedError;

  /// Create a copy of CreateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReportOutputCopyWith<CreateReportOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportOutputCopyWith<$Res> {
  factory $CreateReportOutputCopyWith(
    CreateReportOutput value,
    $Res Function(CreateReportOutput) then,
  ) = _$CreateReportOutputCopyWithImpl<$Res, CreateReportOutput>;
  @useResult
  $Res call({Report report});

  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class _$CreateReportOutputCopyWithImpl<$Res, $Val extends CreateReportOutput>
    implements $CreateReportOutputCopyWith<$Res> {
  _$CreateReportOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReportOutput
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

  /// Create a copy of CreateReportOutput
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
abstract class _$$CreateReportOutputImplCopyWith<$Res>
    implements $CreateReportOutputCopyWith<$Res> {
  factory _$$CreateReportOutputImplCopyWith(
    _$CreateReportOutputImpl value,
    $Res Function(_$CreateReportOutputImpl) then,
  ) = __$$CreateReportOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Report report});

  @override
  $ReportCopyWith<$Res> get report;
}

/// @nodoc
class __$$CreateReportOutputImplCopyWithImpl<$Res>
    extends _$CreateReportOutputCopyWithImpl<$Res, _$CreateReportOutputImpl>
    implements _$$CreateReportOutputImplCopyWith<$Res> {
  __$$CreateReportOutputImplCopyWithImpl(
    _$CreateReportOutputImpl _value,
    $Res Function(_$CreateReportOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? report = null}) {
    return _then(
      _$CreateReportOutputImpl(
        null == report
            ? _value.report
            : report // ignore: cast_nullable_to_non_nullable
                  as Report,
      ),
    );
  }
}

/// @nodoc

class _$CreateReportOutputImpl implements _CreateReportOutput {
  const _$CreateReportOutputImpl(this.report);

  @override
  final Report report;

  @override
  String toString() {
    return 'CreateReportOutput(report: $report)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportOutputImpl &&
            (identical(other.report, report) || other.report == report));
  }

  @override
  int get hashCode => Object.hash(runtimeType, report);

  /// Create a copy of CreateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportOutputImplCopyWith<_$CreateReportOutputImpl> get copyWith =>
      __$$CreateReportOutputImplCopyWithImpl<_$CreateReportOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateReportOutput implements CreateReportOutput {
  const factory _CreateReportOutput(final Report report) =
      _$CreateReportOutputImpl;

  @override
  Report get report;

  /// Create a copy of CreateReportOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReportOutputImplCopyWith<_$CreateReportOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
