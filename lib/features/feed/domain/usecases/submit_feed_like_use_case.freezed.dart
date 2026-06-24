// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_feed_like_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitFeedLikeInput {
  String get feedId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedLikeInputCopyWith<SubmitFeedLikeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedLikeInputCopyWith<$Res> {
  factory $SubmitFeedLikeInputCopyWith(
    SubmitFeedLikeInput value,
    $Res Function(SubmitFeedLikeInput) then,
  ) = _$SubmitFeedLikeInputCopyWithImpl<$Res, SubmitFeedLikeInput>;
  @useResult
  $Res call({String feedId, Author currentUser});

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$SubmitFeedLikeInputCopyWithImpl<$Res, $Val extends SubmitFeedLikeInput>
    implements $SubmitFeedLikeInputCopyWith<$Res> {
  _$SubmitFeedLikeInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? currentUser = null}) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
            currentUser: null == currentUser
                ? _value.currentUser
                : currentUser // ignore: cast_nullable_to_non_nullable
                      as Author,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get currentUser {
    return $AuthorCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFeedLikeInputImplCopyWith<$Res>
    implements $SubmitFeedLikeInputCopyWith<$Res> {
  factory _$$SubmitFeedLikeInputImplCopyWith(
    _$SubmitFeedLikeInputImpl value,
    $Res Function(_$SubmitFeedLikeInputImpl) then,
  ) = __$$SubmitFeedLikeInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, Author currentUser});

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$SubmitFeedLikeInputImplCopyWithImpl<$Res>
    extends _$SubmitFeedLikeInputCopyWithImpl<$Res, _$SubmitFeedLikeInputImpl>
    implements _$$SubmitFeedLikeInputImplCopyWith<$Res> {
  __$$SubmitFeedLikeInputImplCopyWithImpl(
    _$SubmitFeedLikeInputImpl _value,
    $Res Function(_$SubmitFeedLikeInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? currentUser = null}) {
    return _then(
      _$SubmitFeedLikeInputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
        currentUser: null == currentUser
            ? _value.currentUser
            : currentUser // ignore: cast_nullable_to_non_nullable
                  as Author,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedLikeInputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedLikeInput {
  const _$SubmitFeedLikeInputImpl({
    required this.feedId,
    required this.currentUser,
  });

  @override
  final String feedId;
  @override
  final Author currentUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedLikeInput(feedId: $feedId, currentUser: $currentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedLikeInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('currentUser', currentUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedLikeInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId, currentUser);

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedLikeInputImplCopyWith<_$SubmitFeedLikeInputImpl> get copyWith =>
      __$$SubmitFeedLikeInputImplCopyWithImpl<_$SubmitFeedLikeInputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFeedLikeInput implements SubmitFeedLikeInput {
  const factory _SubmitFeedLikeInput({
    required final String feedId,
    required final Author currentUser,
  }) = _$SubmitFeedLikeInputImpl;

  @override
  String get feedId;
  @override
  Author get currentUser;

  /// Create a copy of SubmitFeedLikeInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedLikeInputImplCopyWith<_$SubmitFeedLikeInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFeedLikeOutput {
  LikeResult get result => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFeedLikeOutputCopyWith<SubmitFeedLikeOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFeedLikeOutputCopyWith<$Res> {
  factory $SubmitFeedLikeOutputCopyWith(
    SubmitFeedLikeOutput value,
    $Res Function(SubmitFeedLikeOutput) then,
  ) = _$SubmitFeedLikeOutputCopyWithImpl<$Res, SubmitFeedLikeOutput>;
  @useResult
  $Res call({LikeResult result});

  $LikeResultCopyWith<$Res> get result;
}

/// @nodoc
class _$SubmitFeedLikeOutputCopyWithImpl<
  $Res,
  $Val extends SubmitFeedLikeOutput
>
    implements $SubmitFeedLikeOutputCopyWith<$Res> {
  _$SubmitFeedLikeOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _value.copyWith(
            result: null == result
                ? _value.result
                : result // ignore: cast_nullable_to_non_nullable
                      as LikeResult,
          )
          as $Val,
    );
  }

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LikeResultCopyWith<$Res> get result {
    return $LikeResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitFeedLikeOutputImplCopyWith<$Res>
    implements $SubmitFeedLikeOutputCopyWith<$Res> {
  factory _$$SubmitFeedLikeOutputImplCopyWith(
    _$SubmitFeedLikeOutputImpl value,
    $Res Function(_$SubmitFeedLikeOutputImpl) then,
  ) = __$$SubmitFeedLikeOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LikeResult result});

  @override
  $LikeResultCopyWith<$Res> get result;
}

/// @nodoc
class __$$SubmitFeedLikeOutputImplCopyWithImpl<$Res>
    extends _$SubmitFeedLikeOutputCopyWithImpl<$Res, _$SubmitFeedLikeOutputImpl>
    implements _$$SubmitFeedLikeOutputImplCopyWith<$Res> {
  __$$SubmitFeedLikeOutputImplCopyWithImpl(
    _$SubmitFeedLikeOutputImpl _value,
    $Res Function(_$SubmitFeedLikeOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _$SubmitFeedLikeOutputImpl(
        result: null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as LikeResult,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFeedLikeOutputImpl
    with DiagnosticableTreeMixin
    implements _SubmitFeedLikeOutput {
  const _$SubmitFeedLikeOutputImpl({required this.result});

  @override
  final LikeResult result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SubmitFeedLikeOutput(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SubmitFeedLikeOutput'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFeedLikeOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFeedLikeOutputImplCopyWith<_$SubmitFeedLikeOutputImpl>
  get copyWith =>
      __$$SubmitFeedLikeOutputImplCopyWithImpl<_$SubmitFeedLikeOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFeedLikeOutput implements SubmitFeedLikeOutput {
  const factory _SubmitFeedLikeOutput({required final LikeResult result}) =
      _$SubmitFeedLikeOutputImpl;

  @override
  LikeResult get result;

  /// Create a copy of SubmitFeedLikeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFeedLikeOutputImplCopyWith<_$SubmitFeedLikeOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
