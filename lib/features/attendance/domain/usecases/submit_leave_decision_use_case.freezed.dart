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
  int get requestId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get decisionNote => throw _privateConstructorUsedError;

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
  $Res call({int requestId, String status, String? decisionNote});
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
    Object? requestId = null,
    Object? status = null,
    Object? decisionNote = freezed,
  }) {
    return _then(
      _value.copyWith(
            requestId: null == requestId
                ? _value.requestId
                : requestId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            decisionNote: freezed == decisionNote
                ? _value.decisionNote
                : decisionNote // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
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
  $Res call({int requestId, String status, String? decisionNote});
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
    Object? requestId = null,
    Object? status = null,
    Object? decisionNote = freezed,
  }) {
    return _then(
      _$SubmitLeaveDecisionInputImpl(
        requestId: null == requestId
            ? _value.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        decisionNote: freezed == decisionNote
            ? _value.decisionNote
            : decisionNote // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SubmitLeaveDecisionInputImpl implements _SubmitLeaveDecisionInput {
  const _$SubmitLeaveDecisionInputImpl({
    required this.requestId,
    required this.status,
    this.decisionNote,
  });

  @override
  final int requestId;
  @override
  final String status;
  @override
  final String? decisionNote;

  @override
  String toString() {
    return 'SubmitLeaveDecisionInput(requestId: $requestId, status: $status, decisionNote: $decisionNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLeaveDecisionInputImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.decisionNote, decisionNote) ||
                other.decisionNote == decisionNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, status, decisionNote);

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
    required final int requestId,
    required final String status,
    final String? decisionNote,
  }) = _$SubmitLeaveDecisionInputImpl;

  @override
  int get requestId;
  @override
  String get status;
  @override
  String? get decisionNote;

  /// Create a copy of SubmitLeaveDecisionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitLeaveDecisionInputImplCopyWith<_$SubmitLeaveDecisionInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitLeaveDecisionOutput {
  LeaveRequest get leaveRequest => throw _privateConstructorUsedError;

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitLeaveDecisionOutputCopyWith<SubmitLeaveDecisionOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitLeaveDecisionOutputCopyWith<$Res> {
  factory $SubmitLeaveDecisionOutputCopyWith(
    SubmitLeaveDecisionOutput value,
    $Res Function(SubmitLeaveDecisionOutput) then,
  ) = _$SubmitLeaveDecisionOutputCopyWithImpl<$Res, SubmitLeaveDecisionOutput>;
  @useResult
  $Res call({LeaveRequest leaveRequest});

  $LeaveRequestCopyWith<$Res> get leaveRequest;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequest = null}) {
    return _then(
      _value.copyWith(
            leaveRequest: null == leaveRequest
                ? _value.leaveRequest
                : leaveRequest // ignore: cast_nullable_to_non_nullable
                      as LeaveRequest,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaveRequestCopyWith<$Res> get leaveRequest {
    return $LeaveRequestCopyWith<$Res>(_value.leaveRequest, (value) {
      return _then(_value.copyWith(leaveRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitLeaveDecisionOutputImplCopyWith<$Res>
    implements $SubmitLeaveDecisionOutputCopyWith<$Res> {
  factory _$$SubmitLeaveDecisionOutputImplCopyWith(
    _$SubmitLeaveDecisionOutputImpl value,
    $Res Function(_$SubmitLeaveDecisionOutputImpl) then,
  ) = __$$SubmitLeaveDecisionOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeaveRequest leaveRequest});

  @override
  $LeaveRequestCopyWith<$Res> get leaveRequest;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? leaveRequest = null}) {
    return _then(
      _$SubmitLeaveDecisionOutputImpl(
        leaveRequest: null == leaveRequest
            ? _value.leaveRequest
            : leaveRequest // ignore: cast_nullable_to_non_nullable
                  as LeaveRequest,
      ),
    );
  }
}

/// @nodoc

class _$SubmitLeaveDecisionOutputImpl implements _SubmitLeaveDecisionOutput {
  const _$SubmitLeaveDecisionOutputImpl({required this.leaveRequest});

  @override
  final LeaveRequest leaveRequest;

  @override
  String toString() {
    return 'SubmitLeaveDecisionOutput(leaveRequest: $leaveRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLeaveDecisionOutputImpl &&
            (identical(other.leaveRequest, leaveRequest) ||
                other.leaveRequest == leaveRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaveRequest);

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLeaveDecisionOutputImplCopyWith<_$SubmitLeaveDecisionOutputImpl>
  get copyWith =>
      __$$SubmitLeaveDecisionOutputImplCopyWithImpl<
        _$SubmitLeaveDecisionOutputImpl
      >(this, _$identity);
}

abstract class _SubmitLeaveDecisionOutput implements SubmitLeaveDecisionOutput {
  const factory _SubmitLeaveDecisionOutput({
    required final LeaveRequest leaveRequest,
  }) = _$SubmitLeaveDecisionOutputImpl;

  @override
  LeaveRequest get leaveRequest;

  /// Create a copy of SubmitLeaveDecisionOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitLeaveDecisionOutputImplCopyWith<_$SubmitLeaveDecisionOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
