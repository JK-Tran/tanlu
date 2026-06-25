// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_leave_decision_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitLeaveDecisionInput {
  LeaveRequest get request => throw _privateConstructorUsedError;
  bool get isApproved => throw _privateConstructorUsedError;
  bool get updateAttendance => throw _privateConstructorUsedError;
  String? get reviewedBy => throw _privateConstructorUsedError;

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitLeaveDecisionInputCopyWith<SubmitLeaveDecisionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitLeaveDecisionInputCopyWith<$Res> {
  factory $SubmitLeaveDecisionInputCopyWith(
    SubmitLeaveDecisionInput value,
    $Res Function(SubmitLeaveDecisionInput) then,
  ) = _$SubmitLeaveDecisionInputCopyWithImpl<$Res, SubmitLeaveDecisionInput>;
  @useResult
  $Res call({
    LeaveRequest request,
    bool isApproved,
    bool updateAttendance,
    String? reviewedBy,
  });

  $LeaveRequestCopyWith<$Res> get request;
}

/// @nodoc
class _$SubmitLeaveDecisionInputCopyWithImpl<
  $Res,
  $Val extends SubmitLeaveDecisionInput
>
    implements $SubmitLeaveDecisionInputCopyWith<$Res> {
  _$SubmitLeaveDecisionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? isApproved = null,
    Object? updateAttendance = null,
    Object? reviewedBy = freezed,
  }) {
    return _then(
      _value.copyWith(
            request: null == request
                ? _value.request
                : request // ignore: cast_nullable_to_non_nullable
                      as LeaveRequest,
            isApproved: null == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as bool,
            updateAttendance: null == updateAttendance
                ? _value.updateAttendance
                : updateAttendance // ignore: cast_nullable_to_non_nullable
                      as bool,
            reviewedBy: freezed == reviewedBy
                ? _value.reviewedBy
                : reviewedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveRequestCopyWith<$Res> get request {
    return $LeaveRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitLeaveDecisionInputImplCopyWith<$Res>
    implements $SubmitLeaveDecisionInputCopyWith<$Res> {
  factory _$$SubmitLeaveDecisionInputImplCopyWith(
    _$SubmitLeaveDecisionInputImpl value,
    $Res Function(_$SubmitLeaveDecisionInputImpl) then,
  ) = __$$SubmitLeaveDecisionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LeaveRequest request,
    bool isApproved,
    bool updateAttendance,
    String? reviewedBy,
  });

  @override
  $LeaveRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$SubmitLeaveDecisionInputImplCopyWithImpl<$Res>
    extends
        _$SubmitLeaveDecisionInputCopyWithImpl<
          $Res,
          _$SubmitLeaveDecisionInputImpl
        >
    implements _$$SubmitLeaveDecisionInputImplCopyWith<$Res> {
  __$$SubmitLeaveDecisionInputImplCopyWithImpl(
    _$SubmitLeaveDecisionInputImpl _value,
    $Res Function(_$SubmitLeaveDecisionInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? isApproved = null,
    Object? updateAttendance = null,
    Object? reviewedBy = freezed,
  }) {
    return _then(
      _$SubmitLeaveDecisionInputImpl(
        request: null == request
            ? _value.request
            : request // ignore: cast_nullable_to_non_nullable
                  as LeaveRequest,
        isApproved: null == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as bool,
        updateAttendance: null == updateAttendance
            ? _value.updateAttendance
            : updateAttendance // ignore: cast_nullable_to_non_nullable
                  as bool,
        reviewedBy: freezed == reviewedBy
            ? _value.reviewedBy
            : reviewedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitLeaveDecisionInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitLeaveDecisionInput {
  const _$SubmitLeaveDecisionInputImpl({
    required this.request,
    required this.isApproved,
    required this.updateAttendance,
    this.reviewedBy,
  });

  @override
  final LeaveRequest request;
  @override
  final bool isApproved;
  @override
  final bool updateAttendance;
  @override
  final String? reviewedBy;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitLeaveDecisionInput(request: $request, isApproved: $isApproved, updateAttendance: $updateAttendance, reviewedBy: $reviewedBy)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitLeaveDecisionInput'))
      ..add(DiagnosticsProperty('request', request))
      ..add(DiagnosticsProperty('isApproved', isApproved))
      ..add(DiagnosticsProperty('updateAttendance', updateAttendance))
      ..add(DiagnosticsProperty('reviewedBy', reviewedBy));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLeaveDecisionInputImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.updateAttendance, updateAttendance) ||
                other.updateAttendance == updateAttendance) &&
            (identical(other.reviewedBy, reviewedBy) ||
                other.reviewedBy == reviewedBy));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    request,
    isApproved,
    updateAttendance,
    reviewedBy,
  );

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLeaveDecisionInputImplCopyWith<_$SubmitLeaveDecisionInputImpl>
  get copyWith =>
      __$$SubmitLeaveDecisionInputImplCopyWithImpl<
        _$SubmitLeaveDecisionInputImpl
      >(this, _$identity);
}

abstract class _SubmitLeaveDecisionInput implements SubmitLeaveDecisionInput {
  const factory _SubmitLeaveDecisionInput({
    required final LeaveRequest request,
    required final bool isApproved,
    required final bool updateAttendance,
    final String? reviewedBy,
  }) = _$SubmitLeaveDecisionInputImpl;

  @override
  LeaveRequest get request;
  @override
  bool get isApproved;
  @override
  bool get updateAttendance;
  @override
  String? get reviewedBy;

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitLeaveDecisionInputImplCopyWith<_$SubmitLeaveDecisionInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitLeaveDecisionOutput {}

/// @nodoc
abstract class $SubmitLeaveDecisionOutputCopyWith<$Res> {
  factory $SubmitLeaveDecisionOutputCopyWith(
    SubmitLeaveDecisionOutput value,
    $Res Function(SubmitLeaveDecisionOutput) then,
  ) = _$SubmitLeaveDecisionOutputCopyWithImpl<$Res, SubmitLeaveDecisionOutput>;
}

/// @nodoc
class _$SubmitLeaveDecisionOutputCopyWithImpl<
  $Res,
  $Val extends SubmitLeaveDecisionOutput
>
    implements $SubmitLeaveDecisionOutputCopyWith<$Res> {
  _$SubmitLeaveDecisionOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitLeaveDecisionOutputImplCopyWith<$Res> {
  factory _$$SubmitLeaveDecisionOutputImplCopyWith(
    _$SubmitLeaveDecisionOutputImpl value,
    $Res Function(_$SubmitLeaveDecisionOutputImpl) then,
  ) = __$$SubmitLeaveDecisionOutputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitLeaveDecisionOutputImplCopyWithImpl<$Res>
    extends
        _$SubmitLeaveDecisionOutputCopyWithImpl<
          $Res,
          _$SubmitLeaveDecisionOutputImpl
        >
    implements _$$SubmitLeaveDecisionOutputImplCopyWith<$Res> {
  __$$SubmitLeaveDecisionOutputImplCopyWithImpl(
    _$SubmitLeaveDecisionOutputImpl _value,
    $Res Function(_$SubmitLeaveDecisionOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitLeaveDecisionOutputImpl extends _SubmitLeaveDecisionOutput
    with DiagnosticableTreeMixin {
  const _$SubmitLeaveDecisionOutputImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitLeaveDecisionOutput()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SubmitLeaveDecisionOutput'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLeaveDecisionOutputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SubmitLeaveDecisionOutput extends SubmitLeaveDecisionOutput {
  const factory _SubmitLeaveDecisionOutput() = _$SubmitLeaveDecisionOutputImpl;
  const _SubmitLeaveDecisionOutput._() : super._();
}
