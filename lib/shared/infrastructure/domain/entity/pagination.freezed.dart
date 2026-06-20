// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Pagination {
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
    Pagination value,
    $Res Function(Pagination) then,
  ) = _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({
    int currentPage,
    bool hasMore,
    int totalItems,
    int totalPage,
    int itemsPerPage,
  });
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasMore = null,
    Object? totalItems = null,
    Object? totalPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _value.copyWith(
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            totalItems: null == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPage: null == totalPage
                ? _value.totalPage
                : totalPage // ignore: cast_nullable_to_non_nullable
                      as int,
            itemsPerPage: null == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
    _$PaginationImpl value,
    $Res Function(_$PaginationImpl) then,
  ) = __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentPage,
    bool hasMore,
    int totalItems,
    int totalPage,
    int itemsPerPage,
  });
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
    _$PaginationImpl _value,
    $Res Function(_$PaginationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasMore = null,
    Object? totalItems = null,
    Object? totalPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _$PaginationImpl(
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        totalItems: null == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPage: null == totalPage
            ? _value.totalPage
            : totalPage // ignore: cast_nullable_to_non_nullable
                  as int,
        itemsPerPage: null == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl({
    this.currentPage = 1,
    this.hasMore = false,
    this.totalItems = 0,
    this.totalPage = 0,
    this.itemsPerPage = 0,
  });

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int totalItems;
  @override
  @JsonKey()
  final int totalPage;
  @override
  @JsonKey()
  final int itemsPerPage;

  @override
  String toString() {
    return 'Pagination(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPage,
    hasMore,
    totalItems,
    totalPage,
    itemsPerPage,
  );

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);
}

abstract class _Pagination implements Pagination {
  const factory _Pagination({
    final int currentPage,
    final bool hasMore,
    final int totalItems,
    final int totalPage,
    final int itemsPerPage,
  }) = _$PaginationImpl;

  @override
  int get currentPage;
  @override
  bool get hasMore;
  @override
  int get totalItems;
  @override
  int get totalPage;
  @override
  int get itemsPerPage;

  /// Create a copy of Pagination
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Pagination2 {
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPage => throw _privateConstructorUsedError;
  int get itemsPerPage => throw _privateConstructorUsedError;

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Pagination2CopyWith<Pagination2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Pagination2CopyWith<$Res> {
  factory $Pagination2CopyWith(
    Pagination2 value,
    $Res Function(Pagination2) then,
  ) = _$Pagination2CopyWithImpl<$Res, Pagination2>;
  @useResult
  $Res call({
    int currentPage,
    bool hasMore,
    int totalItems,
    int totalPage,
    int itemsPerPage,
  });
}

/// @nodoc
class _$Pagination2CopyWithImpl<$Res, $Val extends Pagination2>
    implements $Pagination2CopyWith<$Res> {
  _$Pagination2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasMore = null,
    Object? totalItems = null,
    Object? totalPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _value.copyWith(
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            totalItems: null == totalItems
                ? _value.totalItems
                : totalItems // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPage: null == totalPage
                ? _value.totalPage
                : totalPage // ignore: cast_nullable_to_non_nullable
                      as int,
            itemsPerPage: null == itemsPerPage
                ? _value.itemsPerPage
                : itemsPerPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$Pagination2ImplCopyWith<$Res>
    implements $Pagination2CopyWith<$Res> {
  factory _$$Pagination2ImplCopyWith(
    _$Pagination2Impl value,
    $Res Function(_$Pagination2Impl) then,
  ) = __$$Pagination2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentPage,
    bool hasMore,
    int totalItems,
    int totalPage,
    int itemsPerPage,
  });
}

/// @nodoc
class __$$Pagination2ImplCopyWithImpl<$Res>
    extends _$Pagination2CopyWithImpl<$Res, _$Pagination2Impl>
    implements _$$Pagination2ImplCopyWith<$Res> {
  __$$Pagination2ImplCopyWithImpl(
    _$Pagination2Impl _value,
    $Res Function(_$Pagination2Impl) _then,
  ) : super(_value, _then);

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? hasMore = null,
    Object? totalItems = null,
    Object? totalPage = null,
    Object? itemsPerPage = null,
  }) {
    return _then(
      _$Pagination2Impl(
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        totalItems: null == totalItems
            ? _value.totalItems
            : totalItems // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPage: null == totalPage
            ? _value.totalPage
            : totalPage // ignore: cast_nullable_to_non_nullable
                  as int,
        itemsPerPage: null == itemsPerPage
            ? _value.itemsPerPage
            : itemsPerPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$Pagination2Impl implements _Pagination2 {
  const _$Pagination2Impl({
    this.currentPage = 1,
    this.hasMore = false,
    this.totalItems = 0,
    this.totalPage = 0,
    this.itemsPerPage = 0,
  });

  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int totalItems;
  @override
  @JsonKey()
  final int totalPage;
  @override
  @JsonKey()
  final int itemsPerPage;

  @override
  String toString() {
    return 'Pagination2(currentPage: $currentPage, hasMore: $hasMore, totalItems: $totalItems, totalPage: $totalPage, itemsPerPage: $itemsPerPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Pagination2Impl &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPage,
    hasMore,
    totalItems,
    totalPage,
    itemsPerPage,
  );

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Pagination2ImplCopyWith<_$Pagination2Impl> get copyWith =>
      __$$Pagination2ImplCopyWithImpl<_$Pagination2Impl>(this, _$identity);
}

abstract class _Pagination2 implements Pagination2 {
  const factory _Pagination2({
    final int currentPage,
    final bool hasMore,
    final int totalItems,
    final int totalPage,
    final int itemsPerPage,
  }) = _$Pagination2Impl;

  @override
  int get currentPage;
  @override
  bool get hasMore;
  @override
  int get totalItems;
  @override
  int get totalPage;
  @override
  int get itemsPerPage;

  /// Create a copy of Pagination2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Pagination2ImplCopyWith<_$Pagination2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
