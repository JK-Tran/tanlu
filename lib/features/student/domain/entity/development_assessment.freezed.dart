// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'development_assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DevelopmentAssessment {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of DevelopmentAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DevelopmentAssessmentCopyWith<DevelopmentAssessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevelopmentAssessmentCopyWith<$Res> {
  factory $DevelopmentAssessmentCopyWith(
    DevelopmentAssessment value,
    $Res Function(DevelopmentAssessment) then,
  ) = _$DevelopmentAssessmentCopyWithImpl<$Res, DevelopmentAssessment>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$DevelopmentAssessmentCopyWithImpl<
  $Res,
  $Val extends DevelopmentAssessment
>
    implements $DevelopmentAssessmentCopyWith<$Res> {
  _$DevelopmentAssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DevelopmentAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DevelopmentAssessmentImplCopyWith<$Res>
    implements $DevelopmentAssessmentCopyWith<$Res> {
  factory _$$DevelopmentAssessmentImplCopyWith(
    _$DevelopmentAssessmentImpl value,
    $Res Function(_$DevelopmentAssessmentImpl) then,
  ) = __$$DevelopmentAssessmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$DevelopmentAssessmentImplCopyWithImpl<$Res>
    extends
        _$DevelopmentAssessmentCopyWithImpl<$Res, _$DevelopmentAssessmentImpl>
    implements _$$DevelopmentAssessmentImplCopyWith<$Res> {
  __$$DevelopmentAssessmentImplCopyWithImpl(
    _$DevelopmentAssessmentImpl _value,
    $Res Function(_$DevelopmentAssessmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DevelopmentAssessment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _$DevelopmentAssessmentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DevelopmentAssessmentImpl implements _DevelopmentAssessment {
  const _$DevelopmentAssessmentImpl({this.id = 0, this.title = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'DevelopmentAssessment(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevelopmentAssessmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of DevelopmentAssessment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DevelopmentAssessmentImplCopyWith<_$DevelopmentAssessmentImpl>
  get copyWith =>
      __$$DevelopmentAssessmentImplCopyWithImpl<_$DevelopmentAssessmentImpl>(
        this,
        _$identity,
      );
}

abstract class _DevelopmentAssessment implements DevelopmentAssessment {
  const factory _DevelopmentAssessment({final int id, final String title}) =
      _$DevelopmentAssessmentImpl;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of DevelopmentAssessment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DevelopmentAssessmentImplCopyWith<_$DevelopmentAssessmentImpl>
  get copyWith => throw _privateConstructorUsedError;
}
