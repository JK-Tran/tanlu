// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_search_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatSearchResponseData _$ChatSearchResponseDataFromJson(
  Map<String, dynamic> json,
) {
  return _ChatSearchResponseData.fromJson(json);
}

/// @nodoc
mixin _$ChatSearchResponseData {
  @JsonKey(name: 'query')
  String? get query => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  Map<String, dynamic>? get pagination => throw _privateConstructorUsedError;

  /// Serializes this ChatSearchResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatSearchResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSearchResponseDataCopyWith<ChatSearchResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSearchResponseDataCopyWith<$Res> {
  factory $ChatSearchResponseDataCopyWith(
    ChatSearchResponseData value,
    $Res Function(ChatSearchResponseData) then,
  ) = _$ChatSearchResponseDataCopyWithImpl<$Res, ChatSearchResponseData>;
  @useResult
  $Res call({
    @JsonKey(name: 'query') String? query,
    @JsonKey(name: 'results') List<Map<String, dynamic>> results,
    @JsonKey(name: 'pagination') Map<String, dynamic>? pagination,
  });
}

/// @nodoc
class _$ChatSearchResponseDataCopyWithImpl<
  $Res,
  $Val extends ChatSearchResponseData
>
    implements $ChatSearchResponseDataCopyWith<$Res> {
  _$ChatSearchResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSearchResponseData
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
abstract class _$$ChatSearchResponseDataImplCopyWith<$Res>
    implements $ChatSearchResponseDataCopyWith<$Res> {
  factory _$$ChatSearchResponseDataImplCopyWith(
    _$ChatSearchResponseDataImpl value,
    $Res Function(_$ChatSearchResponseDataImpl) then,
  ) = __$$ChatSearchResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'query') String? query,
    @JsonKey(name: 'results') List<Map<String, dynamic>> results,
    @JsonKey(name: 'pagination') Map<String, dynamic>? pagination,
  });
}

/// @nodoc
class __$$ChatSearchResponseDataImplCopyWithImpl<$Res>
    extends
        _$ChatSearchResponseDataCopyWithImpl<$Res, _$ChatSearchResponseDataImpl>
    implements _$$ChatSearchResponseDataImplCopyWith<$Res> {
  __$$ChatSearchResponseDataImplCopyWithImpl(
    _$ChatSearchResponseDataImpl _value,
    $Res Function(_$ChatSearchResponseDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSearchResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? results = null,
    Object? pagination = freezed,
  }) {
    return _then(
      _$ChatSearchResponseDataImpl(
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
@JsonSerializable()
class _$ChatSearchResponseDataImpl implements _ChatSearchResponseData {
  const _$ChatSearchResponseDataImpl({
    @JsonKey(name: 'query') this.query,
    @JsonKey(name: 'results')
    final List<Map<String, dynamic>> results = const [],
    @JsonKey(name: 'pagination') final Map<String, dynamic>? pagination,
  }) : _results = results,
       _pagination = pagination;

  factory _$ChatSearchResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSearchResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'query')
  final String? query;
  final List<Map<String, dynamic>> _results;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  final Map<String, dynamic>? _pagination;
  @override
  @JsonKey(name: 'pagination')
  Map<String, dynamic>? get pagination {
    final value = _pagination;
    if (value == null) return null;
    if (_pagination is EqualUnmodifiableMapView) return _pagination;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ChatSearchResponseData(query: $query, results: $results, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSearchResponseDataImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality().equals(
              other._pagination,
              _pagination,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    const DeepCollectionEquality().hash(_results),
    const DeepCollectionEquality().hash(_pagination),
  );

  /// Create a copy of ChatSearchResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSearchResponseDataImplCopyWith<_$ChatSearchResponseDataImpl>
  get copyWith =>
      __$$ChatSearchResponseDataImplCopyWithImpl<_$ChatSearchResponseDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSearchResponseDataImplToJson(this);
  }
}

abstract class _ChatSearchResponseData implements ChatSearchResponseData {
  const factory _ChatSearchResponseData({
    @JsonKey(name: 'query') final String? query,
    @JsonKey(name: 'results') final List<Map<String, dynamic>> results,
    @JsonKey(name: 'pagination') final Map<String, dynamic>? pagination,
  }) = _$ChatSearchResponseDataImpl;

  factory _ChatSearchResponseData.fromJson(Map<String, dynamic> json) =
      _$ChatSearchResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'query')
  String? get query;
  @override
  @JsonKey(name: 'results')
  List<Map<String, dynamic>> get results;
  @override
  @JsonKey(name: 'pagination')
  Map<String, dynamic>? get pagination;

  /// Create a copy of ChatSearchResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSearchResponseDataImplCopyWith<_$ChatSearchResponseDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
