// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_cursor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaginationCursor {
  String? get beforeCursor => throw _privateConstructorUsedError;
  String? get afterCursor => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;
  bool get hasMoreBefore => throw _privateConstructorUsedError;
  bool get hasMoreAfter => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of PaginationCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationCursorCopyWith<PaginationCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCursorCopyWith<$Res> {
  factory $PaginationCursorCopyWith(
    PaginationCursor value,
    $Res Function(PaginationCursor) then,
  ) = _$PaginationCursorCopyWithImpl<$Res, PaginationCursor>;
  @useResult
  $Res call({
    String? beforeCursor,
    String? afterCursor,
    String? nextCursor,
    bool hasMoreBefore,
    bool hasMoreAfter,
    bool hasMore,
  });
}

/// @nodoc
class _$PaginationCursorCopyWithImpl<$Res, $Val extends PaginationCursor>
    implements $PaginationCursorCopyWith<$Res> {
  _$PaginationCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationCursor
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
abstract class _$$PaginationCursorImplCopyWith<$Res>
    implements $PaginationCursorCopyWith<$Res> {
  factory _$$PaginationCursorImplCopyWith(
    _$PaginationCursorImpl value,
    $Res Function(_$PaginationCursorImpl) then,
  ) = __$$PaginationCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? beforeCursor,
    String? afterCursor,
    String? nextCursor,
    bool hasMoreBefore,
    bool hasMoreAfter,
    bool hasMore,
  });
}

/// @nodoc
class __$$PaginationCursorImplCopyWithImpl<$Res>
    extends _$PaginationCursorCopyWithImpl<$Res, _$PaginationCursorImpl>
    implements _$$PaginationCursorImplCopyWith<$Res> {
  __$$PaginationCursorImplCopyWithImpl(
    _$PaginationCursorImpl _value,
    $Res Function(_$PaginationCursorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationCursor
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
      _$PaginationCursorImpl(
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

class _$PaginationCursorImpl implements _PaginationCursor {
  const _$PaginationCursorImpl({
    this.beforeCursor,
    this.afterCursor,
    this.nextCursor,
    this.hasMoreBefore = false,
    this.hasMoreAfter = false,
    this.hasMore = false,
  });

  @override
  final String? beforeCursor;
  @override
  final String? afterCursor;
  @override
  final String? nextCursor;
  @override
  @JsonKey()
  final bool hasMoreBefore;
  @override
  @JsonKey()
  final bool hasMoreAfter;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'PaginationCursor(beforeCursor: $beforeCursor, afterCursor: $afterCursor, nextCursor: $nextCursor, hasMoreBefore: $hasMoreBefore, hasMoreAfter: $hasMoreAfter, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationCursorImpl &&
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

  /// Create a copy of PaginationCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationCursorImplCopyWith<_$PaginationCursorImpl> get copyWith =>
      __$$PaginationCursorImplCopyWithImpl<_$PaginationCursorImpl>(
        this,
        _$identity,
      );
}

abstract class _PaginationCursor implements PaginationCursor {
  const factory _PaginationCursor({
    final String? beforeCursor,
    final String? afterCursor,
    final String? nextCursor,
    final bool hasMoreBefore,
    final bool hasMoreAfter,
    final bool hasMore,
  }) = _$PaginationCursorImpl;

  @override
  String? get beforeCursor;
  @override
  String? get afterCursor;
  @override
  String? get nextCursor;
  @override
  bool get hasMoreBefore;
  @override
  bool get hasMoreAfter;
  @override
  bool get hasMore;

  /// Create a copy of PaginationCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationCursorImplCopyWith<_$PaginationCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
