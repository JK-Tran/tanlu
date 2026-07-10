// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_as_read_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MarkAsReadInput {
  List<int> get notificationIds => throw _privateConstructorUsedError;

  /// Create a copy of MarkAsReadInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkAsReadInputCopyWith<MarkAsReadInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAsReadInputCopyWith<$Res> {
  factory $MarkAsReadInputCopyWith(
    MarkAsReadInput value,
    $Res Function(MarkAsReadInput) then,
  ) = _$MarkAsReadInputCopyWithImpl<$Res, MarkAsReadInput>;
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class _$MarkAsReadInputCopyWithImpl<$Res, $Val extends MarkAsReadInput>
    implements $MarkAsReadInputCopyWith<$Res> {
  _$MarkAsReadInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkAsReadInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notificationIds = null}) {
    return _then(
      _value.copyWith(
            notificationIds: null == notificationIds
                ? _value.notificationIds
                : notificationIds // ignore: cast_nullable_to_non_nullable
                      as List<int>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarkAsReadInputImplCopyWith<$Res>
    implements $MarkAsReadInputCopyWith<$Res> {
  factory _$$MarkAsReadInputImplCopyWith(
    _$MarkAsReadInputImpl value,
    $Res Function(_$MarkAsReadInputImpl) then,
  ) = __$$MarkAsReadInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> notificationIds});
}

/// @nodoc
class __$$MarkAsReadInputImplCopyWithImpl<$Res>
    extends _$MarkAsReadInputCopyWithImpl<$Res, _$MarkAsReadInputImpl>
    implements _$$MarkAsReadInputImplCopyWith<$Res> {
  __$$MarkAsReadInputImplCopyWithImpl(
    _$MarkAsReadInputImpl _value,
    $Res Function(_$MarkAsReadInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarkAsReadInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? notificationIds = null}) {
    return _then(
      _$MarkAsReadInputImpl(
        notificationIds: null == notificationIds
            ? _value._notificationIds
            : notificationIds // ignore: cast_nullable_to_non_nullable
                  as List<int>,
      ),
    );
  }
}

/// @nodoc

class _$MarkAsReadInputImpl implements _MarkAsReadInput {
  const _$MarkAsReadInputImpl({required final List<int> notificationIds})
    : _notificationIds = notificationIds;

  final List<int> _notificationIds;
  @override
  List<int> get notificationIds {
    if (_notificationIds is EqualUnmodifiableListView) return _notificationIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationIds);
  }

  @override
  String toString() {
    return 'MarkAsReadInput(notificationIds: $notificationIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadInputImpl &&
            const DeepCollectionEquality().equals(
              other._notificationIds,
              _notificationIds,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_notificationIds),
  );

  /// Create a copy of MarkAsReadInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadInputImplCopyWith<_$MarkAsReadInputImpl> get copyWith =>
      __$$MarkAsReadInputImplCopyWithImpl<_$MarkAsReadInputImpl>(
        this,
        _$identity,
      );
}

abstract class _MarkAsReadInput implements MarkAsReadInput {
  const factory _MarkAsReadInput({required final List<int> notificationIds}) =
      _$MarkAsReadInputImpl;

  @override
  List<int> get notificationIds;

  /// Create a copy of MarkAsReadInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsReadInputImplCopyWith<_$MarkAsReadInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarkAsReadOutput {}

/// @nodoc
abstract class $MarkAsReadOutputCopyWith<$Res> {
  factory $MarkAsReadOutputCopyWith(
    MarkAsReadOutput value,
    $Res Function(MarkAsReadOutput) then,
  ) = _$MarkAsReadOutputCopyWithImpl<$Res, MarkAsReadOutput>;
}

/// @nodoc
class _$MarkAsReadOutputCopyWithImpl<$Res, $Val extends MarkAsReadOutput>
    implements $MarkAsReadOutputCopyWith<$Res> {
  _$MarkAsReadOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkAsReadOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MarkAsReadOutputImplCopyWith<$Res> {
  factory _$$MarkAsReadOutputImplCopyWith(
    _$MarkAsReadOutputImpl value,
    $Res Function(_$MarkAsReadOutputImpl) then,
  ) = __$$MarkAsReadOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAsReadOutputImplCopyWithImpl<$Res>
    extends _$MarkAsReadOutputCopyWithImpl<$Res, _$MarkAsReadOutputImpl>
    implements _$$MarkAsReadOutputImplCopyWith<$Res> {
  __$$MarkAsReadOutputImplCopyWithImpl(
    _$MarkAsReadOutputImpl _value,
    $Res Function(_$MarkAsReadOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarkAsReadOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarkAsReadOutputImpl extends _MarkAsReadOutput {
  const _$MarkAsReadOutputImpl() : super._();

  @override
  String toString() {
    return 'MarkAsReadOutput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAsReadOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _MarkAsReadOutput extends MarkAsReadOutput {
  const factory _MarkAsReadOutput() = _$MarkAsReadOutputImpl;
  const _MarkAsReadOutput._() : super._();
}
