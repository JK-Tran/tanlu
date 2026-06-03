// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UploadFileInput {
  String get filePath => throw _privateConstructorUsedError;

  /// Create a copy of UploadFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileInputCopyWith<UploadFileInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileInputCopyWith<$Res> {
  factory $UploadFileInputCopyWith(
    UploadFileInput value,
    $Res Function(UploadFileInput) then,
  ) = _$UploadFileInputCopyWithImpl<$Res, UploadFileInput>;
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class _$UploadFileInputCopyWithImpl<$Res, $Val extends UploadFileInput>
    implements $UploadFileInputCopyWith<$Res> {
  _$UploadFileInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filePath = null}) {
    return _then(
      _value.copyWith(
            filePath: null == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadFileInputImplCopyWith<$Res>
    implements $UploadFileInputCopyWith<$Res> {
  factory _$$UploadFileInputImplCopyWith(
    _$UploadFileInputImpl value,
    $Res Function(_$UploadFileInputImpl) then,
  ) = __$$UploadFileInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String filePath});
}

/// @nodoc
class __$$UploadFileInputImplCopyWithImpl<$Res>
    extends _$UploadFileInputCopyWithImpl<$Res, _$UploadFileInputImpl>
    implements _$$UploadFileInputImplCopyWith<$Res> {
  __$$UploadFileInputImplCopyWithImpl(
    _$UploadFileInputImpl _value,
    $Res Function(_$UploadFileInputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadFileInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filePath = null}) {
    return _then(
      _$UploadFileInputImpl(
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UploadFileInputImpl implements _UploadFileInput {
  const _$UploadFileInputImpl({required this.filePath});

  @override
  final String filePath;

  @override
  String toString() {
    return 'UploadFileInput(filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileInputImpl &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  /// Create a copy of UploadFileInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileInputImplCopyWith<_$UploadFileInputImpl> get copyWith =>
      __$$UploadFileInputImplCopyWithImpl<_$UploadFileInputImpl>(
        this,
        _$identity,
      );
}

abstract class _UploadFileInput implements UploadFileInput {
  const factory _UploadFileInput({required final String filePath}) =
      _$UploadFileInputImpl;

  @override
  String get filePath;

  /// Create a copy of UploadFileInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileInputImplCopyWith<_$UploadFileInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadFileOutput {
  String? get fileUrl => throw _privateConstructorUsedError;

  /// Create a copy of UploadFileOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadFileOutputCopyWith<UploadFileOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileOutputCopyWith<$Res> {
  factory $UploadFileOutputCopyWith(
    UploadFileOutput value,
    $Res Function(UploadFileOutput) then,
  ) = _$UploadFileOutputCopyWithImpl<$Res, UploadFileOutput>;
  @useResult
  $Res call({String? fileUrl});
}

/// @nodoc
class _$UploadFileOutputCopyWithImpl<$Res, $Val extends UploadFileOutput>
    implements $UploadFileOutputCopyWith<$Res> {
  _$UploadFileOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadFileOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileUrl = freezed}) {
    return _then(
      _value.copyWith(
            fileUrl: freezed == fileUrl
                ? _value.fileUrl
                : fileUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadFileOutputImplCopyWith<$Res>
    implements $UploadFileOutputCopyWith<$Res> {
  factory _$$UploadFileOutputImplCopyWith(
    _$UploadFileOutputImpl value,
    $Res Function(_$UploadFileOutputImpl) then,
  ) = __$$UploadFileOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fileUrl});
}

/// @nodoc
class __$$UploadFileOutputImplCopyWithImpl<$Res>
    extends _$UploadFileOutputCopyWithImpl<$Res, _$UploadFileOutputImpl>
    implements _$$UploadFileOutputImplCopyWith<$Res> {
  __$$UploadFileOutputImplCopyWithImpl(
    _$UploadFileOutputImpl _value,
    $Res Function(_$UploadFileOutputImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadFileOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? fileUrl = freezed}) {
    return _then(
      _$UploadFileOutputImpl(
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$UploadFileOutputImpl implements _UploadFileOutput {
  const _$UploadFileOutputImpl({required this.fileUrl});

  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'UploadFileOutput(fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileOutputImpl &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileUrl);

  /// Create a copy of UploadFileOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFileOutputImplCopyWith<_$UploadFileOutputImpl> get copyWith =>
      __$$UploadFileOutputImplCopyWithImpl<_$UploadFileOutputImpl>(
        this,
        _$identity,
      );
}

abstract class _UploadFileOutput implements UploadFileOutput {
  const factory _UploadFileOutput({required final String? fileUrl}) =
      _$UploadFileOutputImpl;

  @override
  String? get fileUrl;

  /// Create a copy of UploadFileOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFileOutputImplCopyWith<_$UploadFileOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
