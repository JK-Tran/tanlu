// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_student_history_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetStudentHistoryInput {
  String get studentId => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentHistoryInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentHistoryInputCopyWith<GetStudentHistoryInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentHistoryInputCopyWith<$Res> {
  factory $GetStudentHistoryInputCopyWith(
    GetStudentHistoryInput value,
    $Res Function(GetStudentHistoryInput) then,
  ) = _$GetStudentHistoryInputCopyWithImpl<$Res, GetStudentHistoryInput>;
  @useResult
  $Res call({String studentId, DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$GetStudentHistoryInputCopyWithImpl<
  $Res,
  $Val extends GetStudentHistoryInput
>
    implements $GetStudentHistoryInputCopyWith<$Res> {
  _$GetStudentHistoryInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentHistoryInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(
      _value.copyWith(
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetStudentHistoryInputImplCopyWith<$Res>
    implements $GetStudentHistoryInputCopyWith<$Res> {
  factory _$$GetStudentHistoryInputImplCopyWith(
    _$GetStudentHistoryInputImpl value,
    $Res Function(_$GetStudentHistoryInputImpl) then,
  ) = __$$GetStudentHistoryInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String studentId, DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$GetStudentHistoryInputImplCopyWithImpl<$Res>
    extends
        _$GetStudentHistoryInputCopyWithImpl<$Res, _$GetStudentHistoryInputImpl>
    implements _$$GetStudentHistoryInputImplCopyWith<$Res> {
  __$$GetStudentHistoryInputImplCopyWithImpl(
    _$GetStudentHistoryInputImpl _value,
    $Res Function(_$GetStudentHistoryInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentHistoryInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(
      _$GetStudentHistoryInputImpl(
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentHistoryInputImpl
    with DiagnosticableTreeMixin
    implements _GetStudentHistoryInput {
  const _$GetStudentHistoryInputImpl({
    required this.studentId,
    required this.startDate,
    required this.endDate,
  });

  @override
  final String studentId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStudentHistoryInput(studentId: $studentId, startDate: $startDate, endDate: $endDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStudentHistoryInput'))
      ..add(DiagnosticsProperty('studentId', studentId))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentHistoryInputImpl &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId, startDate, endDate);

  /// Create a copy of GetStudentHistoryInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentHistoryInputImplCopyWith<_$GetStudentHistoryInputImpl>
  get copyWith =>
      __$$GetStudentHistoryInputImplCopyWithImpl<_$GetStudentHistoryInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetStudentHistoryInput implements GetStudentHistoryInput {
  const factory _GetStudentHistoryInput({
    required final String studentId,
    required final DateTime startDate,
    required final DateTime endDate,
  }) = _$GetStudentHistoryInputImpl;

  @override
  String get studentId;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of GetStudentHistoryInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentHistoryInputImplCopyWith<_$GetStudentHistoryInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetStudentHistoryOutput {
  List<Attendance> get attendances => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentHistoryOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentHistoryOutputCopyWith<GetStudentHistoryOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentHistoryOutputCopyWith<$Res> {
  factory $GetStudentHistoryOutputCopyWith(
    GetStudentHistoryOutput value,
    $Res Function(GetStudentHistoryOutput) then,
  ) = _$GetStudentHistoryOutputCopyWithImpl<$Res, GetStudentHistoryOutput>;
  @useResult
  $Res call({List<Attendance> attendances});
}

/// @nodoc
class _$GetStudentHistoryOutputCopyWithImpl<
  $Res,
  $Val extends GetStudentHistoryOutput
>
    implements $GetStudentHistoryOutputCopyWith<$Res> {
  _$GetStudentHistoryOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentHistoryOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attendances = null}) {
    return _then(
      _value.copyWith(
            attendances: null == attendances
                ? _value.attendances
                : attendances // ignore: cast_nullable_to_non_nullable
                      as List<Attendance>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetStudentHistoryOutputImplCopyWith<$Res>
    implements $GetStudentHistoryOutputCopyWith<$Res> {
  factory _$$GetStudentHistoryOutputImplCopyWith(
    _$GetStudentHistoryOutputImpl value,
    $Res Function(_$GetStudentHistoryOutputImpl) then,
  ) = __$$GetStudentHistoryOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Attendance> attendances});
}

/// @nodoc
class __$$GetStudentHistoryOutputImplCopyWithImpl<$Res>
    extends
        _$GetStudentHistoryOutputCopyWithImpl<
          $Res,
          _$GetStudentHistoryOutputImpl
        >
    implements _$$GetStudentHistoryOutputImplCopyWith<$Res> {
  __$$GetStudentHistoryOutputImplCopyWithImpl(
    _$GetStudentHistoryOutputImpl _value,
    $Res Function(_$GetStudentHistoryOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentHistoryOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? attendances = null}) {
    return _then(
      _$GetStudentHistoryOutputImpl(
        null == attendances
            ? _value._attendances
            : attendances // ignore: cast_nullable_to_non_nullable
                  as List<Attendance>,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentHistoryOutputImpl extends _GetStudentHistoryOutput
    with DiagnosticableTreeMixin {
  const _$GetStudentHistoryOutputImpl(final List<Attendance> attendances)
    : _attendances = attendances,
      super._();

  final List<Attendance> _attendances;
  @override
  List<Attendance> get attendances {
    if (_attendances is EqualUnmodifiableListView) return _attendances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendances);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStudentHistoryOutput(attendances: $attendances)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStudentHistoryOutput'))
      ..add(DiagnosticsProperty('attendances', attendances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentHistoryOutputImpl &&
            const DeepCollectionEquality().equals(
              other._attendances,
              _attendances,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_attendances),
  );

  /// Create a copy of GetStudentHistoryOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentHistoryOutputImplCopyWith<_$GetStudentHistoryOutputImpl>
  get copyWith =>
      __$$GetStudentHistoryOutputImplCopyWithImpl<
        _$GetStudentHistoryOutputImpl
      >(this, _$identity);
}

abstract class _GetStudentHistoryOutput extends GetStudentHistoryOutput {
  const factory _GetStudentHistoryOutput(final List<Attendance> attendances) =
      _$GetStudentHistoryOutputImpl;
  const _GetStudentHistoryOutput._() : super._();

  @override
  List<Attendance> get attendances;

  /// Create a copy of GetStudentHistoryOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentHistoryOutputImplCopyWith<_$GetStudentHistoryOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
