// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatSearchResponse {
  String? get query => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get results => throw _privateConstructorUsedError;
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  /// Create a copy of ChatSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSearchResponseCopyWith<ChatSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSearchResponseCopyWith<$Res> {
  factory $ChatSearchResponseCopyWith(
    ChatSearchResponse value,
    $Res Function(ChatSearchResponse) then,
  ) = _$ChatSearchResponseCopyWithImpl<$Res, ChatSearchResponse>;
  @useResult
  $Res call({
    String? query,
    List<Map<String, dynamic>> results,
    Map<String, dynamic>? pagination,
  });
}

/// @nodoc
class _$ChatSearchResponseCopyWithImpl<$Res, $Val extends ChatSearchResponse>
    implements $ChatSearchResponseCopyWith<$Res> {
  _$ChatSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? results = null,
    Object? pagination = freezed,
  }) {
    return _then(
      _value.copyWith(
            query: freezed == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String?,
            results: null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<Map<String, dynamic>>,
            pagination: freezed == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatSearchResponseImplCopyWith<$Res>
    implements $ChatSearchResponseCopyWith<$Res> {
  factory _$$ChatSearchResponseImplCopyWith(
    _$ChatSearchResponseImpl value,
    $Res Function(_$ChatSearchResponseImpl) then,
  ) = __$$ChatSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? query,
    List<Map<String, dynamic>> results,
    Map<String, dynamic>? pagination,
  });
}

/// @nodoc
class __$$ChatSearchResponseImplCopyWithImpl<$Res>
    extends _$ChatSearchResponseCopyWithImpl<$Res, _$ChatSearchResponseImpl>
    implements _$$ChatSearchResponseImplCopyWith<$Res> {
  __$$ChatSearchResponseImplCopyWithImpl(
    _$ChatSearchResponseImpl _value,
    $Res Function(_$ChatSearchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? results = null,
    Object? pagination = freezed,
  }) {
    return _then(
      _$ChatSearchResponseImpl(
        query: freezed == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String?,
        results: null == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<Map<String, dynamic>>,
        pagination: freezed == pagination
            ? _value._pagination
            : pagination // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc

class _$ChatSearchResponseImpl implements _ChatSearchResponse {
  const _$ChatSearchResponseImpl({
    this.query,
    final List<Map<String, dynamic>> results = const [],
    final Map<String, dynamic>? pagination,
  }) : _results = results,
       _pagination = pagination;

  @override
  final String? query;
  final List<Map<String, dynamic>> _results;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final Map<String, dynamic>? _pagination;
  @override
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ChatSearchResponse(query: $query, results: $results, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSearchResponseImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(
              other._pagination,
              _pagination,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_results),
    const DeepCollectionEquality().hash(_pagination),
  );

  /// Create a copy of ChatSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSearchResponseImplCopyWith<_$ChatSearchResponseImpl> get copyWith =>
      __$$ChatSearchResponseImplCopyWithImpl<_$ChatSearchResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _ChatSearchResponse implements ChatSearchResponse {
  const factory _ChatSearchResponse({
    final String? query,
    final List<Map<String, dynamic>> results,
    final Map<String, dynamic>? pagination,
  }) = _$ChatSearchResponseImpl;

  @override
  String? get query;
  @override
  List<Map<String, dynamic>> get results;
  @override
  Map<String, dynamic>? get pagination;

  /// Create a copy of ChatSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSearchResponseImplCopyWith<_$ChatSearchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
