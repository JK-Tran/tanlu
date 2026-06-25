// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_friends_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetFriendsInput {
  String get currentUserId => throw _privateConstructorUsedError;

  /// Create a copy of GetFriendsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFriendsInputCopyWith<GetFriendsInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFriendsInputCopyWith<$Res> {
  factory $GetFriendsInputCopyWith(
    GetFriendsInput value,
    $Res Function(GetFriendsInput) then,
  ) = _$GetFriendsInputCopyWithImpl<$Res, GetFriendsInput>;
  @useResult
  $Res call({String currentUserId});
}

/// @nodoc
class _$GetFriendsInputCopyWithImpl<$Res, $Val extends GetFriendsInput>
    implements $GetFriendsInputCopyWith<$Res> {
  _$GetFriendsInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFriendsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUserId = null}) {
    return _then(
      _value.copyWith(
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFriendsInputImplCopyWith<$Res>
    implements $GetFriendsInputCopyWith<$Res> {
  factory _$$GetFriendsInputImplCopyWith(
    _$GetFriendsInputImpl value,
    $Res Function(_$GetFriendsInputImpl) then,
  ) = __$$GetFriendsInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currentUserId});
}

/// @nodoc
class __$$GetFriendsInputImplCopyWithImpl<$Res>
    extends _$GetFriendsInputCopyWithImpl<$Res, _$GetFriendsInputImpl>
    implements _$$GetFriendsInputImplCopyWith<$Res> {
  __$$GetFriendsInputImplCopyWithImpl(
    _$GetFriendsInputImpl _value,
    $Res Function(_$GetFriendsInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFriendsInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentUserId = null}) {
    return _then(
      _$GetFriendsInputImpl(
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$GetFriendsInputImpl
    with DiagnosticableTreeMixin
    implements _GetFriendsInput {
  const _$GetFriendsInputImpl({required this.currentUserId});

  @override
  final String currentUserId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFriendsInput(currentUserId: $currentUserId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFriendsInput'))
      ..add(DiagnosticsProperty('currentUserId', currentUserId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFriendsInputImpl &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentUserId);

  /// Create a copy of GetFriendsInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFriendsInputImplCopyWith<_$GetFriendsInputImpl> get copyWith =>
      __$$GetFriendsInputImplCopyWithImpl<_$GetFriendsInputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFriendsInput implements GetFriendsInput {
  const factory _GetFriendsInput({required final String currentUserId}) =
      _$GetFriendsInputImpl;

  @override
  String get currentUserId;

  /// Create a copy of GetFriendsInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFriendsInputImplCopyWith<_$GetFriendsInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetFriendsOutput {
  List<Contact> get friends => throw _privateConstructorUsedError;

  /// Create a copy of GetFriendsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetFriendsOutputCopyWith<GetFriendsOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFriendsOutputCopyWith<$Res> {
  factory $GetFriendsOutputCopyWith(
    GetFriendsOutput value,
    $Res Function(GetFriendsOutput) then,
  ) = _$GetFriendsOutputCopyWithImpl<$Res, GetFriendsOutput>;
  @useResult
  $Res call({List<Contact> friends});
}

/// @nodoc
class _$GetFriendsOutputCopyWithImpl<$Res, $Val extends GetFriendsOutput>
    implements $GetFriendsOutputCopyWith<$Res> {
  _$GetFriendsOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetFriendsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? friends = null}) {
    return _then(
      _value.copyWith(
            friends: null == friends
                ? _value.friends
                : friends // ignore: cast_nullable_to_non_nullable
                      as List<Contact>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetFriendsOutputImplCopyWith<$Res>
    implements $GetFriendsOutputCopyWith<$Res> {
  factory _$$GetFriendsOutputImplCopyWith(
    _$GetFriendsOutputImpl value,
    $Res Function(_$GetFriendsOutputImpl) then,
  ) = __$$GetFriendsOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Contact> friends});
}

/// @nodoc
class __$$GetFriendsOutputImplCopyWithImpl<$Res>
    extends _$GetFriendsOutputCopyWithImpl<$Res, _$GetFriendsOutputImpl>
    implements _$$GetFriendsOutputImplCopyWith<$Res> {
  __$$GetFriendsOutputImplCopyWithImpl(
    _$GetFriendsOutputImpl _value,
    $Res Function(_$GetFriendsOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetFriendsOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? friends = null}) {
    return _then(
      _$GetFriendsOutputImpl(
        friends: null == friends
            ? _value._friends
            : friends // ignore: cast_nullable_to_non_nullable
                  as List<Contact>,
      ),
    );
  }
}

/// @nodoc

class _$GetFriendsOutputImpl
    with DiagnosticableTreeMixin
    implements _GetFriendsOutput {
  const _$GetFriendsOutputImpl({required final List<Contact> friends})
    : _friends = friends;

  final List<Contact> _friends;
  @override
  List<Contact> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GetFriendsOutput(friends: $friends)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GetFriendsOutput'))
      ..add(DiagnosticsProperty('friends', friends));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFriendsOutputImpl &&
            const DeepCollectionEquality().equals(other._friends, _friends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_friends));

  /// Create a copy of GetFriendsOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFriendsOutputImplCopyWith<_$GetFriendsOutputImpl> get copyWith =>
      __$$GetFriendsOutputImplCopyWithImpl<_$GetFriendsOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _GetFriendsOutput implements GetFriendsOutput {
  const factory _GetFriendsOutput({required final List<Contact> friends}) =
      _$GetFriendsOutputImpl;

  @override
  List<Contact> get friends;

  /// Create a copy of GetFriendsOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFriendsOutputImplCopyWith<_$GetFriendsOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
