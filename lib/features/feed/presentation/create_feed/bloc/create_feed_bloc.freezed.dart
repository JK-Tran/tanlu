// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CreateFeedStarted {
  String get authorId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get classId => throw _privateConstructorUsedError;
  String get centerId => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedStartedCopyWith<CreateFeedStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedStartedCopyWith<$Res> {
  factory $CreateFeedStartedCopyWith(
    CreateFeedStarted value,
    $Res Function(CreateFeedStarted) then,
  ) = _$CreateFeedStartedCopyWithImpl<$Res, CreateFeedStarted>;
  @useResult
  $Res call({
    String authorId,
    String fullName,
    String avatar,
    String role,
    String classId,
    String centerId,
  });
}

/// @nodoc
class _$CreateFeedStartedCopyWithImpl<$Res, $Val extends CreateFeedStarted>
    implements $CreateFeedStartedCopyWith<$Res> {
  _$CreateFeedStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? classId = null,
    Object? centerId = null,
  }) {
    return _then(
      _value.copyWith(
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            centerId: null == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedStartedImplCopyWith<$Res>
    implements $CreateFeedStartedCopyWith<$Res> {
  factory _$$CreateFeedStartedImplCopyWith(
    _$CreateFeedStartedImpl value,
    $Res Function(_$CreateFeedStartedImpl) then,
  ) = __$$CreateFeedStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String authorId,
    String fullName,
    String avatar,
    String role,
    String classId,
    String centerId,
  });
}

/// @nodoc
class __$$CreateFeedStartedImplCopyWithImpl<$Res>
    extends _$CreateFeedStartedCopyWithImpl<$Res, _$CreateFeedStartedImpl>
    implements _$$CreateFeedStartedImplCopyWith<$Res> {
  __$$CreateFeedStartedImplCopyWithImpl(
    _$CreateFeedStartedImpl _value,
    $Res Function(_$CreateFeedStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? classId = null,
    Object? centerId = null,
  }) {
    return _then(
      _$CreateFeedStartedImpl(
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: null == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        centerId: null == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedStartedImpl implements _CreateFeedStarted {
  const _$CreateFeedStartedImpl({
    required this.authorId,
    required this.fullName,
    this.avatar = '',
    required this.role,
    required this.classId,
    this.centerId = '',
  });

  @override
  final String authorId;
  @override
  final String fullName;
  @override
  @JsonKey()
  final String avatar;
  @override
  final String role;
  @override
  final String classId;
  @override
  @JsonKey()
  final String centerId;

  @override
  String toString() {
    return 'CreateFeedStarted(authorId: $authorId, fullName: $fullName, avatar: $avatar, role: $role, classId: $classId, centerId: $centerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedStartedImpl &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    authorId,
    fullName,
    avatar,
    role,
    classId,
    centerId,
  );

  /// Create a copy of CreateFeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedStartedImplCopyWith<_$CreateFeedStartedImpl> get copyWith =>
      __$$CreateFeedStartedImplCopyWithImpl<_$CreateFeedStartedImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedStarted implements CreateFeedStarted {
  const factory _CreateFeedStarted({
    required final String authorId,
    required final String fullName,
    final String avatar,
    required final String role,
    required final String classId,
    final String centerId,
  }) = _$CreateFeedStartedImpl;

  @override
  String get authorId;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  String get role;
  @override
  String get classId;
  @override
  String get centerId;

  /// Create a copy of CreateFeedStarted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedStartedImplCopyWith<_$CreateFeedStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedContentChanged {
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedContentChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedContentChangedCopyWith<CreateFeedContentChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedContentChangedCopyWith<$Res> {
  factory $CreateFeedContentChangedCopyWith(
    CreateFeedContentChanged value,
    $Res Function(CreateFeedContentChanged) then,
  ) = _$CreateFeedContentChangedCopyWithImpl<$Res, CreateFeedContentChanged>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$CreateFeedContentChangedCopyWithImpl<
  $Res,
  $Val extends CreateFeedContentChanged
>
    implements $CreateFeedContentChangedCopyWith<$Res> {
  _$CreateFeedContentChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedContentChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedContentChangedImplCopyWith<$Res>
    implements $CreateFeedContentChangedCopyWith<$Res> {
  factory _$$CreateFeedContentChangedImplCopyWith(
    _$CreateFeedContentChangedImpl value,
    $Res Function(_$CreateFeedContentChangedImpl) then,
  ) = __$$CreateFeedContentChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$CreateFeedContentChangedImplCopyWithImpl<$Res>
    extends
        _$CreateFeedContentChangedCopyWithImpl<
          $Res,
          _$CreateFeedContentChangedImpl
        >
    implements _$$CreateFeedContentChangedImplCopyWith<$Res> {
  __$$CreateFeedContentChangedImplCopyWithImpl(
    _$CreateFeedContentChangedImpl _value,
    $Res Function(_$CreateFeedContentChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedContentChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null}) {
    return _then(
      _$CreateFeedContentChangedImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedContentChangedImpl implements _CreateFeedContentChanged {
  const _$CreateFeedContentChangedImpl({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'CreateFeedContentChanged(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedContentChangedImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of CreateFeedContentChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedContentChangedImplCopyWith<_$CreateFeedContentChangedImpl>
  get copyWith =>
      __$$CreateFeedContentChangedImplCopyWithImpl<
        _$CreateFeedContentChangedImpl
      >(this, _$identity);
}

abstract class _CreateFeedContentChanged implements CreateFeedContentChanged {
  const factory _CreateFeedContentChanged({required final String content}) =
      _$CreateFeedContentChangedImpl;

  @override
  String get content;

  /// Create a copy of CreateFeedContentChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedContentChangedImplCopyWith<_$CreateFeedContentChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedIsPublicChanged {
  bool get isPublic => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedIsPublicChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedIsPublicChangedCopyWith<CreateFeedIsPublicChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedIsPublicChangedCopyWith<$Res> {
  factory $CreateFeedIsPublicChangedCopyWith(
    CreateFeedIsPublicChanged value,
    $Res Function(CreateFeedIsPublicChanged) then,
  ) = _$CreateFeedIsPublicChangedCopyWithImpl<$Res, CreateFeedIsPublicChanged>;
  @useResult
  $Res call({bool isPublic});
}

/// @nodoc
class _$CreateFeedIsPublicChangedCopyWithImpl<
  $Res,
  $Val extends CreateFeedIsPublicChanged
>
    implements $CreateFeedIsPublicChangedCopyWith<$Res> {
  _$CreateFeedIsPublicChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedIsPublicChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isPublic = null}) {
    return _then(
      _value.copyWith(
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedIsPublicChangedImplCopyWith<$Res>
    implements $CreateFeedIsPublicChangedCopyWith<$Res> {
  factory _$$CreateFeedIsPublicChangedImplCopyWith(
    _$CreateFeedIsPublicChangedImpl value,
    $Res Function(_$CreateFeedIsPublicChangedImpl) then,
  ) = __$$CreateFeedIsPublicChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPublic});
}

/// @nodoc
class __$$CreateFeedIsPublicChangedImplCopyWithImpl<$Res>
    extends
        _$CreateFeedIsPublicChangedCopyWithImpl<
          $Res,
          _$CreateFeedIsPublicChangedImpl
        >
    implements _$$CreateFeedIsPublicChangedImplCopyWith<$Res> {
  __$$CreateFeedIsPublicChangedImplCopyWithImpl(
    _$CreateFeedIsPublicChangedImpl _value,
    $Res Function(_$CreateFeedIsPublicChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedIsPublicChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isPublic = null}) {
    return _then(
      _$CreateFeedIsPublicChangedImpl(
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedIsPublicChangedImpl implements _CreateFeedIsPublicChanged {
  const _$CreateFeedIsPublicChangedImpl({required this.isPublic});

  @override
  final bool isPublic;

  @override
  String toString() {
    return 'CreateFeedIsPublicChanged(isPublic: $isPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedIsPublicChangedImpl &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPublic);

  /// Create a copy of CreateFeedIsPublicChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedIsPublicChangedImplCopyWith<_$CreateFeedIsPublicChangedImpl>
  get copyWith =>
      __$$CreateFeedIsPublicChangedImplCopyWithImpl<
        _$CreateFeedIsPublicChangedImpl
      >(this, _$identity);
}

abstract class _CreateFeedIsPublicChanged implements CreateFeedIsPublicChanged {
  const factory _CreateFeedIsPublicChanged({required final bool isPublic}) =
      _$CreateFeedIsPublicChangedImpl;

  @override
  bool get isPublic;

  /// Create a copy of CreateFeedIsPublicChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedIsPublicChangedImplCopyWith<_$CreateFeedIsPublicChangedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedAllowCommentsChanged {
  bool get allowComments => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedAllowCommentsChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedAllowCommentsChangedCopyWith<CreateFeedAllowCommentsChanged>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedAllowCommentsChangedCopyWith<$Res> {
  factory $CreateFeedAllowCommentsChangedCopyWith(
    CreateFeedAllowCommentsChanged value,
    $Res Function(CreateFeedAllowCommentsChanged) then,
  ) =
      _$CreateFeedAllowCommentsChangedCopyWithImpl<
        $Res,
        CreateFeedAllowCommentsChanged
      >;
  @useResult
  $Res call({bool allowComments});
}

/// @nodoc
class _$CreateFeedAllowCommentsChangedCopyWithImpl<
  $Res,
  $Val extends CreateFeedAllowCommentsChanged
>
    implements $CreateFeedAllowCommentsChangedCopyWith<$Res> {
  _$CreateFeedAllowCommentsChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedAllowCommentsChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? allowComments = null}) {
    return _then(
      _value.copyWith(
            allowComments: null == allowComments
                ? _value.allowComments
                : allowComments // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedAllowCommentsChangedImplCopyWith<$Res>
    implements $CreateFeedAllowCommentsChangedCopyWith<$Res> {
  factory _$$CreateFeedAllowCommentsChangedImplCopyWith(
    _$CreateFeedAllowCommentsChangedImpl value,
    $Res Function(_$CreateFeedAllowCommentsChangedImpl) then,
  ) = __$$CreateFeedAllowCommentsChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool allowComments});
}

/// @nodoc
class __$$CreateFeedAllowCommentsChangedImplCopyWithImpl<$Res>
    extends
        _$CreateFeedAllowCommentsChangedCopyWithImpl<
          $Res,
          _$CreateFeedAllowCommentsChangedImpl
        >
    implements _$$CreateFeedAllowCommentsChangedImplCopyWith<$Res> {
  __$$CreateFeedAllowCommentsChangedImplCopyWithImpl(
    _$CreateFeedAllowCommentsChangedImpl _value,
    $Res Function(_$CreateFeedAllowCommentsChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedAllowCommentsChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? allowComments = null}) {
    return _then(
      _$CreateFeedAllowCommentsChangedImpl(
        allowComments: null == allowComments
            ? _value.allowComments
            : allowComments // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedAllowCommentsChangedImpl
    implements _CreateFeedAllowCommentsChanged {
  const _$CreateFeedAllowCommentsChangedImpl({required this.allowComments});

  @override
  final bool allowComments;

  @override
  String toString() {
    return 'CreateFeedAllowCommentsChanged(allowComments: $allowComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedAllowCommentsChangedImpl &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allowComments);

  /// Create a copy of CreateFeedAllowCommentsChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedAllowCommentsChangedImplCopyWith<
    _$CreateFeedAllowCommentsChangedImpl
  >
  get copyWith =>
      __$$CreateFeedAllowCommentsChangedImplCopyWithImpl<
        _$CreateFeedAllowCommentsChangedImpl
      >(this, _$identity);
}

abstract class _CreateFeedAllowCommentsChanged
    implements CreateFeedAllowCommentsChanged {
  const factory _CreateFeedAllowCommentsChanged({
    required final bool allowComments,
  }) = _$CreateFeedAllowCommentsChangedImpl;

  @override
  bool get allowComments;

  /// Create a copy of CreateFeedAllowCommentsChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedAllowCommentsChangedImplCopyWith<
    _$CreateFeedAllowCommentsChangedImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedMediaPicked {
  List<({bool isVideo, String path})> get items =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedMediaPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedMediaPickedCopyWith<CreateFeedMediaPicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedMediaPickedCopyWith<$Res> {
  factory $CreateFeedMediaPickedCopyWith(
    CreateFeedMediaPicked value,
    $Res Function(CreateFeedMediaPicked) then,
  ) = _$CreateFeedMediaPickedCopyWithImpl<$Res, CreateFeedMediaPicked>;
  @useResult
  $Res call({List<({bool isVideo, String path})> items});
}

/// @nodoc
class _$CreateFeedMediaPickedCopyWithImpl<
  $Res,
  $Val extends CreateFeedMediaPicked
>
    implements $CreateFeedMediaPickedCopyWith<$Res> {
  _$CreateFeedMediaPickedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedMediaPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<({bool isVideo, String path})>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedMediaPickedImplCopyWith<$Res>
    implements $CreateFeedMediaPickedCopyWith<$Res> {
  factory _$$CreateFeedMediaPickedImplCopyWith(
    _$CreateFeedMediaPickedImpl value,
    $Res Function(_$CreateFeedMediaPickedImpl) then,
  ) = __$$CreateFeedMediaPickedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<({bool isVideo, String path})> items});
}

/// @nodoc
class __$$CreateFeedMediaPickedImplCopyWithImpl<$Res>
    extends
        _$CreateFeedMediaPickedCopyWithImpl<$Res, _$CreateFeedMediaPickedImpl>
    implements _$$CreateFeedMediaPickedImplCopyWith<$Res> {
  __$$CreateFeedMediaPickedImplCopyWithImpl(
    _$CreateFeedMediaPickedImpl _value,
    $Res Function(_$CreateFeedMediaPickedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedMediaPicked
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$CreateFeedMediaPickedImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<({bool isVideo, String path})>,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedMediaPickedImpl implements _CreateFeedMediaPicked {
  const _$CreateFeedMediaPickedImpl({
    required final List<({bool isVideo, String path})> items,
  }) : _items = items;

  final List<({bool isVideo, String path})> _items;
  @override
  List<({bool isVideo, String path})> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CreateFeedMediaPicked(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedMediaPickedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CreateFeedMediaPicked
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedMediaPickedImplCopyWith<_$CreateFeedMediaPickedImpl>
  get copyWith =>
      __$$CreateFeedMediaPickedImplCopyWithImpl<_$CreateFeedMediaPickedImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedMediaPicked implements CreateFeedMediaPicked {
  const factory _CreateFeedMediaPicked({
    required final List<({bool isVideo, String path})> items,
  }) = _$CreateFeedMediaPickedImpl;

  @override
  List<({bool isVideo, String path})> get items;

  /// Create a copy of CreateFeedMediaPicked
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedMediaPickedImplCopyWith<_$CreateFeedMediaPickedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedMediaRemoved {
  int get index => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedMediaRemoved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedMediaRemovedCopyWith<CreateFeedMediaRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedMediaRemovedCopyWith<$Res> {
  factory $CreateFeedMediaRemovedCopyWith(
    CreateFeedMediaRemoved value,
    $Res Function(CreateFeedMediaRemoved) then,
  ) = _$CreateFeedMediaRemovedCopyWithImpl<$Res, CreateFeedMediaRemoved>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$CreateFeedMediaRemovedCopyWithImpl<
  $Res,
  $Val extends CreateFeedMediaRemoved
>
    implements $CreateFeedMediaRemovedCopyWith<$Res> {
  _$CreateFeedMediaRemovedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedMediaRemoved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _value.copyWith(
            index: null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedMediaRemovedImplCopyWith<$Res>
    implements $CreateFeedMediaRemovedCopyWith<$Res> {
  factory _$$CreateFeedMediaRemovedImplCopyWith(
    _$CreateFeedMediaRemovedImpl value,
    $Res Function(_$CreateFeedMediaRemovedImpl) then,
  ) = __$$CreateFeedMediaRemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$CreateFeedMediaRemovedImplCopyWithImpl<$Res>
    extends
        _$CreateFeedMediaRemovedCopyWithImpl<$Res, _$CreateFeedMediaRemovedImpl>
    implements _$$CreateFeedMediaRemovedImplCopyWith<$Res> {
  __$$CreateFeedMediaRemovedImplCopyWithImpl(
    _$CreateFeedMediaRemovedImpl _value,
    $Res Function(_$CreateFeedMediaRemovedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedMediaRemoved
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$CreateFeedMediaRemovedImpl(
        index: null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedMediaRemovedImpl implements _CreateFeedMediaRemoved {
  const _$CreateFeedMediaRemovedImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CreateFeedMediaRemoved(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedMediaRemovedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of CreateFeedMediaRemoved
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedMediaRemovedImplCopyWith<_$CreateFeedMediaRemovedImpl>
  get copyWith =>
      __$$CreateFeedMediaRemovedImplCopyWithImpl<_$CreateFeedMediaRemovedImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedMediaRemoved implements CreateFeedMediaRemoved {
  const factory _CreateFeedMediaRemoved({required final int index}) =
      _$CreateFeedMediaRemovedImpl;

  @override
  int get index;

  /// Create a copy of CreateFeedMediaRemoved
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedMediaRemovedImplCopyWith<_$CreateFeedMediaRemovedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFeedSubmitted {}

/// @nodoc
abstract class $CreateFeedSubmittedCopyWith<$Res> {
  factory $CreateFeedSubmittedCopyWith(
    CreateFeedSubmitted value,
    $Res Function(CreateFeedSubmitted) then,
  ) = _$CreateFeedSubmittedCopyWithImpl<$Res, CreateFeedSubmitted>;
}

/// @nodoc
class _$CreateFeedSubmittedCopyWithImpl<$Res, $Val extends CreateFeedSubmitted>
    implements $CreateFeedSubmittedCopyWith<$Res> {
  _$CreateFeedSubmittedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedSubmitted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateFeedSubmittedImplCopyWith<$Res> {
  factory _$$CreateFeedSubmittedImplCopyWith(
    _$CreateFeedSubmittedImpl value,
    $Res Function(_$CreateFeedSubmittedImpl) then,
  ) = __$$CreateFeedSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateFeedSubmittedImplCopyWithImpl<$Res>
    extends _$CreateFeedSubmittedCopyWithImpl<$Res, _$CreateFeedSubmittedImpl>
    implements _$$CreateFeedSubmittedImplCopyWith<$Res> {
  __$$CreateFeedSubmittedImplCopyWithImpl(
    _$CreateFeedSubmittedImpl _value,
    $Res Function(_$CreateFeedSubmittedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedSubmitted
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateFeedSubmittedImpl implements _CreateFeedSubmitted {
  const _$CreateFeedSubmittedImpl();

  @override
  String toString() {
    return 'CreateFeedSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _CreateFeedSubmitted implements CreateFeedSubmitted {
  const factory _CreateFeedSubmitted() = _$CreateFeedSubmittedImpl;
}

/// @nodoc
mixin _$CreateFeedState {
  String get authorId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get classId => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  bool get isLoadingClassName => throw _privateConstructorUsedError;
  String get centerId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  bool get allowComments => throw _privateConstructorUsedError;
  List<({bool isVideo, String path})> get localMedia =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSubmitButtonEnabled => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  bool? get submitSuccess => throw _privateConstructorUsedError;

  /// Create a copy of CreateFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateFeedStateCopyWith<CreateFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFeedStateCopyWith<$Res> {
  factory $CreateFeedStateCopyWith(
    CreateFeedState value,
    $Res Function(CreateFeedState) then,
  ) = _$CreateFeedStateCopyWithImpl<$Res, CreateFeedState>;
  @useResult
  $Res call({
    String authorId,
    String fullName,
    String avatar,
    String role,
    String classId,
    String className,
    bool isLoadingClassName,
    String centerId,
    String content,
    bool isPublic,
    bool allowComments,
    List<({bool isVideo, String path})> localMedia,
    bool isSubmitting,
    bool isSubmitButtonEnabled,
    String onPageError,
    bool? submitSuccess,
  });
}

/// @nodoc
class _$CreateFeedStateCopyWithImpl<$Res, $Val extends CreateFeedState>
    implements $CreateFeedStateCopyWith<$Res> {
  _$CreateFeedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? classId = null,
    Object? className = null,
    Object? isLoadingClassName = null,
    Object? centerId = null,
    Object? content = null,
    Object? isPublic = null,
    Object? allowComments = null,
    Object? localMedia = null,
    Object? isSubmitting = null,
    Object? isSubmitButtonEnabled = null,
    Object? onPageError = null,
    Object? submitSuccess = freezed,
  }) {
    return _then(
      _value.copyWith(
            authorId: null == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            avatar: null == avatar
                ? _value.avatar
                : avatar // ignore: cast_nullable_to_non_nullable
                      as String,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            className: null == className
                ? _value.className
                : className // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoadingClassName: null == isLoadingClassName
                ? _value.isLoadingClassName
                : isLoadingClassName // ignore: cast_nullable_to_non_nullable
                      as bool,
            centerId: null == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as String,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            allowComments: null == allowComments
                ? _value.allowComments
                : allowComments // ignore: cast_nullable_to_non_nullable
                      as bool,
            localMedia: null == localMedia
                ? _value.localMedia
                : localMedia // ignore: cast_nullable_to_non_nullable
                      as List<({bool isVideo, String path})>,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmitButtonEnabled: null == isSubmitButtonEnabled
                ? _value.isSubmitButtonEnabled
                : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            submitSuccess: freezed == submitSuccess
                ? _value.submitSuccess
                : submitSuccess // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateFeedStateImplCopyWith<$Res>
    implements $CreateFeedStateCopyWith<$Res> {
  factory _$$CreateFeedStateImplCopyWith(
    _$CreateFeedStateImpl value,
    $Res Function(_$CreateFeedStateImpl) then,
  ) = __$$CreateFeedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String authorId,
    String fullName,
    String avatar,
    String role,
    String classId,
    String className,
    bool isLoadingClassName,
    String centerId,
    String content,
    bool isPublic,
    bool allowComments,
    List<({bool isVideo, String path})> localMedia,
    bool isSubmitting,
    bool isSubmitButtonEnabled,
    String onPageError,
    bool? submitSuccess,
  });
}

/// @nodoc
class __$$CreateFeedStateImplCopyWithImpl<$Res>
    extends _$CreateFeedStateCopyWithImpl<$Res, _$CreateFeedStateImpl>
    implements _$$CreateFeedStateImplCopyWith<$Res> {
  __$$CreateFeedStateImplCopyWithImpl(
    _$CreateFeedStateImpl _value,
    $Res Function(_$CreateFeedStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateFeedState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? classId = null,
    Object? className = null,
    Object? isLoadingClassName = null,
    Object? centerId = null,
    Object? content = null,
    Object? isPublic = null,
    Object? allowComments = null,
    Object? localMedia = null,
    Object? isSubmitting = null,
    Object? isSubmitButtonEnabled = null,
    Object? onPageError = null,
    Object? submitSuccess = freezed,
  }) {
    return _then(
      _$CreateFeedStateImpl(
        authorId: null == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        avatar: null == avatar
            ? _value.avatar
            : avatar // ignore: cast_nullable_to_non_nullable
                  as String,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        className: null == className
            ? _value.className
            : className // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoadingClassName: null == isLoadingClassName
            ? _value.isLoadingClassName
            : isLoadingClassName // ignore: cast_nullable_to_non_nullable
                  as bool,
        centerId: null == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        allowComments: null == allowComments
            ? _value.allowComments
            : allowComments // ignore: cast_nullable_to_non_nullable
                  as bool,
        localMedia: null == localMedia
            ? _value._localMedia
            : localMedia // ignore: cast_nullable_to_non_nullable
                  as List<({bool isVideo, String path})>,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmitButtonEnabled: null == isSubmitButtonEnabled
            ? _value.isSubmitButtonEnabled
            : isSubmitButtonEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        submitSuccess: freezed == submitSuccess
            ? _value.submitSuccess
            : submitSuccess // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$CreateFeedStateImpl implements _CreateFeedState {
  const _$CreateFeedStateImpl({
    this.authorId = '',
    this.fullName = '',
    this.avatar = '',
    this.role = '',
    this.classId = '',
    this.className = '',
    this.isLoadingClassName = false,
    this.centerId = '',
    this.content = '',
    this.isPublic = false,
    this.allowComments = true,
    final List<({bool isVideo, String path})> localMedia = const [],
    this.isSubmitting = false,
    this.isSubmitButtonEnabled = false,
    this.onPageError = '',
    this.submitSuccess,
  }) : _localMedia = localMedia;

  @override
  @JsonKey()
  final String authorId;
  @override
  @JsonKey()
  final String fullName;
  @override
  @JsonKey()
  final String avatar;
  @override
  @JsonKey()
  final String role;
  @override
  @JsonKey()
  final String classId;
  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final bool isLoadingClassName;
  @override
  @JsonKey()
  final String centerId;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final bool isPublic;
  @override
  @JsonKey()
  final bool allowComments;
  final List<({bool isVideo, String path})> _localMedia;
  @override
  @JsonKey()
  List<({bool isVideo, String path})> get localMedia {
    if (_localMedia is EqualUnmodifiableListView) return _localMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_localMedia);
  }

  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSubmitButtonEnabled;
  @override
  @JsonKey()
  final String onPageError;
  @override
  final bool? submitSuccess;

  @override
  String toString() {
    return 'CreateFeedState(authorId: $authorId, fullName: $fullName, avatar: $avatar, role: $role, classId: $classId, className: $className, isLoadingClassName: $isLoadingClassName, centerId: $centerId, content: $content, isPublic: $isPublic, allowComments: $allowComments, localMedia: $localMedia, isSubmitting: $isSubmitting, isSubmitButtonEnabled: $isSubmitButtonEnabled, onPageError: $onPageError, submitSuccess: $submitSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateFeedStateImpl &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.isLoadingClassName, isLoadingClassName) ||
                other.isLoadingClassName == isLoadingClassName) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.allowComments, allowComments) ||
                other.allowComments == allowComments) &&
            const DeepCollectionEquality().equals(
              other._localMedia,
              _localMedia,
            ) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSubmitButtonEnabled, isSubmitButtonEnabled) ||
                other.isSubmitButtonEnabled == isSubmitButtonEnabled) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.submitSuccess, submitSuccess) ||
                other.submitSuccess == submitSuccess));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    authorId,
    fullName,
    avatar,
    role,
    classId,
    className,
    isLoadingClassName,
    centerId,
    content,
    isPublic,
    allowComments,
    const DeepCollectionEquality().hash(_localMedia),
    isSubmitting,
    isSubmitButtonEnabled,
    onPageError,
    submitSuccess,
  );

  /// Create a copy of CreateFeedState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateFeedStateImplCopyWith<_$CreateFeedStateImpl> get copyWith =>
      __$$CreateFeedStateImplCopyWithImpl<_$CreateFeedStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateFeedState implements CreateFeedState {
  const factory _CreateFeedState({
    final String authorId,
    final String fullName,
    final String avatar,
    final String role,
    final String classId,
    final String className,
    final bool isLoadingClassName,
    final String centerId,
    final String content,
    final bool isPublic,
    final bool allowComments,
    final List<({bool isVideo, String path})> localMedia,
    final bool isSubmitting,
    final bool isSubmitButtonEnabled,
    final String onPageError,
    final bool? submitSuccess,
  }) = _$CreateFeedStateImpl;

  @override
  String get authorId;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  String get role;
  @override
  String get classId;
  @override
  String get className;
  @override
  bool get isLoadingClassName;
  @override
  String get centerId;
  @override
  String get content;
  @override
  bool get isPublic;
  @override
  bool get allowComments;
  @override
  List<({bool isVideo, String path})> get localMedia;
  @override
  bool get isSubmitting;
  @override
  bool get isSubmitButtonEnabled;
  @override
  String get onPageError;
  @override
  bool? get submitSuccess;

  /// Create a copy of CreateFeedState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateFeedStateImplCopyWith<_$CreateFeedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
