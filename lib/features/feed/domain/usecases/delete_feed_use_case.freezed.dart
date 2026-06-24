// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_feed_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DeleteFeedInput {
  String get feedId => throw _privateConstructorUsedError;
  Author get currentUser => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFeedInputCopyWith<DeleteFeedInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFeedInputCopyWith<$Res> {
  factory $DeleteFeedInputCopyWith(
    DeleteFeedInput value,
    $Res Function(DeleteFeedInput) then,
  ) = _$DeleteFeedInputCopyWithImpl<$Res, DeleteFeedInput>;
  @useResult
  $Res call({String feedId, Author currentUser});

  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$DeleteFeedInputCopyWithImpl<$Res, $Val extends DeleteFeedInput>
    implements $DeleteFeedInputCopyWith<$Res> {
  _$DeleteFeedInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFeedInput
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

  /// Create a copy of DeleteFeedInput
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
abstract class _$$DeleteFeedInputImplCopyWith<$Res>
    implements $DeleteFeedInputCopyWith<$Res> {
  factory _$$DeleteFeedInputImplCopyWith(
    _$DeleteFeedInputImpl value,
    $Res Function(_$DeleteFeedInputImpl) then,
  ) = __$$DeleteFeedInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId, Author currentUser});

  @override
  $AuthorCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$DeleteFeedInputImplCopyWithImpl<$Res>
    extends _$DeleteFeedInputCopyWithImpl<$Res, _$DeleteFeedInputImpl>
    implements _$$DeleteFeedInputImplCopyWith<$Res> {
  __$$DeleteFeedInputImplCopyWithImpl(
    _$DeleteFeedInputImpl _value,
    $Res Function(_$DeleteFeedInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null, Object? currentUser = null}) {
    return _then(
      _$DeleteFeedInputImpl(
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

class _$DeleteFeedInputImpl
    with DiagnosticableTreeMixin
    implements _DeleteFeedInput {
  const _$DeleteFeedInputImpl({
    required this.feedId,
    required this.currentUser,
  });

  @override
  final String feedId;
  @override
  final Author currentUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFeedInput(feedId: $feedId, currentUser: $currentUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFeedInput'))
      ..add(DiagnosticsProperty('feedId', feedId))
      ..add(DiagnosticsProperty('currentUser', currentUser));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedInputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId, currentUser);

  /// Create a copy of DeleteFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedInputImplCopyWith<_$DeleteFeedInputImpl> get copyWith =>
      __$$DeleteFeedInputImplCopyWithImpl<_$DeleteFeedInputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteFeedInput implements DeleteFeedInput {
  const factory _DeleteFeedInput({
    required final String feedId,
    required final Author currentUser,
  }) = _$DeleteFeedInputImpl;

  @override
  String get feedId;
  @override
  Author get currentUser;

  /// Create a copy of DeleteFeedInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedInputImplCopyWith<_$DeleteFeedInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteFeedOutput {
  String get feedId => throw _privateConstructorUsedError;

  /// Create a copy of DeleteFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteFeedOutputCopyWith<DeleteFeedOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteFeedOutputCopyWith<$Res> {
  factory $DeleteFeedOutputCopyWith(
    DeleteFeedOutput value,
    $Res Function(DeleteFeedOutput) then,
  ) = _$DeleteFeedOutputCopyWithImpl<$Res, DeleteFeedOutput>;
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class _$DeleteFeedOutputCopyWithImpl<$Res, $Val extends DeleteFeedOutput>
    implements $DeleteFeedOutputCopyWith<$Res> {
  _$DeleteFeedOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null}) {
    return _then(
      _value.copyWith(
            feedId: null == feedId
                ? _value.feedId
                : feedId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeleteFeedOutputImplCopyWith<$Res>
    implements $DeleteFeedOutputCopyWith<$Res> {
  factory _$$DeleteFeedOutputImplCopyWith(
    _$DeleteFeedOutputImpl value,
    $Res Function(_$DeleteFeedOutputImpl) then,
  ) = __$$DeleteFeedOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String feedId});
}

/// @nodoc
class __$$DeleteFeedOutputImplCopyWithImpl<$Res>
    extends _$DeleteFeedOutputCopyWithImpl<$Res, _$DeleteFeedOutputImpl>
    implements _$$DeleteFeedOutputImplCopyWith<$Res> {
  __$$DeleteFeedOutputImplCopyWithImpl(
    _$DeleteFeedOutputImpl _value,
    $Res Function(_$DeleteFeedOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeleteFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? feedId = null}) {
    return _then(
      _$DeleteFeedOutputImpl(
        feedId: null == feedId
            ? _value.feedId
            : feedId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DeleteFeedOutputImpl
    with DiagnosticableTreeMixin
    implements _DeleteFeedOutput {
  const _$DeleteFeedOutputImpl({required this.feedId});

  @override
  final String feedId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeleteFeedOutput(feedId: $feedId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeleteFeedOutput'))
      ..add(DiagnosticsProperty('feedId', feedId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFeedOutputImpl &&
            (identical(other.feedId, feedId) || other.feedId == feedId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedId);

  /// Create a copy of DeleteFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFeedOutputImplCopyWith<_$DeleteFeedOutputImpl> get copyWith =>
      __$$DeleteFeedOutputImplCopyWithImpl<_$DeleteFeedOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _DeleteFeedOutput implements DeleteFeedOutput {
  const factory _DeleteFeedOutput({required final String feedId}) =
      _$DeleteFeedOutputImpl;

  @override
  String get feedId;

  /// Create a copy of DeleteFeedOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteFeedOutputImplCopyWith<_$DeleteFeedOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
