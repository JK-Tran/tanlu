// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_popup_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppPopupInfo {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPopupInfoCopyWith<$Res> {
  factory $AppPopupInfoCopyWith(
    AppPopupInfo value,
    $Res Function(AppPopupInfo) then,
  ) = _$AppPopupInfoCopyWithImpl<$Res, AppPopupInfo>;
}

/// @nodoc
class _$AppPopupInfoCopyWithImpl<$Res, $Val extends AppPopupInfo>
    implements $AppPopupInfoCopyWith<$Res> {
  _$AppPopupInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConfirmDialogImplCopyWith<$Res> {
  factory _$$ConfirmDialogImplCopyWith(
    _$ConfirmDialogImpl value,
    $Res Function(_$ConfirmDialogImpl) then,
  ) = __$$ConfirmDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String message,
    Widget? asset,
    Func0<void>? onPressed,
  });
}

/// @nodoc
class __$$ConfirmDialogImplCopyWithImpl<$Res>
    extends _$AppPopupInfoCopyWithImpl<$Res, _$ConfirmDialogImpl>
    implements _$$ConfirmDialogImplCopyWith<$Res> {
  __$$ConfirmDialogImplCopyWithImpl(
    _$ConfirmDialogImpl _value,
    $Res Function(_$ConfirmDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? asset = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(
      _$ConfirmDialogImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        asset: freezed == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Widget?,
        onPressed: freezed == onPressed
            ? _value.onPressed
            : onPressed // ignore: cast_nullable_to_non_nullable
                  as Func0<void>?,
      ),
    );
  }
}

/// @nodoc

class _$ConfirmDialogImpl implements _ConfirmDialog {
  const _$ConfirmDialogImpl({
    this.title = '',
    this.message = '',
    this.asset,
    this.onPressed,
  });

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String message;
  @override
  final Widget? asset;
  @override
  final Func0<void>? onPressed;

  @override
  String toString() {
    return 'AppPopupInfo.confirmDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, asset, onPressed);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmDialogImplCopyWith<_$ConfirmDialogImpl> get copyWith =>
      __$$ConfirmDialogImplCopyWithImpl<_$ConfirmDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) {
    return confirmDialog(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) {
    return confirmDialog?.call(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (confirmDialog != null) {
      return confirmDialog(title, message, asset, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) {
    return confirmDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) {
    return confirmDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (confirmDialog != null) {
      return confirmDialog(this);
    }
    return orElse();
  }
}

abstract class _ConfirmDialog implements AppPopupInfo {
  const factory _ConfirmDialog({
    final String title,
    final String message,
    final Widget? asset,
    final Func0<void>? onPressed,
  }) = _$ConfirmDialogImpl;

  String get title;
  String get message;
  Widget? get asset;
  Func0<void>? get onPressed;

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmDialogImplCopyWith<_$ConfirmDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlertDialogImplCopyWith<$Res> {
  factory _$$AlertDialogImplCopyWith(
    _$AlertDialogImpl value,
    $Res Function(_$AlertDialogImpl) then,
  ) = __$$AlertDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String message,
    Widget? asset,
    Func0<void>? onPressed,
  });
}

/// @nodoc
class __$$AlertDialogImplCopyWithImpl<$Res>
    extends _$AppPopupInfoCopyWithImpl<$Res, _$AlertDialogImpl>
    implements _$$AlertDialogImplCopyWith<$Res> {
  __$$AlertDialogImplCopyWithImpl(
    _$AlertDialogImpl _value,
    $Res Function(_$AlertDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? asset = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(
      _$AlertDialogImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        asset: freezed == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Widget?,
        onPressed: freezed == onPressed
            ? _value.onPressed
            : onPressed // ignore: cast_nullable_to_non_nullable
                  as Func0<void>?,
      ),
    );
  }
}

/// @nodoc

class _$AlertDialogImpl implements _AlertDialog {
  const _$AlertDialogImpl({
    this.title = '',
    this.message = '',
    this.asset,
    this.onPressed,
  });

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String message;
  @override
  final Widget? asset;
  @override
  final Func0<void>? onPressed;

  @override
  String toString() {
    return 'AppPopupInfo.alertDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, asset, onPressed);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertDialogImplCopyWith<_$AlertDialogImpl> get copyWith =>
      __$$AlertDialogImplCopyWithImpl<_$AlertDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) {
    return alertDialog(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) {
    return alertDialog?.call(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (alertDialog != null) {
      return alertDialog(title, message, asset, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) {
    return alertDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) {
    return alertDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (alertDialog != null) {
      return alertDialog(this);
    }
    return orElse();
  }
}

abstract class _AlertDialog implements AppPopupInfo {
  const factory _AlertDialog({
    final String title,
    final String message,
    final Widget? asset,
    final Func0<void>? onPressed,
  }) = _$AlertDialogImpl;

  String get title;
  String get message;
  Widget? get asset;
  Func0<void>? get onPressed;

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertDialogImplCopyWith<_$AlertDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarningDialogImplCopyWith<$Res> {
  factory _$$WarningDialogImplCopyWith(
    _$WarningDialogImpl value,
    $Res Function(_$WarningDialogImpl) then,
  ) = __$$WarningDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String message,
    Widget? asset,
    Func0<void>? onPressed,
  });
}

/// @nodoc
class __$$WarningDialogImplCopyWithImpl<$Res>
    extends _$AppPopupInfoCopyWithImpl<$Res, _$WarningDialogImpl>
    implements _$$WarningDialogImplCopyWith<$Res> {
  __$$WarningDialogImplCopyWithImpl(
    _$WarningDialogImpl _value,
    $Res Function(_$WarningDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? asset = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(
      _$WarningDialogImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        asset: freezed == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Widget?,
        onPressed: freezed == onPressed
            ? _value.onPressed
            : onPressed // ignore: cast_nullable_to_non_nullable
                  as Func0<void>?,
      ),
    );
  }
}

/// @nodoc

class _$WarningDialogImpl implements _WarningDialog {
  const _$WarningDialogImpl({
    required this.title,
    required this.message,
    this.asset,
    this.onPressed,
  });

  @override
  final String title;
  @override
  final String message;
  @override
  final Widget? asset;
  @override
  final Func0<void>? onPressed;

  @override
  String toString() {
    return 'AppPopupInfo.warningDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, asset, onPressed);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningDialogImplCopyWith<_$WarningDialogImpl> get copyWith =>
      __$$WarningDialogImplCopyWithImpl<_$WarningDialogImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) {
    return warningDialog(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) {
    return warningDialog?.call(title, message, asset, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (warningDialog != null) {
      return warningDialog(title, message, asset, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) {
    return warningDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) {
    return warningDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (warningDialog != null) {
      return warningDialog(this);
    }
    return orElse();
  }
}

abstract class _WarningDialog implements AppPopupInfo {
  const factory _WarningDialog({
    required final String title,
    required final String message,
    final Widget? asset,
    final Func0<void>? onPressed,
  }) = _$WarningDialogImpl;

  String get title;
  String get message;
  Widget? get asset;
  Func0<void>? get onPressed;

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarningDialogImplCopyWith<_$WarningDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorWithRetryDialogImplCopyWith<$Res> {
  factory _$$ErrorWithRetryDialogImplCopyWith(
    _$ErrorWithRetryDialogImpl value,
    $Res Function(_$ErrorWithRetryDialogImpl) then,
  ) = __$$ErrorWithRetryDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String title,
    String message,
    Widget? asset,
    Func0<void>? onRetryPressed,
  });
}

/// @nodoc
class __$$ErrorWithRetryDialogImplCopyWithImpl<$Res>
    extends _$AppPopupInfoCopyWithImpl<$Res, _$ErrorWithRetryDialogImpl>
    implements _$$ErrorWithRetryDialogImplCopyWith<$Res> {
  __$$ErrorWithRetryDialogImplCopyWithImpl(
    _$ErrorWithRetryDialogImpl _value,
    $Res Function(_$ErrorWithRetryDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
    Object? asset = freezed,
    Object? onRetryPressed = freezed,
  }) {
    return _then(
      _$ErrorWithRetryDialogImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        asset: freezed == asset
            ? _value.asset
            : asset // ignore: cast_nullable_to_non_nullable
                  as Widget?,
        onRetryPressed: freezed == onRetryPressed
            ? _value.onRetryPressed
            : onRetryPressed // ignore: cast_nullable_to_non_nullable
                  as Func0<void>?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorWithRetryDialogImpl implements _ErrorWithRetryDialog {
  const _$ErrorWithRetryDialogImpl({
    this.title = '',
    this.message = '',
    this.asset,
    this.onRetryPressed,
  });

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String message;
  @override
  final Widget? asset;
  @override
  final Func0<void>? onRetryPressed;

  @override
  String toString() {
    return 'AppPopupInfo.errorWithRetryDialog(title: $title, message: $message, asset: $asset, onRetryPressed: $onRetryPressed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorWithRetryDialogImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.onRetryPressed, onRetryPressed) ||
                other.onRetryPressed == onRetryPressed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, message, asset, onRetryPressed);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorWithRetryDialogImplCopyWith<_$ErrorWithRetryDialogImpl>
  get copyWith =>
      __$$ErrorWithRetryDialogImplCopyWithImpl<_$ErrorWithRetryDialogImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) {
    return errorWithRetryDialog(title, message, asset, onRetryPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) {
    return errorWithRetryDialog?.call(title, message, asset, onRetryPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (errorWithRetryDialog != null) {
      return errorWithRetryDialog(title, message, asset, onRetryPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) {
    return errorWithRetryDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) {
    return errorWithRetryDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (errorWithRetryDialog != null) {
      return errorWithRetryDialog(this);
    }
    return orElse();
  }
}

abstract class _ErrorWithRetryDialog implements AppPopupInfo {
  const factory _ErrorWithRetryDialog({
    final String title,
    final String message,
    final Widget? asset,
    final Func0<void>? onRetryPressed,
  }) = _$ErrorWithRetryDialogImpl;

  String get title;
  String get message;
  Widget? get asset;
  Func0<void>? get onRetryPressed;

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorWithRetryDialogImplCopyWith<_$ErrorWithRetryDialogImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequiredLoginDialogImplCopyWith<$Res> {
  factory _$$RequiredLoginDialogImplCopyWith(
    _$RequiredLoginDialogImpl value,
    $Res Function(_$RequiredLoginDialogImpl) then,
  ) = __$$RequiredLoginDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequiredLoginDialogImplCopyWithImpl<$Res>
    extends _$AppPopupInfoCopyWithImpl<$Res, _$RequiredLoginDialogImpl>
    implements _$$RequiredLoginDialogImplCopyWith<$Res> {
  __$$RequiredLoginDialogImplCopyWithImpl(
    _$RequiredLoginDialogImpl _value,
    $Res Function(_$RequiredLoginDialogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppPopupInfo
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequiredLoginDialogImpl implements _RequiredLoginDialog {
  const _$RequiredLoginDialogImpl();

  @override
  String toString() {
    return 'AppPopupInfo.requiredLoginDialog()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredLoginDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    confirmDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    alertDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )
    warningDialog,
    required TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )
    errorWithRetryDialog,
    required TResult Function() requiredLoginDialog,
  }) {
    return requiredLoginDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult? Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult? Function()? requiredLoginDialog,
  }) {
    return requiredLoginDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    confirmDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    alertDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onPressed,
    )?
    warningDialog,
    TResult Function(
      String title,
      String message,
      Widget? asset,
      Func0<void>? onRetryPressed,
    )?
    errorWithRetryDialog,
    TResult Function()? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (requiredLoginDialog != null) {
      return requiredLoginDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfirmDialog value) confirmDialog,
    required TResult Function(_AlertDialog value) alertDialog,
    required TResult Function(_WarningDialog value) warningDialog,
    required TResult Function(_ErrorWithRetryDialog value) errorWithRetryDialog,
    required TResult Function(_RequiredLoginDialog value) requiredLoginDialog,
  }) {
    return requiredLoginDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfirmDialog value)? confirmDialog,
    TResult? Function(_AlertDialog value)? alertDialog,
    TResult? Function(_WarningDialog value)? warningDialog,
    TResult? Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult? Function(_RequiredLoginDialog value)? requiredLoginDialog,
  }) {
    return requiredLoginDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfirmDialog value)? confirmDialog,
    TResult Function(_AlertDialog value)? alertDialog,
    TResult Function(_WarningDialog value)? warningDialog,
    TResult Function(_ErrorWithRetryDialog value)? errorWithRetryDialog,
    TResult Function(_RequiredLoginDialog value)? requiredLoginDialog,
    required TResult orElse(),
  }) {
    if (requiredLoginDialog != null) {
      return requiredLoginDialog(this);
    }
    return orElse();
  }
}

abstract class _RequiredLoginDialog implements AppPopupInfo {
  const factory _RequiredLoginDialog() = _$RequiredLoginDialogImpl;
}
