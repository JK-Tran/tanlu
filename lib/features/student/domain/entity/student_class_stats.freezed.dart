// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_class_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StudentClassStats {
  int get total => throw _privateConstructorUsedError;
  int get male => throw _privateConstructorUsedError;
  int get female => throw _privateConstructorUsedError;

  /// Create a copy of StudentClassStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentClassStatsCopyWith<StudentClassStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentClassStatsCopyWith<$Res> {
  factory $StudentClassStatsCopyWith(
    StudentClassStats value,
    $Res Function(StudentClassStats) then,
  ) = _$StudentClassStatsCopyWithImpl<$Res, StudentClassStats>;
  @useResult
  $Res call({int total, int male, int female});
}

/// @nodoc
class _$StudentClassStatsCopyWithImpl<$Res, $Val extends StudentClassStats>
    implements $StudentClassStatsCopyWith<$Res> {
  _$StudentClassStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentClassStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? male = null,
    Object? female = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            male: null == male
                ? _value.male
                : male // ignore: cast_nullable_to_non_nullable
                      as int,
            female: null == female
                ? _value.female
                : female // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentClassStatsImplCopyWith<$Res>
    implements $StudentClassStatsCopyWith<$Res> {
  factory _$$StudentClassStatsImplCopyWith(
    _$StudentClassStatsImpl value,
    $Res Function(_$StudentClassStatsImpl) then,
  ) = __$$StudentClassStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int male, int female});
}

/// @nodoc
class __$$StudentClassStatsImplCopyWithImpl<$Res>
    extends _$StudentClassStatsCopyWithImpl<$Res, _$StudentClassStatsImpl>
    implements _$$StudentClassStatsImplCopyWith<$Res> {
  __$$StudentClassStatsImplCopyWithImpl(
    _$StudentClassStatsImpl _value,
    $Res Function(_$StudentClassStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentClassStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? male = null,
    Object? female = null,
  }) {
    return _then(
      _$StudentClassStatsImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        male: null == male
            ? _value.male
            : male // ignore: cast_nullable_to_non_nullable
                  as int,
        female: null == female
            ? _value.female
            : female // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$StudentClassStatsImpl implements _StudentClassStats {
  const _$StudentClassStatsImpl({
    this.total = 0,
    this.male = 0,
    this.female = 0,
  });

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int male;
  @override
  @JsonKey()
  final int female;

  @override
  String toString() {
    return 'StudentClassStats(total: $total, male: $male, female: $female)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentClassStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total, male, female);

  /// Create a copy of StudentClassStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentClassStatsImplCopyWith<_$StudentClassStatsImpl> get copyWith =>
      __$$StudentClassStatsImplCopyWithImpl<_$StudentClassStatsImpl>(
        this,
        _$identity,
      );
}

abstract class _StudentClassStats implements StudentClassStats {
  const factory _StudentClassStats({
    final int total,
    final int male,
    final int female,
  }) = _$StudentClassStatsImpl;

  @override
  int get total;
  @override
  int get male;
  @override
  int get female;

  /// Create a copy of StudentClassStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentClassStatsImplCopyWith<_$StudentClassStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
