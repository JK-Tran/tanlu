// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) {
  return _PaginationData.fromJson(json);
}

/// @nodoc
mixin _$PaginationData {
  @JsonKey(name: 'page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMore')
  bool? get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPages')
  int? get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int? get itemsPerPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationDataCopyWith<PaginationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationDataCopyWith<$Res> {
  factory $PaginationDataCopyWith(
    PaginationData value,
    $Res Function(PaginationData) then,
  ) = _$PaginationDataCopyWithImpl<$Res, PaginationData>;
  @useResult
  $Res call({
    @JsonKey(name: 'page') int? currentPage,
    @JsonKey(name: 'hasMore') bool? hasMore,
    @JsonKey(name: 'total') int? totalItems,
    @JsonKey(name: 'totalPages') int? totalPage,
    @JsonKey(name: 'limit') int? itemsPerPage,
  });
}

/// @nodoc
class _$PaginationDataCopyWithImpl<$Res, $Val extends PaginationData>
    implements $PaginationDataCopyWith<$Res> {
  _$PaginationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasMore = freezed,
    Object? totalItems = freezed,
    Object? totalPage = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentPage: freezed == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            hasMore: freezed == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool?,
            totalItems: freezed == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPage: freezed == totalPage
                ? _value.totalPage
                : totalPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemsPerPage: freezed == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationDataImplCopyWith<$Res>
    implements $PaginationDataCopyWith<$Res> {
  factory _$$PaginationDataImplCopyWith(
    _$PaginationDataImpl value,
    $Res Function(_$PaginationDataImpl) then,
  ) = __$$PaginationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'page') int? currentPage,
    @JsonKey(name: 'hasMore') bool? hasMore,
    @JsonKey(name: 'total') int? totalItems,
    @JsonKey(name: 'totalPages') int? totalPage,
    @JsonKey(name: 'limit') int? itemsPerPage,
  });
}

/// @nodoc
class __$$PaginationDataImplCopyWithImpl<$Res>
    extends _$PaginationDataCopyWithImpl<$Res, _$PaginationDataImpl>
    implements _$$PaginationDataImplCopyWith<$Res> {
  __$$PaginationDataImplCopyWithImpl(
    _$PaginationDataImpl _value,
    $Res Function(_$PaginationDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasMore = freezed,
    Object? totalItems = freezed,
    Object? totalPage = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(
      _$PaginationDataImpl(
        currentPage: freezed == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        hasMore: freezed == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool?,
        totalItems: freezed == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPage: freezed == totalPage
            ? _value.totalPage
            : totalPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemsPerPage: freezed == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationDataImpl extends _PaginationData {
  const _$PaginationDataImpl({
    @JsonKey(name: 'page') this.currentPage,
    @JsonKey(name: 'hasMore') this.hasMore,
    @JsonKey(name: 'total') this.totalItems,
    @JsonKey(name: 'totalPages') this.totalPage,
    @JsonKey(name: 'limit') this.itemsPerPage,
  }) : super._();

  factory _$PaginationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationDataImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int? currentPage;
  @override
  @JsonKey(name: 'hasMore')
  final bool? hasMore;
  @override
  @JsonKey(name: 'total')
  final int? totalItems;
  @override
  @JsonKey(name: 'totalPages')
  final int? totalPage;
  @override
  @JsonKey(name: 'limit')
  final int? itemsPerPage;

  @override
  String toString() {
    return 'PaginationData(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPage,
    hasMore,
    totalItems,
    totalPage,
    itemsPerPage,
  );

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      __$$PaginationDataImplCopyWithImpl<_$PaginationDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationDataImplToJson(this);
  }
}

abstract class _PaginationData extends PaginationData {
  const factory _PaginationData({
    @JsonKey(name: 'page') final int? currentPage,
    @JsonKey(name: 'hasMore') final bool? hasMore,
    @JsonKey(name: 'total') final int? totalItems,
    @JsonKey(name: 'totalPages') final int? totalPage,
    @JsonKey(name: 'limit') final int? itemsPerPage,
  }) = _$PaginationDataImpl;
  const _PaginationData._() : super._();

  factory _PaginationData.fromJson(Map<String, dynamic> json) =
      _$PaginationDataImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int? get currentPage;
  @override
  @JsonKey(name: 'hasMore')
  bool? get hasMore;
  @override
  @JsonKey(name: 'total')
  int? get totalItems;
  @override
  @JsonKey(name: 'totalPages')
  int? get totalPage;
  @override
  @JsonKey(name: 'limit')
  int? get itemsPerPage;

  /// Create a copy of PaginationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationDataImplCopyWith<_$PaginationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationData2 _$PaginationData2FromJson(Map<String, dynamic> json) {
  return _PaginationData2.fromJson(json);
}

/// @nodoc
mixin _$PaginationData2 {
  @JsonKey(name: 'current_page')
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_more')
  bool? get hasMore => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_items')
  int? get totalItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_page')
  int? get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_per_page')
  int? get itemsPerPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationData2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationData2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationData2CopyWith<PaginationData2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationData2CopyWith<$Res> {
  factory $PaginationData2CopyWith(
    PaginationData2 value,
    $Res Function(PaginationData2) then,
  ) = _$PaginationData2CopyWithImpl<$Res, PaginationData2>;
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'has_more') bool? hasMore,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'total_page') int? totalPage,
    @JsonKey(name: 'items_per_page') int? itemsPerPage,
  });
}

/// @nodoc
class _$PaginationData2CopyWithImpl<$Res, $Val extends PaginationData2>
    implements $PaginationData2CopyWith<$Res> {
  _$PaginationData2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationData2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasMore = freezed,
    Object? totalItems = freezed,
    Object? totalPage = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(
      _value.copyWith(
            currentPage: freezed == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            hasMore: freezed == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool?,
            totalItems: freezed == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int?,
            totalPage: freezed == totalPage
                ? _value.totalPage
                : totalPage // ignore: cast_nullable_to_non_nullable
                      as int?,
            itemsPerPage: freezed == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationData2ImplCopyWith<$Res>
    implements $PaginationData2CopyWith<$Res> {
  factory _$$PaginationData2ImplCopyWith(
    _$PaginationData2Impl value,
    $Res Function(_$PaginationData2Impl) then,
  ) = __$$PaginationData2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'has_more') bool? hasMore,
    @JsonKey(name: 'total_items') int? totalItems,
    @JsonKey(name: 'total_page') int? totalPage,
    @JsonKey(name: 'items_per_page') int? itemsPerPage,
  });
}

/// @nodoc
class __$$PaginationData2ImplCopyWithImpl<$Res>
    extends _$PaginationData2CopyWithImpl<$Res, _$PaginationData2Impl>
    implements _$$PaginationData2ImplCopyWith<$Res> {
  __$$PaginationData2ImplCopyWithImpl(
    _$PaginationData2Impl _value,
    $Res Function(_$PaginationData2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationData2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? hasMore = freezed,
    Object? totalItems = freezed,
    Object? totalPage = freezed,
    Object? itemsPerPage = freezed,
  }) {
    return _then(
      _$PaginationData2Impl(
        currentPage: freezed == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        hasMore: freezed == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool?,
        totalItems: freezed == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int?,
        totalPage: freezed == totalPage
            ? _value.totalPage
            : totalPage // ignore: cast_nullable_to_non_nullable
                  as int?,
        itemsPerPage: freezed == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationData2Impl extends _PaginationData2 {
  const _$PaginationData2Impl({
    @JsonKey(name: 'current_page') this.currentPage,
    @JsonKey(name: 'has_more') this.hasMore,
    @JsonKey(name: 'total_items') this.totalItems,
    @JsonKey(name: 'total_page') this.totalPage,
    @JsonKey(name: 'items_per_page') this.itemsPerPage,
  }) : super._();

  factory _$PaginationData2Impl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationData2ImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int? currentPage;
  @override
  @JsonKey(name: 'has_more')
  final bool? hasMore;
  @override
  @JsonKey(name: 'total_items')
  final int? totalItems;
  @override
  @JsonKey(name: 'total_page')
  final int? totalPage;
  @override
  @JsonKey(name: 'items_per_page')
  final int? itemsPerPage;

  @override
  String toString() {
    return 'PaginationData2(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationData2Impl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.itemsPerPage, itemsPerPage) ||
                other.itemsPerPage == itemsPerPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPage,
    hasMore,
    totalItems,
    totalPage,
    itemsPerPage,
  );

  /// Create a copy of PaginationData2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationData2ImplCopyWith<_$PaginationData2Impl> get copyWith =>
      __$$PaginationData2ImplCopyWithImpl<_$PaginationData2Impl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationData2ImplToJson(this);
  }
}

abstract class _PaginationData2 extends PaginationData2 {
  const factory _PaginationData2({
    @JsonKey(name: 'current_page') final int? currentPage,
    @JsonKey(name: 'has_more') final bool? hasMore,
    @JsonKey(name: 'total_items') final int? totalItems,
    @JsonKey(name: 'total_page') final int? totalPage,
    @JsonKey(name: 'items_per_page') final int? itemsPerPage,
  }) = _$PaginationData2Impl;
  const _PaginationData2._() : super._();

  factory _PaginationData2.fromJson(Map<String, dynamic> json) =
      _$PaginationData2Impl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int? get currentPage;
  @override
  @JsonKey(name: 'has_more')
  bool? get hasMore;
  @override
  @JsonKey(name: 'total_items')
  int? get totalItems;
  @override
  @JsonKey(name: 'total_page')
  int? get totalPage;
  @override
  @JsonKey(name: 'items_per_page')
  int? get itemsPerPage;

  /// Create a copy of PaginationData2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationData2ImplCopyWith<_$PaginationData2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
