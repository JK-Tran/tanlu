// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_author_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeedAuthorData _$FeedAuthorDataFromJson(Map<String, dynamic> json) {
  return _FeedAuthorData.fromJson(json);
}

/// @nodoc
mixin _$FeedAuthorData {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this FeedAuthorData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedAuthorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedAuthorDataCopyWith<FeedAuthorData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedAuthorDataCopyWith<$Res> {
  factory $FeedAuthorDataCopyWith(
    FeedAuthorData value,
    $Res Function(FeedAuthorData) then,
  ) = _$FeedAuthorDataCopyWithImpl<$Res, FeedAuthorData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  });
}

/// @nodoc
class _$FeedAuthorDataCopyWithImpl<$Res, $Val extends FeedAuthorData>
    implements $FeedAuthorDataCopyWith<$Res> {
  _$FeedAuthorDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedAuthorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeedAuthorDataImplCopyWith<$Res>
    implements $FeedAuthorDataCopyWith<$Res> {
  factory _$$FeedAuthorDataImplCopyWith(
    _$FeedAuthorDataImpl value,
    $Res Function(_$FeedAuthorDataImpl) then,
  ) = __$$FeedAuthorDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  });
}

/// @nodoc
class __$$FeedAuthorDataImplCopyWithImpl<$Res>
    extends _$FeedAuthorDataCopyWithImpl<$Res, _$FeedAuthorDataImpl>
    implements _$$FeedAuthorDataImplCopyWith<$Res> {
  __$$FeedAuthorDataImplCopyWithImpl(
    _$FeedAuthorDataImpl _value,
    $Res Function(_$FeedAuthorDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeedAuthorData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$FeedAuthorDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedAuthorDataImpl implements _FeedAuthorData {
  const _$FeedAuthorDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
  });

  factory _$FeedAuthorDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedAuthorDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;

  @override
  String toString() {
    return 'FeedAuthorData(id: $id, fullName: $fullName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedAuthorDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avatarUrl);

  /// Create a copy of FeedAuthorData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedAuthorDataImplCopyWith<_$FeedAuthorDataImpl> get copyWith =>
      __$$FeedAuthorDataImplCopyWithImpl<_$FeedAuthorDataImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedAuthorDataImplToJson(this);
  }
}

abstract class _FeedAuthorData implements FeedAuthorData {
  const factory _FeedAuthorData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
  }) = _$FeedAuthorDataImpl;

  factory _FeedAuthorData.fromJson(Map<String, dynamic> json) =
      _$FeedAuthorDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;

  /// Create a copy of FeedAuthorData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedAuthorDataImplCopyWith<_$FeedAuthorDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
