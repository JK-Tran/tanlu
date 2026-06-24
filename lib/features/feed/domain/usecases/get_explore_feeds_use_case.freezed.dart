// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_explore_feeds_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetExploreFeedsInput {
  String get viewerUserId => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetExploreFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetExploreFeedsInputCopyWith<GetExploreFeedsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExploreFeedsInputCopyWith<$Res> {
  factory $GetExploreFeedsInputCopyWith(
    GetExploreFeedsInput value,
    $Res Function(GetExploreFeedsInput) then,
  ) = _$GetExploreFeedsInputCopyWithImpl<$Res, GetExploreFeedsInput>;
  @useResult
  $Res call({String viewerUserId, String? cursor, int limit});
}

/// @nodoc
class _$GetExploreFeedsInputCopyWithImpl<
  $Res,
  $Val extends GetExploreFeedsInput
>
    implements $GetExploreFeedsInputCopyWith<$Res> {
  _$GetExploreFeedsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetExploreFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewerUserId = null,
    Object? cursor = freezed,
    Object? limit = null,
  }) {
    return _then(
      _value.copyWith(
            viewerUserId: null == viewerUserId
                ? _value.viewerUserId
                : viewerUserId // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$GetExploreFeedsInputImplCopyWith<$Res>
    implements $GetExploreFeedsInputCopyWith<$Res> {
  factory _$$GetExploreFeedsInputImplCopyWith(
    _$GetExploreFeedsInputImpl value,
    $Res Function(_$GetExploreFeedsInputImpl) then,
  ) = __$$GetExploreFeedsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String viewerUserId, String? cursor, int limit});
}

/// @nodoc
class __$$GetExploreFeedsInputImplCopyWithImpl<$Res>
    extends _$GetExploreFeedsInputCopyWithImpl<$Res, _$GetExploreFeedsInputImpl>
    implements _$$GetExploreFeedsInputImplCopyWith<$Res> {
  __$$GetExploreFeedsInputImplCopyWithImpl(
    _$GetExploreFeedsInputImpl _value,
    $Res Function(_$GetExploreFeedsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetExploreFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewerUserId = null,
    Object? cursor = freezed,
    Object? limit = null,
  }) {
    return _then(
      _$GetExploreFeedsInputImpl(
        viewerUserId: null == viewerUserId
            ? _value.viewerUserId
            : viewerUserId // ignore: cast_nullable_to_non_nullable
                  as String,
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

class _$GetExploreFeedsInputImpl
    with DiagnosticableTreeMixin
    implements _GetExploreFeedsInput {
  const _$GetExploreFeedsInputImpl({
    this.viewerUserId = '',
    this.cursor,
    this.limit = PagingConstants.itemsPerPage * 2,
  });

  @override
  @JsonKey()
  final String viewerUserId;
  @override
  final String? cursor;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetExploreFeedsInput(viewerUserId: $viewerUserId, cursor: $cursor, limit: $limit)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetExploreFeedsInput'))
      ..add(DiagnosticsProperty('viewerUserId', viewerUserId))
      ..add(DiagnosticsProperty('cursor', cursor))
      ..add(DiagnosticsProperty('limit', limit));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExploreFeedsInputImpl &&
            (identical(other.viewerUserId, viewerUserId) ||
                other.viewerUserId == viewerUserId) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewerUserId, cursor, limit);

  /// Create a copy of GetExploreFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExploreFeedsInputImplCopyWith<_$GetExploreFeedsInputImpl>
  get copyWith =>
      __$$GetExploreFeedsInputImplCopyWithImpl<_$GetExploreFeedsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetExploreFeedsInput implements GetExploreFeedsInput {
  const factory _GetExploreFeedsInput({
    final String viewerUserId,
    final String? cursor,
    final int limit,
  }) = _$GetExploreFeedsInputImpl;

  @override
  String get viewerUserId;
  @override
  String? get cursor;
  @override
  int get limit;

  /// Create a copy of GetExploreFeedsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExploreFeedsInputImplCopyWith<_$GetExploreFeedsInputImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetExploreFeedsOutput {
  FeedResponse get response => throw _privateConstructorUsedError;

  /// Create a copy of GetExploreFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetExploreFeedsOutputCopyWith<GetExploreFeedsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetExploreFeedsOutputCopyWith<$Res> {
  factory $GetExploreFeedsOutputCopyWith(
    GetExploreFeedsOutput value,
    $Res Function(GetExploreFeedsOutput) then,
  ) = _$GetExploreFeedsOutputCopyWithImpl<$Res, GetExploreFeedsOutput>;
  @useResult
  $Res call({FeedResponse response});

  $FeedResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$GetExploreFeedsOutputCopyWithImpl<
  $Res,
  $Val extends GetExploreFeedsOutput
>
    implements $GetExploreFeedsOutputCopyWith<$Res> {
  _$GetExploreFeedsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetExploreFeedsOutput
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

  /// Create a copy of GetExploreFeedsOutput
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
abstract class _$$GetExploreFeedsOutputImplCopyWith<$Res>
    implements $GetExploreFeedsOutputCopyWith<$Res> {
  factory _$$GetExploreFeedsOutputImplCopyWith(
    _$GetExploreFeedsOutputImpl value,
    $Res Function(_$GetExploreFeedsOutputImpl) then,
  ) = __$$GetExploreFeedsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedResponse response});

  @override
  $FeedResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$GetExploreFeedsOutputImplCopyWithImpl<$Res>
    extends
        _$GetExploreFeedsOutputCopyWithImpl<$Res, _$GetExploreFeedsOutputImpl>
    implements _$$GetExploreFeedsOutputImplCopyWith<$Res> {
  __$$GetExploreFeedsOutputImplCopyWithImpl(
    _$GetExploreFeedsOutputImpl _value,
    $Res Function(_$GetExploreFeedsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetExploreFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$GetExploreFeedsOutputImpl(
        response: null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as FeedResponse,
      ),
    );
  }
}

/// @nodoc

class _$GetExploreFeedsOutputImpl
    with DiagnosticableTreeMixin
    implements _GetExploreFeedsOutput {
  const _$GetExploreFeedsOutputImpl({required this.response});

  @override
  final FeedResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetExploreFeedsOutput(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetExploreFeedsOutput'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetExploreFeedsOutputImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of GetExploreFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetExploreFeedsOutputImplCopyWith<_$GetExploreFeedsOutputImpl>
  get copyWith =>
      __$$GetExploreFeedsOutputImplCopyWithImpl<_$GetExploreFeedsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetExploreFeedsOutput implements GetExploreFeedsOutput {
  const factory _GetExploreFeedsOutput({required final FeedResponse response}) =
      _$GetExploreFeedsOutputImpl;

  @override
  FeedResponse get response;

  /// Create a copy of GetExploreFeedsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetExploreFeedsOutputImplCopyWith<_$GetExploreFeedsOutputImpl>
  get copyWith => throw _privateConstructorUsedError;
}
