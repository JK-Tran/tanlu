// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_report_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteReportInput {
  int get id => throw _privateConstructorUsedError;

  /// Create a copy of DeleteReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteReportInputCopyWith<DeleteReportInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteReportInputCopyWith<$Res> {
  factory $DeleteReportInputCopyWith(
    DeleteReportInput value,
    $Res Function(DeleteReportInput) then,
  ) = _$DeleteReportInputCopyWithImpl<$Res, DeleteReportInput>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$DeleteReportInputCopyWithImpl<$Res, $Val extends DeleteReportInput>
    implements $DeleteReportInputCopyWith<$Res> {
  _$DeleteReportInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteReportInput
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
abstract class _$$DeleteReportInputImplCopyWith<$Res>
    implements $DeleteReportInputCopyWith<$Res> {
  factory _$$DeleteReportInputImplCopyWith(
    _$DeleteReportInputImpl value,
    $Res Function(_$DeleteReportInputImpl) then,
  ) = __$$DeleteReportInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteReportInputImplCopyWithImpl<$Res>
    extends _$DeleteReportInputCopyWithImpl<$Res, _$DeleteReportInputImpl>
    implements _$$DeleteReportInputImplCopyWith<$Res> {
  __$$DeleteReportInputImplCopyWithImpl(
    _$DeleteReportInputImpl _value,
    $Res Function(_$DeleteReportInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteReportInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteReportInputImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteReportInputImpl implements _DeleteReportInput {
  const _$DeleteReportInputImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DeleteReportInput(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReportInputImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteReportInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReportInputImplCopyWith<_$DeleteReportInputImpl> get copyWith =>
      __$$DeleteReportInputImplCopyWithImpl<_$DeleteReportInputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteReportInput implements DeleteReportInput {
  const factory _DeleteReportInput({required final int id}) =
      _$DeleteReportInputImpl;

  @override
  int get id;

  /// Create a copy of DeleteReportInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteReportInputImplCopyWith<_$DeleteReportInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteReportOutput {}

/// @nodoc
abstract class $DeleteReportOutputCopyWith<$Res> {
  factory $DeleteReportOutputCopyWith(
    DeleteReportOutput value,
    $Res Function(DeleteReportOutput) then,
  ) = _$DeleteReportOutputCopyWithImpl<$Res, DeleteReportOutput>;
}

/// @nodoc
class _$DeleteReportOutputCopyWithImpl<$Res, $Val extends DeleteReportOutput>
    implements $DeleteReportOutputCopyWith<$Res> {
  _$DeleteReportOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteReportOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DeleteReportOutputImplCopyWith<$Res> {
  factory _$$DeleteReportOutputImplCopyWith(
    _$DeleteReportOutputImpl value,
    $Res Function(_$DeleteReportOutputImpl) then,
  ) = __$$DeleteReportOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteReportOutputImplCopyWithImpl<$Res>
    extends _$DeleteReportOutputCopyWithImpl<$Res, _$DeleteReportOutputImpl>
    implements _$$DeleteReportOutputImplCopyWith<$Res> {
  __$$DeleteReportOutputImplCopyWithImpl(
    _$DeleteReportOutputImpl _value,
    $Res Function(_$DeleteReportOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteReportOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteReportOutputImpl implements _DeleteReportOutput {
  const _$DeleteReportOutputImpl();

  @override
  String toString() {
    return 'DeleteReportOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteReportOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _DeleteReportOutput implements DeleteReportOutput {
  const factory _DeleteReportOutput() = _$DeleteReportOutputImpl;
}
