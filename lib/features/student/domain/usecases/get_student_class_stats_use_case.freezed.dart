// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_student_class_stats_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetStudentClassStatsInput {
  String get classId => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentClassStatsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentClassStatsInputCopyWith<GetStudentClassStatsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentClassStatsInputCopyWith<$Res> {
  factory $GetStudentClassStatsInputCopyWith(
    GetStudentClassStatsInput value,
    $Res Function(GetStudentClassStatsInput) then,
  ) = _$GetStudentClassStatsInputCopyWithImpl<$Res, GetStudentClassStatsInput>;
  @useResult
  $Res call({String classId});
}

/// @nodoc
class _$GetStudentClassStatsInputCopyWithImpl<
  $Res,
  $Val extends GetStudentClassStatsInput
>
    implements $GetStudentClassStatsInputCopyWith<$Res> {
  _$GetStudentClassStatsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentClassStatsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null}) {
    return _then(
      _value.copyWith(
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetStudentClassStatsInputImplCopyWith<$Res>
    implements $GetStudentClassStatsInputCopyWith<$Res> {
  factory _$$GetStudentClassStatsInputImplCopyWith(
    _$GetStudentClassStatsInputImpl value,
    $Res Function(_$GetStudentClassStatsInputImpl) then,
  ) = __$$GetStudentClassStatsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId});
}

/// @nodoc
class __$$GetStudentClassStatsInputImplCopyWithImpl<$Res>
    extends
        _$GetStudentClassStatsInputCopyWithImpl<
          $Res,
          _$GetStudentClassStatsInputImpl
        >
    implements _$$GetStudentClassStatsInputImplCopyWith<$Res> {
  __$$GetStudentClassStatsInputImplCopyWithImpl(
    _$GetStudentClassStatsInputImpl _value,
    $Res Function(_$GetStudentClassStatsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentClassStatsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null}) {
    return _then(
      _$GetStudentClassStatsInputImpl(
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentClassStatsInputImpl
    with DiagnosticableTreeMixin
    implements _GetStudentClassStatsInput {
  const _$GetStudentClassStatsInputImpl({required this.classId});

  @override
  final String classId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStudentClassStatsInput(classId: $classId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStudentClassStatsInput'))
      ..add(DiagnosticsProperty('classId', classId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentClassStatsInputImpl &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId);

  /// Create a copy of GetStudentClassStatsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentClassStatsInputImplCopyWith<_$GetStudentClassStatsInputImpl>
  get copyWith =>
      __$$GetStudentClassStatsInputImplCopyWithImpl<
        _$GetStudentClassStatsInputImpl
      >(this, _$identity);
}

abstract class _GetStudentClassStatsInput implements GetStudentClassStatsInput {
  const factory _GetStudentClassStatsInput({required final String classId}) =
      _$GetStudentClassStatsInputImpl;

  @override
  String get classId;

  /// Create a copy of GetStudentClassStatsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentClassStatsInputImplCopyWith<_$GetStudentClassStatsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetStudentClassStatsOutput {
  StudentClassStats get stats => throw _privateConstructorUsedError;

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetStudentClassStatsOutputCopyWith<GetStudentClassStatsOutput>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStudentClassStatsOutputCopyWith<$Res> {
  factory $GetStudentClassStatsOutputCopyWith(
    GetStudentClassStatsOutput value,
    $Res Function(GetStudentClassStatsOutput) then,
  ) =
      _$GetStudentClassStatsOutputCopyWithImpl<
        $Res,
        GetStudentClassStatsOutput
      >;
  @useResult
  $Res call({StudentClassStats stats});

  $StudentClassStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$GetStudentClassStatsOutputCopyWithImpl<
  $Res,
  $Val extends GetStudentClassStatsOutput
>
    implements $GetStudentClassStatsOutputCopyWith<$Res> {
  _$GetStudentClassStatsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stats = null}) {
    return _then(
      _value.copyWith(
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as StudentClassStats,
          )
          as $Val,
    );
  }

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentClassStatsCopyWith<$Res> get stats {
    return $StudentClassStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStudentClassStatsOutputImplCopyWith<$Res>
    implements $GetStudentClassStatsOutputCopyWith<$Res> {
  factory _$$GetStudentClassStatsOutputImplCopyWith(
    _$GetStudentClassStatsOutputImpl value,
    $Res Function(_$GetStudentClassStatsOutputImpl) then,
  ) = __$$GetStudentClassStatsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StudentClassStats stats});

  @override
  $StudentClassStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$GetStudentClassStatsOutputImplCopyWithImpl<$Res>
    extends
        _$GetStudentClassStatsOutputCopyWithImpl<
          $Res,
          _$GetStudentClassStatsOutputImpl
        >
    implements _$$GetStudentClassStatsOutputImplCopyWith<$Res> {
  __$$GetStudentClassStatsOutputImplCopyWithImpl(
    _$GetStudentClassStatsOutputImpl _value,
    $Res Function(_$GetStudentClassStatsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stats = null}) {
    return _then(
      _$GetStudentClassStatsOutputImpl(
        null == stats
            ? _value.stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as StudentClassStats,
      ),
    );
  }
}

/// @nodoc

class _$GetStudentClassStatsOutputImpl
    with DiagnosticableTreeMixin
    implements _GetStudentClassStatsOutput {
  const _$GetStudentClassStatsOutputImpl(this.stats);

  @override
  final StudentClassStats stats;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetStudentClassStatsOutput(stats: $stats)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetStudentClassStatsOutput'))
      ..add(DiagnosticsProperty('stats', stats));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStudentClassStatsOutputImpl &&
            (identical(other.stats, stats) || other.stats == stats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stats);

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStudentClassStatsOutputImplCopyWith<_$GetStudentClassStatsOutputImpl>
  get copyWith =>
      __$$GetStudentClassStatsOutputImplCopyWithImpl<
        _$GetStudentClassStatsOutputImpl
      >(this, _$identity);
}

abstract class _GetStudentClassStatsOutput
    implements GetStudentClassStatsOutput {
  const factory _GetStudentClassStatsOutput(final StudentClassStats stats) =
      _$GetStudentClassStatsOutputImpl;

  @override
  StudentClassStats get stats;

  /// Create a copy of GetStudentClassStatsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetStudentClassStatsOutputImplCopyWith<_$GetStudentClassStatsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
