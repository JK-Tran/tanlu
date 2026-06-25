// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_leave_requests_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StreamLeaveRequestsInput {
  String get classId => throw _privateConstructorUsedError;
  String get dateStr => throw _privateConstructorUsedError;

  /// Create a copy of StreamLeaveRequestsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamLeaveRequestsInputCopyWith<StreamLeaveRequestsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamLeaveRequestsInputCopyWith<$Res> {
  factory $StreamLeaveRequestsInputCopyWith(
    StreamLeaveRequestsInput value,
    $Res Function(StreamLeaveRequestsInput) then,
  ) = _$StreamLeaveRequestsInputCopyWithImpl<$Res, StreamLeaveRequestsInput>;
  @useResult
  $Res call({String classId, String dateStr});
}

/// @nodoc
class _$StreamLeaveRequestsInputCopyWithImpl<
  $Res,
  $Val extends StreamLeaveRequestsInput
>
    implements $StreamLeaveRequestsInputCopyWith<$Res> {
  _$StreamLeaveRequestsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamLeaveRequestsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? dateStr = null}) {
    return _then(
      _value.copyWith(
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            dateStr: null == dateStr
                ? _value.dateStr
                : dateStr // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StreamLeaveRequestsInputImplCopyWith<$Res>
    implements $StreamLeaveRequestsInputCopyWith<$Res> {
  factory _$$StreamLeaveRequestsInputImplCopyWith(
    _$StreamLeaveRequestsInputImpl value,
    $Res Function(_$StreamLeaveRequestsInputImpl) then,
  ) = __$$StreamLeaveRequestsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String classId, String dateStr});
}

/// @nodoc
class __$$StreamLeaveRequestsInputImplCopyWithImpl<$Res>
    extends
        _$StreamLeaveRequestsInputCopyWithImpl<
          $Res,
          _$StreamLeaveRequestsInputImpl
        >
    implements _$$StreamLeaveRequestsInputImplCopyWith<$Res> {
  __$$StreamLeaveRequestsInputImplCopyWithImpl(
    _$StreamLeaveRequestsInputImpl _value,
    $Res Function(_$StreamLeaveRequestsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StreamLeaveRequestsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? classId = null, Object? dateStr = null}) {
    return _then(
      _$StreamLeaveRequestsInputImpl(
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        dateStr: null == dateStr
            ? _value.dateStr
            : dateStr // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$StreamLeaveRequestsInputImpl implements _StreamLeaveRequestsInput {
  const _$StreamLeaveRequestsInputImpl({
    required this.classId,
    required this.dateStr,
  });

  @override
  final String classId;
  @override
  final String dateStr;

  @override
  String toString() {
    return 'StreamLeaveRequestsInput(classId: $classId, dateStr: $dateStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamLeaveRequestsInputImpl &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.dateStr, dateStr) || other.dateStr == dateStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId, dateStr);

  /// Create a copy of StreamLeaveRequestsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamLeaveRequestsInputImplCopyWith<_$StreamLeaveRequestsInputImpl>
  get copyWith =>
      __$$StreamLeaveRequestsInputImplCopyWithImpl<
        _$StreamLeaveRequestsInputImpl
      >(this, _$identity);
}

abstract class _StreamLeaveRequestsInput implements StreamLeaveRequestsInput {
  const factory _StreamLeaveRequestsInput({
    required final String classId,
    required final String dateStr,
  }) = _$StreamLeaveRequestsInputImpl;

  @override
  String get classId;
  @override
  String get dateStr;

  /// Create a copy of StreamLeaveRequestsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamLeaveRequestsInputImplCopyWith<_$StreamLeaveRequestsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
