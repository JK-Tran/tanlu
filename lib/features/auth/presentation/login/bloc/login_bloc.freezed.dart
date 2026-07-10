// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EmailChanged {
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of EmailChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
    EmailChanged value,
    $Res Function(EmailChanged) then,
  ) = _$EmailChangedCopyWithImpl<$Res, EmailChanged>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res, $Val extends EmailChanged>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res>
    implements $EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
    _$EmailChangedImpl value,
    $Res Function(_$EmailChangedImpl) then,
  ) = __$$EmailChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$EmailChangedCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
    _$EmailChangedImpl _value,
    $Res Function(_$EmailChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmailChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$EmailChangedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$EmailChangedImpl with DiagnosticableTreeMixin implements _EmailChanged {
  const _$EmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of EmailChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);
}

abstract class _EmailChanged implements EmailChanged {
  const factory _EmailChanged({required final String email}) =
      _$EmailChangedImpl;

  @override
  String get email;

  /// Create a copy of EmailChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PasswordChanged {
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
    PasswordChanged value,
    $Res Function(PasswordChanged) then,
  ) = _$PasswordChangedCopyWithImpl<$Res, PasswordChanged>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res, $Val extends PasswordChanged>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _value.copyWith(
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(
    _$PasswordChangedImpl value,
    $Res Function(_$PasswordChangedImpl) then,
  ) = __$$PasswordChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$PasswordChangedCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
    _$PasswordChangedImpl _value,
    $Res Function(_$PasswordChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordChanged
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? password = null}) {
    return _then(
      _$PasswordChangedImpl(
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PasswordChangedImpl
    with DiagnosticableTreeMixin
    implements _PasswordChanged {
  const _$PasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PasswordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PasswordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of PasswordChanged
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
        this,
        _$identity,
      );
}

abstract class _PasswordChanged implements PasswordChanged {
  const factory _PasswordChanged({required final String password}) =
      _$PasswordChangedImpl;

  @override
  String get password;

  /// Create a copy of PasswordChanged
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShowPassswordButtonPressed {}

/// @nodoc
abstract class $ShowPassswordButtonPressedCopyWith<$Res> {
  factory $ShowPassswordButtonPressedCopyWith(
    ShowPassswordButtonPressed value,
    $Res Function(ShowPassswordButtonPressed) then,
  ) =
      _$ShowPassswordButtonPressedCopyWithImpl<
        $Res,
        ShowPassswordButtonPressed
      >;
}

/// @nodoc
class _$ShowPassswordButtonPressedCopyWithImpl<
  $Res,
  $Val extends ShowPassswordButtonPressed
>
    implements $ShowPassswordButtonPressedCopyWith<$Res> {
  _$ShowPassswordButtonPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowPassswordButtonPressed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowPassswordButtonPressedImplCopyWith<$Res> {
  factory _$$ShowPassswordButtonPressedImplCopyWith(
    _$ShowPassswordButtonPressedImpl value,
    $Res Function(_$ShowPassswordButtonPressedImpl) then,
  ) = __$$ShowPassswordButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPassswordButtonPressedImplCopyWithImpl<$Res>
    extends
        _$ShowPassswordButtonPressedCopyWithImpl<
          $Res,
          _$ShowPassswordButtonPressedImpl
        >
    implements _$$ShowPassswordButtonPressedImplCopyWith<$Res> {
  __$$ShowPassswordButtonPressedImplCopyWithImpl(
    _$ShowPassswordButtonPressedImpl _value,
    $Res Function(_$ShowPassswordButtonPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShowPassswordButtonPressed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowPassswordButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _ShowPassswordButtonPressed {
  const _$ShowPassswordButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowPassswordButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowPassswordButtonPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPassswordButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ShowPassswordButtonPressed
    implements ShowPassswordButtonPressed {
  const factory _ShowPassswordButtonPressed() =
      _$ShowPassswordButtonPressedImpl;
}

/// @nodoc
mixin _$LoginButtonPressed {}

/// @nodoc
abstract class $LoginButtonPressedCopyWith<$Res> {
  factory $LoginButtonPressedCopyWith(
    LoginButtonPressed value,
    $Res Function(LoginButtonPressed) then,
  ) = _$LoginButtonPressedCopyWithImpl<$Res, LoginButtonPressed>;
}

/// @nodoc
class _$LoginButtonPressedCopyWithImpl<$Res, $Val extends LoginButtonPressed>
    implements $LoginButtonPressedCopyWith<$Res> {
  _$LoginButtonPressedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginButtonPressed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(
    _$LoginButtonPressedImpl value,
    $Res Function(_$LoginButtonPressedImpl) then,
  ) = __$$LoginButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginButtonPressedCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(
    _$LoginButtonPressedImpl _value,
    $Res Function(_$LoginButtonPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginButtonPressed
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _LoginButtonPressed {
  const _$LoginButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LoginButtonPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoginButtonPressed implements LoginButtonPressed {
  const factory _LoginButtonPressed() = _$LoginButtonPressedImpl;
}

/// @nodoc
mixin _$LoginState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isLoginButtonEnabled => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  bool get showLoginButtonLoading => throw _privateConstructorUsedError;
  bool? get loginSuccess => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
    LoginState value,
    $Res Function(LoginState) then,
  ) = _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({
    String email,
    String password,
    bool isLoginButtonEnabled,
    bool obscureText,
    String onPageError,
    bool showLoginButtonLoading,
    bool? loginSuccess,
  });
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoginButtonEnabled = null,
    Object? obscureText = null,
    Object? onPageError = null,
    Object? showLoginButtonLoading = null,
    Object? loginSuccess = freezed,
  }) {
    return _then(
      _value.copyWith(
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            isLoginButtonEnabled: null == isLoginButtonEnabled
                ? _value.isLoginButtonEnabled
                : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            obscureText: null == obscureText
                ? _value.obscureText
                : obscureText // ignore: cast_nullable_to_non_nullable
                      as bool,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            showLoginButtonLoading: null == showLoginButtonLoading
                ? _value.showLoginButtonLoading
                : showLoginButtonLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            loginSuccess: freezed == loginSuccess
                ? _value.loginSuccess
                : loginSuccess // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
    _$LoginStateImpl value,
    $Res Function(_$LoginStateImpl) then,
  ) = __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String email,
    String password,
    bool isLoginButtonEnabled,
    bool obscureText,
    String onPageError,
    bool showLoginButtonLoading,
    bool? loginSuccess,
  });
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
    _$LoginStateImpl _value,
    $Res Function(_$LoginStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isLoginButtonEnabled = null,
    Object? obscureText = null,
    Object? onPageError = null,
    Object? showLoginButtonLoading = null,
    Object? loginSuccess = freezed,
  }) {
    return _then(
      _$LoginStateImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoginButtonEnabled: null == isLoginButtonEnabled
            ? _value.isLoginButtonEnabled
            : isLoginButtonEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        obscureText: null == obscureText
            ? _value.obscureText
            : obscureText // ignore: cast_nullable_to_non_nullable
                  as bool,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        showLoginButtonLoading: null == showLoginButtonLoading
            ? _value.showLoginButtonLoading
            : showLoginButtonLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        loginSuccess: freezed == loginSuccess
            ? _value.loginSuccess
            : loginSuccess // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc

class _$LoginStateImpl with DiagnosticableTreeMixin implements _LoginState {
  const _$LoginStateImpl({
    this.email = '',
    this.password = '',
    this.isLoginButtonEnabled = false,
    this.obscureText = true,
    this.onPageError = '',
    this.showLoginButtonLoading = false,
    this.loginSuccess,
  });

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isLoginButtonEnabled;
  @override
  @JsonKey()
  final bool obscureText;
  @override
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final bool showLoginButtonLoading;
  @override
  final bool? loginSuccess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(email: $email, password: $password, isLoginButtonEnabled: $isLoginButtonEnabled, obscureText: $obscureText, onPageError: $onPageError, showLoginButtonLoading: $showLoginButtonLoading, loginSuccess: $loginSuccess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isLoginButtonEnabled', isLoginButtonEnabled))
      ..add(DiagnosticsProperty('obscureText', obscureText))
      ..add(DiagnosticsProperty('onPageError', onPageError))
      ..add(
        DiagnosticsProperty('showLoginButtonLoading', showLoginButtonLoading),
      )
      ..add(DiagnosticsProperty('loginSuccess', loginSuccess));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isLoginButtonEnabled, isLoginButtonEnabled) ||
                other.isLoginButtonEnabled == isLoginButtonEnabled) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.showLoginButtonLoading, showLoginButtonLoading) ||
                other.showLoginButtonLoading == showLoginButtonLoading) &&
            (identical(other.loginSuccess, loginSuccess) ||
                other.loginSuccess == loginSuccess));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    email,
    password,
    isLoginButtonEnabled,
    obscureText,
    onPageError,
    showLoginButtonLoading,
    loginSuccess,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState({
    final String email,
    final String password,
    final bool isLoginButtonEnabled,
    final bool obscureText,
    final String onPageError,
    final bool showLoginButtonLoading,
    final bool? loginSuccess,
  }) = _$LoginStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get isLoginButtonEnabled;
  @override
  bool get obscureText;
  @override
  String get onPageError;
  @override
  bool get showLoginButtonLoading;
  @override
  bool? get loginSuccess;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
