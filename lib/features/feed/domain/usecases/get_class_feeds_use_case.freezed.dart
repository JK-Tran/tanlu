// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_class_feeds_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetClassFeedsInput {
  String get authorId => throw _privateConstructorUsedError;
  String? get viewerUserId => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetClassFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClassFeedsInputCopyWith<GetClassFeedsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClassFeedsInputCopyWith<$Res> {
  factory $GetClassFeedsInputCopyWith(
    GetClassFeedsInput value,
    $Res Function(GetClassFeedsInput) then,
  ) = _$GetClassFeedsInputCopyWithImpl<$Res, GetClassFeedsInput>;
  @useResult
  $Res call({String authorId, String? viewerUserId, String? cursor, int limit});
}

/// @nodoc
class _$GetClassFeedsInputCopyWithImpl<$Res, $Val extends GetClassFeedsInput>
    implements $GetClassFeedsInputCopyWith<$Res> {
  _$GetClassFeedsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClassFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? viewerUserId = freezed,
    Object? cursor = freezed,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            viewerUserId: freezed == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            cursor: freezed == cursor
                ? _value.cursor
                : cursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetClassFeedsInputImplCopyWith<$Res>
    implements $GetClassFeedsInputCopyWith<$Res> {
  factory _$$GetClassFeedsInputImplCopyWith(
    _$GetClassFeedsInputImpl value,
    $Res Function(_$GetClassFeedsInputImpl) then,
  ) = __$$GetClassFeedsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String authorId, String? viewerUserId, String? cursor, int limit});
}

/// @nodoc
class __$$GetClassFeedsInputImplCopyWithImpl<$Res>
    extends _$GetClassFeedsInputCopyWithImpl<$Res, _$GetClassFeedsInputImpl>
    implements _$$GetClassFeedsInputImplCopyWith<$Res> {
  __$$GetClassFeedsInputImplCopyWithImpl(
    _$GetClassFeedsInputImpl _value,
    $Res Function(_$GetClassFeedsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetClassFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? viewerUserId = freezed,
    Object? cursor = freezed,
    Object? limit = null,
  }) {
    return _then(
      _$GetClassFeedsInputImpl(
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        viewerUserId: freezed == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        cursor: freezed == cursor
            ? _value.cursor
            : cursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetClassFeedsInputImpl
    with DiagnosticableTreeMixin
    implements _GetClassFeedsInput {
  const _$GetClassFeedsInputImpl({
    required this.authorId,
    this.viewerUserId,
    this.cursor,
    this.limit = 20,
  });

  @override
  final String authorId;
  @override
  final String? viewerUserId;
  @override
  final String? cursor;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetClassFeedsInput(authorId: $authorId, viewerUserId: $viewerUserId, cursor: $cursor, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetClassFeedsInput'))
      ..add(DiagnosticsProperty('authorId', authorId))
      ..add(DiagnosticsProperty('viewerUserId', viewerUserId))
      ..add(DiagnosticsProperty('cursor', cursor))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClassFeedsInputImpl &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authorId, viewerUserId, cursor, limit);

  /// Create a copy of GetClassFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClassFeedsInputImplCopyWith<_$GetClassFeedsInputImpl> get copyWith =>
      __$$GetClassFeedsInputImplCopyWithImpl<_$GetClassFeedsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetClassFeedsInput implements GetClassFeedsInput {
  const factory _GetClassFeedsInput({
    required final String authorId,
    final String? viewerUserId,
    final String? cursor,
    final int limit,
  }) = _$GetClassFeedsInputImpl;

  @override
  String get authorId;
  @override
  String? get viewerUserId;
  @override
  String? get cursor;
  @override
  int get limit;

  /// Create a copy of GetClassFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClassFeedsInputImplCopyWith<_$GetClassFeedsInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetClassFeedsOutput {
  FeedResponse get response => throw _privateConstructorUsedError;

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetClassFeedsOutputCopyWith<GetClassFeedsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClassFeedsOutputCopyWith<$Res> {
  factory $GetClassFeedsOutputCopyWith(
    GetClassFeedsOutput value,
    $Res Function(GetClassFeedsOutput) then,
  ) = _$GetClassFeedsOutputCopyWithImpl<$Res, GetClassFeedsOutput>;
  @useResult
  $Res call({FeedResponse response});

  $FeedResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$GetClassFeedsOutputCopyWithImpl<$Res, $Val extends GetClassFeedsOutput>
    implements $GetClassFeedsOutputCopyWith<$Res> {
  _$GetClassFeedsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _value.copyWith(
            response: null == response
                ? _value.response
                : response // ignore: cast_nullable_to_non_nullable
                      as FeedResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedResponseCopyWith<$Res> get response {
    return $FeedResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetClassFeedsOutputImplCopyWith<$Res>
    implements $GetClassFeedsOutputCopyWith<$Res> {
  factory _$$GetClassFeedsOutputImplCopyWith(
    _$GetClassFeedsOutputImpl value,
    $Res Function(_$GetClassFeedsOutputImpl) then,
  ) = __$$GetClassFeedsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedResponse response});

  @override
  $FeedResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$GetClassFeedsOutputImplCopyWithImpl<$Res>
    extends _$GetClassFeedsOutputCopyWithImpl<$Res, _$GetClassFeedsOutputImpl>
    implements _$$GetClassFeedsOutputImplCopyWith<$Res> {
  __$$GetClassFeedsOutputImplCopyWithImpl(
    _$GetClassFeedsOutputImpl _value,
    $Res Function(_$GetClassFeedsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$GetClassFeedsOutputImpl(
        response: null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as FeedResponse,
      ),
    );
  }
}

/// @nodoc

class _$GetClassFeedsOutputImpl
    with DiagnosticableTreeMixin
    implements _GetClassFeedsOutput {
  const _$GetClassFeedsOutputImpl({required this.response});

  @override
  final FeedResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetClassFeedsOutput(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetClassFeedsOutput'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetClassFeedsOutputImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetClassFeedsOutputImplCopyWith<_$GetClassFeedsOutputImpl> get copyWith =>
      __$$GetClassFeedsOutputImplCopyWithImpl<_$GetClassFeedsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetClassFeedsOutput implements GetClassFeedsOutput {
  const factory _GetClassFeedsOutput({required final FeedResponse response}) =
      _$GetClassFeedsOutputImpl;

  @override
  FeedResponse get response;

  /// Create a copy of GetClassFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetClassFeedsOutputImplCopyWith<_$GetClassFeedsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
