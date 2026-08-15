// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PersonEvent {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
    changePassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newPassword)? changePassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePassword value)? changePassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of PersonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonEventCopyWith<PersonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonEventCopyWith<$Res> {
  factory $PersonEventCopyWith(
    PersonEvent value,
    $Res Function(PersonEvent) then,
  ) = _$PersonEventCopyWithImpl<$Res, PersonEvent>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$PersonEventCopyWithImpl<$Res, $Val extends PersonEvent>
    implements $PersonEventCopyWith<$Res> {
  _$PersonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _value.copyWith(
            oldPassword: null == oldPassword
                ? _value.oldPassword
                : oldPassword // ignore: cast_nullable_to_non_nullable
                      as String,
            newPassword: null == newPassword
                ? _value.newPassword
                : newPassword // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res>
    implements $PersonEventCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(
    _$ChangePasswordImpl value,
    $Res Function(_$ChangePasswordImpl) then,
  ) = __$$ChangePasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
    _$ChangePasswordImpl _value,
    $Res Function(_$ChangePasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? oldPassword = null, Object? newPassword = null}) {
    return _then(
      _$ChangePasswordImpl(
        oldPassword: null == oldPassword
            ? _value.oldPassword
            : oldPassword // ignore: cast_nullable_to_non_nullable
                  as String,
        newPassword: null == newPassword
            ? _value.newPassword
            : newPassword // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl({
    required this.oldPassword,
    required this.newPassword,
  });

  @override
  final String oldPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'PersonEvent.changePassword(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of PersonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
    changePassword,
  }) {
    return changePassword(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newPassword)? changePassword,
  }) {
    return changePassword?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements PersonEvent {
  const factory _ChangePassword({
    required final String oldPassword,
    required final String newPassword,
  }) = _$ChangePasswordImpl;

  @override
  String get oldPassword;
  @override
  String get newPassword;

  /// Create a copy of PersonEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PersonState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  bool get changePasswordSuccess => throw _privateConstructorUsedError;

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PersonStateCopyWith<PersonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
    PersonState value,
    $Res Function(PersonState) then,
  ) = _$PersonStateCopyWithImpl<$Res, PersonState>;
  @useResult
  $Res call({
    bool isSubmitting,
    String onPageError,
    bool changePasswordSuccess,
  });
}

/// @nodoc
class _$PersonStateCopyWithImpl<$Res, $Val extends PersonState>
    implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? onPageError = null,
    Object? changePasswordSuccess = null,
  }) {
    return _then(
      _value.copyWith(
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            changePasswordSuccess: null == changePasswordSuccess
                ? _value.changePasswordSuccess
                : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PersonStateImplCopyWith<$Res>
    implements $PersonStateCopyWith<$Res> {
  factory _$$PersonStateImplCopyWith(
    _$PersonStateImpl value,
    $Res Function(_$PersonStateImpl) then,
  ) = __$$PersonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isSubmitting,
    String onPageError,
    bool changePasswordSuccess,
  });
}

/// @nodoc
class __$$PersonStateImplCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res, _$PersonStateImpl>
    implements _$$PersonStateImplCopyWith<$Res> {
  __$$PersonStateImplCopyWithImpl(
    _$PersonStateImpl _value,
    $Res Function(_$PersonStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? onPageError = null,
    Object? changePasswordSuccess = null,
  }) {
    return _then(
      _$PersonStateImpl(
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        changePasswordSuccess: null == changePasswordSuccess
            ? _value.changePasswordSuccess
            : changePasswordSuccess // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PersonStateImpl implements _PersonState {
  const _$PersonStateImpl({
    this.isSubmitting = false,
    this.onPageError = '',
    this.changePasswordSuccess = false,
  });

  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final bool changePasswordSuccess;

  @override
  String toString() {
    return 'PersonState(isSubmitting: $isSubmitting, onPageError: $onPageError, changePasswordSuccess: $changePasswordSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.changePasswordSuccess, changePasswordSuccess) ||
                other.changePasswordSuccess == changePasswordSuccess));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isSubmitting,
    onPageError,
    changePasswordSuccess,
  );

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonStateImplCopyWith<_$PersonStateImpl> get copyWith =>
      __$$PersonStateImplCopyWithImpl<_$PersonStateImpl>(this, _$identity);
}

abstract class _PersonState implements PersonState {
  const factory _PersonState({
    final bool isSubmitting,
    final String onPageError,
    final bool changePasswordSuccess,
  }) = _$PersonStateImpl;

  @override
  bool get isSubmitting;
  @override
  String get onPageError;
  @override
  bool get changePasswordSuccess;

  /// Create a copy of PersonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonStateImplCopyWith<_$PersonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
