// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'screening_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ScreeningTest {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of ScreeningTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScreeningTestCopyWith<ScreeningTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreeningTestCopyWith<$Res> {
  factory $ScreeningTestCopyWith(
    ScreeningTest value,
    $Res Function(ScreeningTest) then,
  ) = _$ScreeningTestCopyWithImpl<$Res, ScreeningTest>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$ScreeningTestCopyWithImpl<$Res, $Val extends ScreeningTest>
    implements $ScreeningTestCopyWith<$Res> {
  _$ScreeningTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScreeningTest
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
abstract class _$$ScreeningTestImplCopyWith<$Res>
    implements $ScreeningTestCopyWith<$Res> {
  factory _$$ScreeningTestImplCopyWith(
    _$ScreeningTestImpl value,
    $Res Function(_$ScreeningTestImpl) then,
  ) = __$$ScreeningTestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$ScreeningTestImplCopyWithImpl<$Res>
    extends _$ScreeningTestCopyWithImpl<$Res, _$ScreeningTestImpl>
    implements _$$ScreeningTestImplCopyWith<$Res> {
  __$$ScreeningTestImplCopyWithImpl(
    _$ScreeningTestImpl _value,
    $Res Function(_$ScreeningTestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ScreeningTest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _$ScreeningTestImpl(
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

class _$ScreeningTestImpl implements _ScreeningTest {
  const _$ScreeningTestImpl({this.id = 0, this.title = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ScreeningTest(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreeningTestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of ScreeningTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreeningTestImplCopyWith<_$ScreeningTestImpl> get copyWith =>
      __$$ScreeningTestImplCopyWithImpl<_$ScreeningTestImpl>(this, _$identity);
}

abstract class _ScreeningTest implements ScreeningTest {
  const factory _ScreeningTest({final int id, final String title}) =
      _$ScreeningTestImpl;

  @override
  int get id;
  @override
  String get title;

  /// Create a copy of ScreeningTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScreeningTestImplCopyWith<_$ScreeningTestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
