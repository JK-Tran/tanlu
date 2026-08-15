// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_cursor_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaginationCursorData _$PaginationCursorDataFromJson(Map<String, dynamic> json) {
  return _PaginationCursorData.fromJson(json);
}

/// @nodoc
mixin _$PaginationCursorData {
  @JsonKey(name: 'beforeCursor')
  String? get beforeCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'afterCursor')
  String? get afterCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextCursor')
  String? get nextCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMoreBefore')
  bool get hasMoreBefore => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMoreAfter')
  bool get hasMoreAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasMore')
  bool get hasMore => throw _privateConstructorUsedError;

  /// Serializes this PaginationCursorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationCursorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCursorDataCopyWith<PaginationCursorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCursorDataCopyWith<$Res> {
  factory $PaginationCursorDataCopyWith(
    PaginationCursorData value,
    $Res Function(PaginationCursorData) then,
  ) = _$PaginationCursorDataCopyWithImpl<$Res, PaginationCursorData>;
  @useResult
  $Res call({
    @JsonKey(name: 'beforeCursor') String? beforeCursor,
    @JsonKey(name: 'afterCursor') String? afterCursor,
    @JsonKey(name: 'nextCursor') String? nextCursor,
    @JsonKey(name: 'hasMoreBefore') bool hasMoreBefore,
    @JsonKey(name: 'hasMoreAfter') bool hasMoreAfter,
    @JsonKey(name: 'hasMore') bool hasMore,
  });
}

/// @nodoc
class _$PaginationCursorDataCopyWithImpl<
  $Res,
  $Val extends PaginationCursorData
>
    implements $PaginationCursorDataCopyWith<$Res> {
  _$PaginationCursorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationCursorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeCursor = freezed,
    Object? afterCursor = freezed,
    Object? nextCursor = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? hasMore = null,
  }) {
    return _then(
      _value.copyWith(
            beforeCursor: freezed == beforeCursor
                ? _value.beforeCursor
                : beforeCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            afterCursor: freezed == afterCursor
                ? _value.afterCursor
                : afterCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            nextCursor: freezed == nextCursor
                ? _value.nextCursor
                : nextCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasMoreBefore: null == hasMoreBefore
                ? _value.hasMoreBefore
                : hasMoreBefore // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMoreAfter: null == hasMoreAfter
                ? _value.hasMoreAfter
                : hasMoreAfter // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationCursorDataImplCopyWith<$Res>
    implements $PaginationCursorDataCopyWith<$Res> {
  factory _$$PaginationCursorDataImplCopyWith(
    _$PaginationCursorDataImpl value,
    $Res Function(_$PaginationCursorDataImpl) then,
  ) = __$$PaginationCursorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'beforeCursor') String? beforeCursor,
    @JsonKey(name: 'afterCursor') String? afterCursor,
    @JsonKey(name: 'nextCursor') String? nextCursor,
    @JsonKey(name: 'hasMoreBefore') bool hasMoreBefore,
    @JsonKey(name: 'hasMoreAfter') bool hasMoreAfter,
    @JsonKey(name: 'hasMore') bool hasMore,
  });
}

/// @nodoc
class __$$PaginationCursorDataImplCopyWithImpl<$Res>
    extends _$PaginationCursorDataCopyWithImpl<$Res, _$PaginationCursorDataImpl>
    implements _$$PaginationCursorDataImplCopyWith<$Res> {
  __$$PaginationCursorDataImplCopyWithImpl(
    _$PaginationCursorDataImpl _value,
    $Res Function(_$PaginationCursorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationCursorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeCursor = freezed,
    Object? afterCursor = freezed,
    Object? nextCursor = freezed,
    Object? hasMoreBefore = null,
    Object? hasMoreAfter = null,
    Object? hasMore = null,
  }) {
    return _then(
      _$PaginationCursorDataImpl(
        beforeCursor: freezed == beforeCursor
            ? _value.beforeCursor
            : beforeCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        afterCursor: freezed == afterCursor
            ? _value.afterCursor
            : afterCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        nextCursor: freezed == nextCursor
            ? _value.nextCursor
            : nextCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasMoreBefore: null == hasMoreBefore
            ? _value.hasMoreBefore
            : hasMoreBefore // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMoreAfter: null == hasMoreAfter
            ? _value.hasMoreAfter
            : hasMoreAfter // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationCursorDataImpl implements _PaginationCursorData {
  const _$PaginationCursorDataImpl({
    @JsonKey(name: 'beforeCursor') this.beforeCursor,
    @JsonKey(name: 'afterCursor') this.afterCursor,
    @JsonKey(name: 'nextCursor') this.nextCursor,
    @JsonKey(name: 'hasMoreBefore') this.hasMoreBefore = false,
    @JsonKey(name: 'hasMoreAfter') this.hasMoreAfter = false,
    @JsonKey(name: 'hasMore') this.hasMore = false,
  });

  factory _$PaginationCursorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationCursorDataImplFromJson(json);

  @override
  @JsonKey(name: 'beforeCursor')
  final String? beforeCursor;
  @override
  @JsonKey(name: 'afterCursor')
  final String? afterCursor;
  @override
  @JsonKey(name: 'nextCursor')
  final String? nextCursor;
  @override
  @JsonKey(name: 'hasMoreBefore')
  final bool hasMoreBefore;
  @override
  @JsonKey(name: 'hasMoreAfter')
  final bool hasMoreAfter;
  @override
  @JsonKey(name: 'hasMore')
  final bool hasMore;

  @override
  String toString() {
    return 'PaginationCursorData(beforeCursor: $beforeCursor, afterCursor: $afterCursor, nextCursor: $nextCursor, hasMoreBefore: $hasMoreBefore, hasMoreAfter: $hasMoreAfter, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationCursorDataImpl &&
            (identical(other.beforeCursor, beforeCursor) ||
                other.beforeCursor == beforeCursor) &&
            (identical(other.afterCursor, afterCursor) ||
                other.afterCursor == afterCursor) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasMoreBefore, hasMoreBefore) ||
                other.hasMoreBefore == hasMoreBefore) &&
            (identical(other.hasMoreAfter, hasMoreAfter) ||
                other.hasMoreAfter == hasMoreAfter) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    beforeCursor,
    afterCursor,
    nextCursor,
    hasMoreBefore,
    hasMoreAfter,
    hasMore,
  );

  /// Create a copy of PaginationCursorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationCursorDataImplCopyWith<_$PaginationCursorDataImpl>
  get copyWith =>
      __$$PaginationCursorDataImplCopyWithImpl<_$PaginationCursorDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationCursorDataImplToJson(this);
  }
}

abstract class _PaginationCursorData implements PaginationCursorData {
  const factory _PaginationCursorData({
    @JsonKey(name: 'beforeCursor') final String? beforeCursor,
    @JsonKey(name: 'afterCursor') final String? afterCursor,
    @JsonKey(name: 'nextCursor') final String? nextCursor,
    @JsonKey(name: 'hasMoreBefore') final bool hasMoreBefore,
    @JsonKey(name: 'hasMoreAfter') final bool hasMoreAfter,
    @JsonKey(name: 'hasMore') final bool hasMore,
  }) = _$PaginationCursorDataImpl;

  factory _PaginationCursorData.fromJson(Map<String, dynamic> json) =
      _$PaginationCursorDataImpl.fromJson;

  @override
  @JsonKey(name: 'beforeCursor')
  String? get beforeCursor;
  @override
  @JsonKey(name: 'afterCursor')
  String? get afterCursor;
  @override
  @JsonKey(name: 'nextCursor')
  String? get nextCursor;
  @override
  @JsonKey(name: 'hasMoreBefore')
  bool get hasMoreBefore;
  @override
  @JsonKey(name: 'hasMoreAfter')
  bool get hasMoreAfter;
  @override
  @JsonKey(name: 'hasMore')
  bool get hasMore;

  /// Create a copy of PaginationCursorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationCursorDataImplCopyWith<_$PaginationCursorDataImpl>
  get copyWith => throw _privateConstructorUsedError;
}
