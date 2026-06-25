// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChatStarted {
  String get userId => throw _privateConstructorUsedError;
  String get classId => throw _privateConstructorUsedError;
  String get centerId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;

  /// Create a copy of ChatStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStartedCopyWith<ChatStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStartedCopyWith<$Res> {
  factory $ChatStartedCopyWith(
    ChatStarted value,
    $Res Function(ChatStarted) then,
  ) = _$ChatStartedCopyWithImpl<$Res, ChatStarted>;
  @useResult
  $Res call({
    String userId,
    String classId,
    String centerId,
    String fullName,
    String avatar,
    String role,
  });
}

/// @nodoc
class _$ChatStartedCopyWithImpl<$Res, $Val extends ChatStarted>
    implements $ChatStartedCopyWith<$Res> {
  _$ChatStartedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? classId = null,
    Object? centerId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            centerId: null == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatStartedImplCopyWith<$Res>
    implements $ChatStartedCopyWith<$Res> {
  factory _$$ChatStartedImplCopyWith(
    _$ChatStartedImpl value,
    $Res Function(_$ChatStartedImpl) then,
  ) = __$$ChatStartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String classId,
    String centerId,
    String fullName,
    String avatar,
    String role,
  });
}

/// @nodoc
class __$$ChatStartedImplCopyWithImpl<$Res>
    extends _$ChatStartedCopyWithImpl<$Res, _$ChatStartedImpl>
    implements _$$ChatStartedImplCopyWith<$Res> {
  __$$ChatStartedImplCopyWithImpl(
    _$ChatStartedImpl _value,
    $Res Function(_$ChatStartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatStarted
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? classId = null,
    Object? centerId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
  }) {
    return _then(
      _$ChatStartedImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        centerId: null == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
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
      ),
    );
  }
}

/// @nodoc

class _$ChatStartedImpl implements _ChatStarted {
  const _$ChatStartedImpl({
    required this.userId,
    required this.classId,
    this.centerId = '',
    this.fullName = '',
    this.avatar = '',
    this.role = '',
  });

  @override
  final String userId;
  @override
  final String classId;
  @override
  @JsonKey()
  final String centerId;
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
  String toString() {
    return 'ChatStarted(userId: $userId, classId: $classId, centerId: $centerId, fullName: $fullName, avatar: $avatar, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStartedImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    classId,
    centerId,
    fullName,
    avatar,
    role,
  );

  /// Create a copy of ChatStarted
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStartedImplCopyWith<_$ChatStartedImpl> get copyWith =>
      __$$ChatStartedImplCopyWithImpl<_$ChatStartedImpl>(this, _$identity);
}

abstract class _ChatStarted implements ChatStarted {
  const factory _ChatStarted({
    required final String userId,
    required final String classId,
    final String centerId,
    final String fullName,
    final String avatar,
    final String role,
  }) = _$ChatStartedImpl;

  @override
  String get userId;
  @override
  String get classId;
  @override
  String get centerId;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  String get role;

  /// Create a copy of ChatStarted
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStartedImplCopyWith<_$ChatStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClearChat {}

/// @nodoc
abstract class $ClearChatCopyWith<$Res> {
  factory $ClearChatCopyWith(ClearChat value, $Res Function(ClearChat) then) =
      _$ClearChatCopyWithImpl<$Res, ClearChat>;
}

/// @nodoc
class _$ClearChatCopyWithImpl<$Res, $Val extends ClearChat>
    implements $ClearChatCopyWith<$Res> {
  _$ClearChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClearChat
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearChatImplCopyWith<$Res> {
  factory _$$ClearChatImplCopyWith(
    _$ClearChatImpl value,
    $Res Function(_$ClearChatImpl) then,
  ) = __$$ClearChatImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearChatImplCopyWithImpl<$Res>
    extends _$ClearChatCopyWithImpl<$Res, _$ClearChatImpl>
    implements _$$ClearChatImplCopyWith<$Res> {
  __$$ClearChatImplCopyWithImpl(
    _$ClearChatImpl _value,
    $Res Function(_$ClearChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClearChat
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearChatImpl implements _ClearChat {
  const _$ClearChatImpl();

  @override
  String toString() {
    return 'ClearChat()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearChatImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ClearChat implements ClearChat {
  const factory _ClearChat() = _$ClearChatImpl;
}

/// @nodoc
mixin _$FetchContacts {}

/// @nodoc
abstract class $FetchContactsCopyWith<$Res> {
  factory $FetchContactsCopyWith(
    FetchContacts value,
    $Res Function(FetchContacts) then,
  ) = _$FetchContactsCopyWithImpl<$Res, FetchContacts>;
}

/// @nodoc
class _$FetchContactsCopyWithImpl<$Res, $Val extends FetchContacts>
    implements $FetchContactsCopyWith<$Res> {
  _$FetchContactsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchContacts
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchContactsImplCopyWith<$Res> {
  factory _$$FetchContactsImplCopyWith(
    _$FetchContactsImpl value,
    $Res Function(_$FetchContactsImpl) then,
  ) = __$$FetchContactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchContactsImplCopyWithImpl<$Res>
    extends _$FetchContactsCopyWithImpl<$Res, _$FetchContactsImpl>
    implements _$$FetchContactsImplCopyWith<$Res> {
  __$$FetchContactsImplCopyWithImpl(
    _$FetchContactsImpl _value,
    $Res Function(_$FetchContactsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FetchContacts
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchContactsImpl implements _FetchContacts {
  const _$FetchContactsImpl();

  @override
  String toString() {
    return 'FetchContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchContactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _FetchContacts implements FetchContacts {
  const factory _FetchContacts() = _$FetchContactsImpl;
}

/// @nodoc
mixin _$SelectConversation {
  Conversation get conversation => throw _privateConstructorUsedError;

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectConversationCopyWith<SelectConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectConversationCopyWith<$Res> {
  factory $SelectConversationCopyWith(
    SelectConversation value,
    $Res Function(SelectConversation) then,
  ) = _$SelectConversationCopyWithImpl<$Res, SelectConversation>;
  @useResult
  $Res call({Conversation conversation});

  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class _$SelectConversationCopyWithImpl<$Res, $Val extends SelectConversation>
    implements $SelectConversationCopyWith<$Res> {
  _$SelectConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversation = null}) {
    return _then(
      _value.copyWith(
            conversation: null == conversation
                ? _value.conversation
                : conversation // ignore: cast_nullable_to_non_nullable
                      as Conversation,
          )
          as $Val,
    );
  }

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res> get conversation {
    return $ConversationCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectConversationImplCopyWith<$Res>
    implements $SelectConversationCopyWith<$Res> {
  factory _$$SelectConversationImplCopyWith(
    _$SelectConversationImpl value,
    $Res Function(_$SelectConversationImpl) then,
  ) = __$$SelectConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Conversation conversation});

  @override
  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$SelectConversationImplCopyWithImpl<$Res>
    extends _$SelectConversationCopyWithImpl<$Res, _$SelectConversationImpl>
    implements _$$SelectConversationImplCopyWith<$Res> {
  __$$SelectConversationImplCopyWithImpl(
    _$SelectConversationImpl _value,
    $Res Function(_$SelectConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversation = null}) {
    return _then(
      _$SelectConversationImpl(
        null == conversation
            ? _value.conversation
            : conversation // ignore: cast_nullable_to_non_nullable
                  as Conversation,
      ),
    );
  }
}

/// @nodoc

class _$SelectConversationImpl implements _SelectConversation {
  const _$SelectConversationImpl(this.conversation);

  @override
  final Conversation conversation;

  @override
  String toString() {
    return 'SelectConversation(conversation: $conversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectConversationImpl &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversation);

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectConversationImplCopyWith<_$SelectConversationImpl> get copyWith =>
      __$$SelectConversationImplCopyWithImpl<_$SelectConversationImpl>(
        this,
        _$identity,
      );
}

abstract class _SelectConversation implements SelectConversation {
  const factory _SelectConversation(final Conversation conversation) =
      _$SelectConversationImpl;

  @override
  Conversation get conversation;

  /// Create a copy of SelectConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectConversationImplCopyWith<_$SelectConversationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClearCurrentConversation {}

/// @nodoc
abstract class $ClearCurrentConversationCopyWith<$Res> {
  factory $ClearCurrentConversationCopyWith(
    ClearCurrentConversation value,
    $Res Function(ClearCurrentConversation) then,
  ) = _$ClearCurrentConversationCopyWithImpl<$Res, ClearCurrentConversation>;
}

/// @nodoc
class _$ClearCurrentConversationCopyWithImpl<
  $Res,
  $Val extends ClearCurrentConversation
>
    implements $ClearCurrentConversationCopyWith<$Res> {
  _$ClearCurrentConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClearCurrentConversation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearCurrentConversationImplCopyWith<$Res> {
  factory _$$ClearCurrentConversationImplCopyWith(
    _$ClearCurrentConversationImpl value,
    $Res Function(_$ClearCurrentConversationImpl) then,
  ) = __$$ClearCurrentConversationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCurrentConversationImplCopyWithImpl<$Res>
    extends
        _$ClearCurrentConversationCopyWithImpl<
          $Res,
          _$ClearCurrentConversationImpl
        >
    implements _$$ClearCurrentConversationImplCopyWith<$Res> {
  __$$ClearCurrentConversationImplCopyWithImpl(
    _$ClearCurrentConversationImpl _value,
    $Res Function(_$ClearCurrentConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClearCurrentConversation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCurrentConversationImpl implements _ClearCurrentConversation {
  const _$ClearCurrentConversationImpl();

  @override
  String toString() {
    return 'ClearCurrentConversation()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCurrentConversationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ClearCurrentConversation implements ClearCurrentConversation {
  const factory _ClearCurrentConversation() = _$ClearCurrentConversationImpl;
}

/// @nodoc
mixin _$SendChatMessage {
  String get conversationId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;

  /// Create a copy of SendChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendChatMessageCopyWith<SendChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendChatMessageCopyWith<$Res> {
  factory $SendChatMessageCopyWith(
    SendChatMessage value,
    $Res Function(SendChatMessage) then,
  ) = _$SendChatMessageCopyWithImpl<$Res, SendChatMessage>;
  @useResult
  $Res call({
    String conversationId,
    String text,
    String? receiverId,
    String type,
    String? fileUrl,
  });
}

/// @nodoc
class _$SendChatMessageCopyWithImpl<$Res, $Val extends SendChatMessage>
    implements $SendChatMessageCopyWith<$Res> {
  _$SendChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? text = null,
    Object? receiverId = freezed,
    Object? type = null,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            receiverId: freezed == receiverId
                ? _value.receiverId
                : receiverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$SendChatMessageImplCopyWith<$Res>
    implements $SendChatMessageCopyWith<$Res> {
  factory _$$SendChatMessageImplCopyWith(
    _$SendChatMessageImpl value,
    $Res Function(_$SendChatMessageImpl) then,
  ) = __$$SendChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String conversationId,
    String text,
    String? receiverId,
    String type,
    String? fileUrl,
  });
}

/// @nodoc
class __$$SendChatMessageImplCopyWithImpl<$Res>
    extends _$SendChatMessageCopyWithImpl<$Res, _$SendChatMessageImpl>
    implements _$$SendChatMessageImplCopyWith<$Res> {
  __$$SendChatMessageImplCopyWithImpl(
    _$SendChatMessageImpl _value,
    $Res Function(_$SendChatMessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? text = null,
    Object? receiverId = freezed,
    Object? type = null,
    Object? fileUrl = freezed,
  }) {
    return _then(
      _$SendChatMessageImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        receiverId: freezed == receiverId
            ? _value.receiverId
            : receiverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        fileUrl: freezed == fileUrl
            ? _value.fileUrl
            : fileUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendChatMessageImpl implements _SendChatMessage {
  const _$SendChatMessageImpl({
    required this.conversationId,
    required this.text,
    this.receiverId,
    this.type = 'text',
    this.fileUrl,
  });

  @override
  final String conversationId;
  @override
  final String text;
  @override
  final String? receiverId;
  @override
  @JsonKey()
  final String type;
  @override
  final String? fileUrl;

  @override
  String toString() {
    return 'SendChatMessage(conversationId: $conversationId, text: $text, receiverId: $receiverId, type: $type, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, conversationId, text, receiverId, type, fileUrl);

  /// Create a copy of SendChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatMessageImplCopyWith<_$SendChatMessageImpl> get copyWith =>
      __$$SendChatMessageImplCopyWithImpl<_$SendChatMessageImpl>(
        this,
        _$identity,
      );
}

abstract class _SendChatMessage implements SendChatMessage {
  const factory _SendChatMessage({
    required final String conversationId,
    required final String text,
    final String? receiverId,
    final String type,
    final String? fileUrl,
  }) = _$SendChatMessageImpl;

  @override
  String get conversationId;
  @override
  String get text;
  @override
  String? get receiverId;
  @override
  String get type;
  @override
  String? get fileUrl;

  /// Create a copy of SendChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendChatMessageImplCopyWith<_$SendChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OpenDirectChat {
  Contact get contact => throw _privateConstructorUsedError;

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenDirectChatCopyWith<OpenDirectChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenDirectChatCopyWith<$Res> {
  factory $OpenDirectChatCopyWith(
    OpenDirectChat value,
    $Res Function(OpenDirectChat) then,
  ) = _$OpenDirectChatCopyWithImpl<$Res, OpenDirectChat>;
  @useResult
  $Res call({Contact contact});

  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class _$OpenDirectChatCopyWithImpl<$Res, $Val extends OpenDirectChat>
    implements $OpenDirectChatCopyWith<$Res> {
  _$OpenDirectChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contact = null}) {
    return _then(
      _value.copyWith(
            contact: null == contact
                ? _value.contact
                : contact // ignore: cast_nullable_to_non_nullable
                      as Contact,
          )
          as $Val,
    );
  }

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res> get contact {
    return $ContactCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenDirectChatImplCopyWith<$Res>
    implements $OpenDirectChatCopyWith<$Res> {
  factory _$$OpenDirectChatImplCopyWith(
    _$OpenDirectChatImpl value,
    $Res Function(_$OpenDirectChatImpl) then,
  ) = __$$OpenDirectChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Contact contact});

  @override
  $ContactCopyWith<$Res> get contact;
}

/// @nodoc
class __$$OpenDirectChatImplCopyWithImpl<$Res>
    extends _$OpenDirectChatCopyWithImpl<$Res, _$OpenDirectChatImpl>
    implements _$$OpenDirectChatImplCopyWith<$Res> {
  __$$OpenDirectChatImplCopyWithImpl(
    _$OpenDirectChatImpl _value,
    $Res Function(_$OpenDirectChatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? contact = null}) {
    return _then(
      _$OpenDirectChatImpl(
        contact: null == contact
            ? _value.contact
            : contact // ignore: cast_nullable_to_non_nullable
                  as Contact,
      ),
    );
  }
}

/// @nodoc

class _$OpenDirectChatImpl implements _OpenDirectChat {
  const _$OpenDirectChatImpl({required this.contact});

  @override
  final Contact contact;

  @override
  String toString() {
    return 'OpenDirectChat(contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenDirectChatImpl &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contact);

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenDirectChatImplCopyWith<_$OpenDirectChatImpl> get copyWith =>
      __$$OpenDirectChatImplCopyWithImpl<_$OpenDirectChatImpl>(
        this,
        _$identity,
      );
}

abstract class _OpenDirectChat implements OpenDirectChat {
  const factory _OpenDirectChat({required final Contact contact}) =
      _$OpenDirectChatImpl;

  @override
  Contact get contact;

  /// Create a copy of OpenDirectChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenDirectChatImplCopyWith<_$OpenDirectChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateChatConversation {
  List<String> get participantIds => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Create a copy of CreateChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateChatConversationCopyWith<CreateChatConversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatConversationCopyWith<$Res> {
  factory $CreateChatConversationCopyWith(
    CreateChatConversation value,
    $Res Function(CreateChatConversation) then,
  ) = _$CreateChatConversationCopyWithImpl<$Res, CreateChatConversation>;
  @useResult
  $Res call({List<String> participantIds, String type, String? name});
}

/// @nodoc
class _$CreateChatConversationCopyWithImpl<
  $Res,
  $Val extends CreateChatConversation
>
    implements $CreateChatConversationCopyWith<$Res> {
  _$CreateChatConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? type = null,
    Object? name = freezed,
  }) {
    return _then(
      _value.copyWith(
            participantIds: null == participantIds
                ? _value.participantIds
                : participantIds // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateChatConversationImplCopyWith<$Res>
    implements $CreateChatConversationCopyWith<$Res> {
  factory _$$CreateChatConversationImplCopyWith(
    _$CreateChatConversationImpl value,
    $Res Function(_$CreateChatConversationImpl) then,
  ) = __$$CreateChatConversationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> participantIds, String type, String? name});
}

/// @nodoc
class __$$CreateChatConversationImplCopyWithImpl<$Res>
    extends
        _$CreateChatConversationCopyWithImpl<$Res, _$CreateChatConversationImpl>
    implements _$$CreateChatConversationImplCopyWith<$Res> {
  __$$CreateChatConversationImplCopyWithImpl(
    _$CreateChatConversationImpl _value,
    $Res Function(_$CreateChatConversationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participantIds = null,
    Object? type = null,
    Object? name = freezed,
  }) {
    return _then(
      _$CreateChatConversationImpl(
        participantIds: null == participantIds
            ? _value._participantIds
            : participantIds // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$CreateChatConversationImpl implements _CreateChatConversation {
  const _$CreateChatConversationImpl({
    required final List<String> participantIds,
    required this.type,
    this.name,
  }) : _participantIds = participantIds;

  final List<String> _participantIds;
  @override
  List<String> get participantIds {
    if (_participantIds is EqualUnmodifiableListView) return _participantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participantIds);
  }

  @override
  final String type;
  @override
  final String? name;

  @override
  String toString() {
    return 'CreateChatConversation(participantIds: $participantIds, type: $type, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateChatConversationImpl &&
            const DeepCollectionEquality().equals(
              other._participantIds,
              _participantIds,
            ) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_participantIds),
    type,
    name,
  );

  /// Create a copy of CreateChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateChatConversationImplCopyWith<_$CreateChatConversationImpl>
  get copyWith =>
      __$$CreateChatConversationImplCopyWithImpl<_$CreateChatConversationImpl>(
        this,
        _$identity,
      );
}

abstract class _CreateChatConversation implements CreateChatConversation {
  const factory _CreateChatConversation({
    required final List<String> participantIds,
    required final String type,
    final String? name,
  }) = _$CreateChatConversationImpl;

  @override
  List<String> get participantIds;
  @override
  String get type;
  @override
  String? get name;

  /// Create a copy of CreateChatConversation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateChatConversationImplCopyWith<_$CreateChatConversationImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFriendRequest {
  String get toUserId => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFriendRequestCopyWith<SubmitFriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFriendRequestCopyWith<$Res> {
  factory $SubmitFriendRequestCopyWith(
    SubmitFriendRequest value,
    $Res Function(SubmitFriendRequest) then,
  ) = _$SubmitFriendRequestCopyWithImpl<$Res, SubmitFriendRequest>;
  @useResult
  $Res call({String toUserId});
}

/// @nodoc
class _$SubmitFriendRequestCopyWithImpl<$Res, $Val extends SubmitFriendRequest>
    implements $SubmitFriendRequestCopyWith<$Res> {
  _$SubmitFriendRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? toUserId = null}) {
    return _then(
      _value.copyWith(
            toUserId: null == toUserId
                ? _value.toUserId
                : toUserId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitFriendRequestImplCopyWith<$Res>
    implements $SubmitFriendRequestCopyWith<$Res> {
  factory _$$SubmitFriendRequestImplCopyWith(
    _$SubmitFriendRequestImpl value,
    $Res Function(_$SubmitFriendRequestImpl) then,
  ) = __$$SubmitFriendRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String toUserId});
}

/// @nodoc
class __$$SubmitFriendRequestImplCopyWithImpl<$Res>
    extends _$SubmitFriendRequestCopyWithImpl<$Res, _$SubmitFriendRequestImpl>
    implements _$$SubmitFriendRequestImplCopyWith<$Res> {
  __$$SubmitFriendRequestImplCopyWithImpl(
    _$SubmitFriendRequestImpl _value,
    $Res Function(_$SubmitFriendRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? toUserId = null}) {
    return _then(
      _$SubmitFriendRequestImpl(
        toUserId: null == toUserId
            ? _value.toUserId
            : toUserId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFriendRequestImpl implements _SubmitFriendRequest {
  const _$SubmitFriendRequestImpl({required this.toUserId});

  @override
  final String toUserId;

  @override
  String toString() {
    return 'SubmitFriendRequest(toUserId: $toUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendRequestImpl &&
            (identical(other.toUserId, toUserId) ||
                other.toUserId == toUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toUserId);

  /// Create a copy of SubmitFriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFriendRequestImplCopyWith<_$SubmitFriendRequestImpl> get copyWith =>
      __$$SubmitFriendRequestImplCopyWithImpl<_$SubmitFriendRequestImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFriendRequest implements SubmitFriendRequest {
  const factory _SubmitFriendRequest({required final String toUserId}) =
      _$SubmitFriendRequestImpl;

  @override
  String get toUserId;

  /// Create a copy of SubmitFriendRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFriendRequestImplCopyWith<_$SubmitFriendRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitFriendDecision {
  String get requestId => throw _privateConstructorUsedError;
  bool get accept => throw _privateConstructorUsedError;

  /// Create a copy of SubmitFriendDecision
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitFriendDecisionCopyWith<SubmitFriendDecision> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFriendDecisionCopyWith<$Res> {
  factory $SubmitFriendDecisionCopyWith(
    SubmitFriendDecision value,
    $Res Function(SubmitFriendDecision) then,
  ) = _$SubmitFriendDecisionCopyWithImpl<$Res, SubmitFriendDecision>;
  @useResult
  $Res call({String requestId, bool accept});
}

/// @nodoc
class _$SubmitFriendDecisionCopyWithImpl<
  $Res,
  $Val extends SubmitFriendDecision
>
    implements $SubmitFriendDecisionCopyWith<$Res> {
  _$SubmitFriendDecisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitFriendDecision
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? requestId = null, Object? accept = null}) {
    return _then(
      _value.copyWith(
            requestId: null == requestId
                ? _value.requestId
                : requestId // ignore: cast_nullable_to_non_nullable
                      as String,
            accept: null == accept
                ? _value.accept
                : accept // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitFriendDecisionImplCopyWith<$Res>
    implements $SubmitFriendDecisionCopyWith<$Res> {
  factory _$$SubmitFriendDecisionImplCopyWith(
    _$SubmitFriendDecisionImpl value,
    $Res Function(_$SubmitFriendDecisionImpl) then,
  ) = __$$SubmitFriendDecisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestId, bool accept});
}

/// @nodoc
class __$$SubmitFriendDecisionImplCopyWithImpl<$Res>
    extends _$SubmitFriendDecisionCopyWithImpl<$Res, _$SubmitFriendDecisionImpl>
    implements _$$SubmitFriendDecisionImplCopyWith<$Res> {
  __$$SubmitFriendDecisionImplCopyWithImpl(
    _$SubmitFriendDecisionImpl _value,
    $Res Function(_$SubmitFriendDecisionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitFriendDecision
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? requestId = null, Object? accept = null}) {
    return _then(
      _$SubmitFriendDecisionImpl(
        requestId: null == requestId
            ? _value.requestId
            : requestId // ignore: cast_nullable_to_non_nullable
                  as String,
        accept: null == accept
            ? _value.accept
            : accept // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SubmitFriendDecisionImpl implements _SubmitFriendDecision {
  const _$SubmitFriendDecisionImpl({
    required this.requestId,
    required this.accept,
  });

  @override
  final String requestId;
  @override
  final bool accept;

  @override
  String toString() {
    return 'SubmitFriendDecision(requestId: $requestId, accept: $accept)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFriendDecisionImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.accept, accept) || other.accept == accept));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, accept);

  /// Create a copy of SubmitFriendDecision
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFriendDecisionImplCopyWith<_$SubmitFriendDecisionImpl>
  get copyWith =>
      __$$SubmitFriendDecisionImplCopyWithImpl<_$SubmitFriendDecisionImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitFriendDecision implements SubmitFriendDecision {
  const factory _SubmitFriendDecision({
    required final String requestId,
    required final bool accept,
  }) = _$SubmitFriendDecisionImpl;

  @override
  String get requestId;
  @override
  bool get accept;

  /// Create a copy of SubmitFriendDecision
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitFriendDecisionImplCopyWith<_$SubmitFriendDecisionImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadOlderMessages {}

/// @nodoc
abstract class $LoadOlderMessagesCopyWith<$Res> {
  factory $LoadOlderMessagesCopyWith(
    LoadOlderMessages value,
    $Res Function(LoadOlderMessages) then,
  ) = _$LoadOlderMessagesCopyWithImpl<$Res, LoadOlderMessages>;
}

/// @nodoc
class _$LoadOlderMessagesCopyWithImpl<$Res, $Val extends LoadOlderMessages>
    implements $LoadOlderMessagesCopyWith<$Res> {
  _$LoadOlderMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadOlderMessages
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadOlderMessagesImplCopyWith<$Res> {
  factory _$$LoadOlderMessagesImplCopyWith(
    _$LoadOlderMessagesImpl value,
    $Res Function(_$LoadOlderMessagesImpl) then,
  ) = __$$LoadOlderMessagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOlderMessagesImplCopyWithImpl<$Res>
    extends _$LoadOlderMessagesCopyWithImpl<$Res, _$LoadOlderMessagesImpl>
    implements _$$LoadOlderMessagesImplCopyWith<$Res> {
  __$$LoadOlderMessagesImplCopyWithImpl(
    _$LoadOlderMessagesImpl _value,
    $Res Function(_$LoadOlderMessagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoadOlderMessages
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadOlderMessagesImpl implements _LoadOlderMessages {
  const _$LoadOlderMessagesImpl();

  @override
  String toString() {
    return 'LoadOlderMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadOlderMessagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadOlderMessages implements LoadOlderMessages {
  const factory _LoadOlderMessages() = _$LoadOlderMessagesImpl;
}

/// @nodoc
mixin _$OpenConversationFromPush {
  String get conversationId => throw _privateConstructorUsedError;

  /// Create a copy of OpenConversationFromPush
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenConversationFromPushCopyWith<OpenConversationFromPush> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenConversationFromPushCopyWith<$Res> {
  factory $OpenConversationFromPushCopyWith(
    OpenConversationFromPush value,
    $Res Function(OpenConversationFromPush) then,
  ) = _$OpenConversationFromPushCopyWithImpl<$Res, OpenConversationFromPush>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class _$OpenConversationFromPushCopyWithImpl<
  $Res,
  $Val extends OpenConversationFromPush
>
    implements $OpenConversationFromPushCopyWith<$Res> {
  _$OpenConversationFromPushCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenConversationFromPush
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _value.copyWith(
            conversationId: null == conversationId
                ? _value.conversationId
                : conversationId // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OpenConversationFromPushImplCopyWith<$Res>
    implements $OpenConversationFromPushCopyWith<$Res> {
  factory _$$OpenConversationFromPushImplCopyWith(
    _$OpenConversationFromPushImpl value,
    $Res Function(_$OpenConversationFromPushImpl) then,
  ) = __$$OpenConversationFromPushImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$OpenConversationFromPushImplCopyWithImpl<$Res>
    extends
        _$OpenConversationFromPushCopyWithImpl<
          $Res,
          _$OpenConversationFromPushImpl
        >
    implements _$$OpenConversationFromPushImplCopyWith<$Res> {
  __$$OpenConversationFromPushImplCopyWithImpl(
    _$OpenConversationFromPushImpl _value,
    $Res Function(_$OpenConversationFromPushImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OpenConversationFromPush
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversationId = null}) {
    return _then(
      _$OpenConversationFromPushImpl(
        conversationId: null == conversationId
            ? _value.conversationId
            : conversationId // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OpenConversationFromPushImpl implements _OpenConversationFromPush {
  const _$OpenConversationFromPushImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'OpenConversationFromPush(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenConversationFromPushImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of OpenConversationFromPush
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenConversationFromPushImplCopyWith<_$OpenConversationFromPushImpl>
  get copyWith =>
      __$$OpenConversationFromPushImplCopyWithImpl<
        _$OpenConversationFromPushImpl
      >(this, _$identity);
}

abstract class _OpenConversationFromPush implements OpenConversationFromPush {
  const factory _OpenConversationFromPush({
    required final String conversationId,
  }) = _$OpenConversationFromPushImpl;

  @override
  String get conversationId;

  /// Create a copy of OpenConversationFromPush
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenConversationFromPushImplCopyWith<_$OpenConversationFromPushImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClearPresentConversationFlag {}

/// @nodoc
abstract class $ClearPresentConversationFlagCopyWith<$Res> {
  factory $ClearPresentConversationFlagCopyWith(
    ClearPresentConversationFlag value,
    $Res Function(ClearPresentConversationFlag) then,
  ) =
      _$ClearPresentConversationFlagCopyWithImpl<
        $Res,
        ClearPresentConversationFlag
      >;
}

/// @nodoc
class _$ClearPresentConversationFlagCopyWithImpl<
  $Res,
  $Val extends ClearPresentConversationFlag
>
    implements $ClearPresentConversationFlagCopyWith<$Res> {
  _$ClearPresentConversationFlagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClearPresentConversationFlag
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearPresentConversationFlagImplCopyWith<$Res> {
  factory _$$ClearPresentConversationFlagImplCopyWith(
    _$ClearPresentConversationFlagImpl value,
    $Res Function(_$ClearPresentConversationFlagImpl) then,
  ) = __$$ClearPresentConversationFlagImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPresentConversationFlagImplCopyWithImpl<$Res>
    extends
        _$ClearPresentConversationFlagCopyWithImpl<
          $Res,
          _$ClearPresentConversationFlagImpl
        >
    implements _$$ClearPresentConversationFlagImplCopyWith<$Res> {
  __$$ClearPresentConversationFlagImplCopyWithImpl(
    _$ClearPresentConversationFlagImpl _value,
    $Res Function(_$ClearPresentConversationFlagImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClearPresentConversationFlag
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPresentConversationFlagImpl
    implements _ClearPresentConversationFlag {
  const _$ClearPresentConversationFlagImpl();

  @override
  String toString() {
    return 'ClearPresentConversationFlag()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPresentConversationFlagImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ClearPresentConversationFlag
    implements ClearPresentConversationFlag {
  const factory _ClearPresentConversationFlag() =
      _$ClearPresentConversationFlagImpl;
}

/// @nodoc
mixin _$ConversationsUpdated {
  List<Conversation> get conversations => throw _privateConstructorUsedError;

  /// Create a copy of _ConversationsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$ConversationsUpdatedCopyWith<_ConversationsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConversationsUpdatedCopyWith<$Res> {
  factory _$ConversationsUpdatedCopyWith(
    _ConversationsUpdated value,
    $Res Function(_ConversationsUpdated) then,
  ) = __$ConversationsUpdatedCopyWithImpl<$Res, _ConversationsUpdated>;
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$ConversationsUpdatedCopyWithImpl<
  $Res,
  $Val extends _ConversationsUpdated
>
    implements _$ConversationsUpdatedCopyWith<$Res> {
  __$ConversationsUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _ConversationsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversations = null}) {
    return _then(
      _value.copyWith(
            conversations: null == conversations
                ? _value.conversations
                : conversations // ignore: cast_nullable_to_non_nullable
                      as List<Conversation>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_ConversationsUpdatedImplCopyWith<$Res>
    implements _$ConversationsUpdatedCopyWith<$Res> {
  factory _$$_ConversationsUpdatedImplCopyWith(
    _$_ConversationsUpdatedImpl value,
    $Res Function(_$_ConversationsUpdatedImpl) then,
  ) = __$$_ConversationsUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Conversation> conversations});
}

/// @nodoc
class __$$_ConversationsUpdatedImplCopyWithImpl<$Res>
    extends
        __$ConversationsUpdatedCopyWithImpl<$Res, _$_ConversationsUpdatedImpl>
    implements _$$_ConversationsUpdatedImplCopyWith<$Res> {
  __$$_ConversationsUpdatedImplCopyWithImpl(
    _$_ConversationsUpdatedImpl _value,
    $Res Function(_$_ConversationsUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of _ConversationsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? conversations = null}) {
    return _then(
      _$_ConversationsUpdatedImpl(
        null == conversations
            ? _value._conversations
            : conversations // ignore: cast_nullable_to_non_nullable
                  as List<Conversation>,
      ),
    );
  }
}

/// @nodoc

class _$_ConversationsUpdatedImpl implements __ConversationsUpdated {
  const _$_ConversationsUpdatedImpl(final List<Conversation> conversations)
    : _conversations = conversations;

  final List<Conversation> _conversations;
  @override
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  @override
  String toString() {
    return '_ConversationsUpdated(conversations: $conversations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationsUpdatedImpl &&
            const DeepCollectionEquality().equals(
              other._conversations,
              _conversations,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_conversations),
  );

  /// Create a copy of _ConversationsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationsUpdatedImplCopyWith<_$_ConversationsUpdatedImpl>
  get copyWith =>
      __$$_ConversationsUpdatedImplCopyWithImpl<_$_ConversationsUpdatedImpl>(
        this,
        _$identity,
      );
}

abstract class __ConversationsUpdated implements _ConversationsUpdated {
  const factory __ConversationsUpdated(final List<Conversation> conversations) =
      _$_ConversationsUpdatedImpl;

  @override
  List<Conversation> get conversations;

  /// Create a copy of _ConversationsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_ConversationsUpdatedImplCopyWith<_$_ConversationsUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessagesUpdated {
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Create a copy of _MessagesUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$MessagesUpdatedCopyWith<_MessagesUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MessagesUpdatedCopyWith<$Res> {
  factory _$MessagesUpdatedCopyWith(
    _MessagesUpdated value,
    $Res Function(_MessagesUpdated) then,
  ) = __$MessagesUpdatedCopyWithImpl<$Res, _MessagesUpdated>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$MessagesUpdatedCopyWithImpl<$Res, $Val extends _MessagesUpdated>
    implements _$MessagesUpdatedCopyWith<$Res> {
  __$MessagesUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _MessagesUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _value.copyWith(
            messages: null == messages
                ? _value.messages
                : messages // ignore: cast_nullable_to_non_nullable
                      as List<Message>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_MessagesUpdatedImplCopyWith<$Res>
    implements _$MessagesUpdatedCopyWith<$Res> {
  factory _$$_MessagesUpdatedImplCopyWith(
    _$_MessagesUpdatedImpl value,
    $Res Function(_$_MessagesUpdatedImpl) then,
  ) = __$$_MessagesUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$_MessagesUpdatedImplCopyWithImpl<$Res>
    extends __$MessagesUpdatedCopyWithImpl<$Res, _$_MessagesUpdatedImpl>
    implements _$$_MessagesUpdatedImplCopyWith<$Res> {
  __$$_MessagesUpdatedImplCopyWithImpl(
    _$_MessagesUpdatedImpl _value,
    $Res Function(_$_MessagesUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of _MessagesUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? messages = null}) {
    return _then(
      _$_MessagesUpdatedImpl(
        null == messages
            ? _value._messages
            : messages // ignore: cast_nullable_to_non_nullable
                  as List<Message>,
      ),
    );
  }
}

/// @nodoc

class _$_MessagesUpdatedImpl implements __MessagesUpdated {
  const _$_MessagesUpdatedImpl(final List<Message> messages)
    : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return '_MessagesUpdated(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesUpdatedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of _MessagesUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesUpdatedImplCopyWith<_$_MessagesUpdatedImpl> get copyWith =>
      __$$_MessagesUpdatedImplCopyWithImpl<_$_MessagesUpdatedImpl>(
        this,
        _$identity,
      );
}

abstract class __MessagesUpdated implements _MessagesUpdated {
  const factory __MessagesUpdated(final List<Message> messages) =
      _$_MessagesUpdatedImpl;

  @override
  List<Message> get messages;

  /// Create a copy of _MessagesUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_MessagesUpdatedImplCopyWith<_$_MessagesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FriendRequestsUpdated {
  List<FriendRequest> get requests => throw _privateConstructorUsedError;

  /// Create a copy of _FriendRequestsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$FriendRequestsUpdatedCopyWith<_FriendRequestsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FriendRequestsUpdatedCopyWith<$Res> {
  factory _$FriendRequestsUpdatedCopyWith(
    _FriendRequestsUpdated value,
    $Res Function(_FriendRequestsUpdated) then,
  ) = __$FriendRequestsUpdatedCopyWithImpl<$Res, _FriendRequestsUpdated>;
  @useResult
  $Res call({List<FriendRequest> requests});
}

/// @nodoc
class __$FriendRequestsUpdatedCopyWithImpl<
  $Res,
  $Val extends _FriendRequestsUpdated
>
    implements _$FriendRequestsUpdatedCopyWith<$Res> {
  __$FriendRequestsUpdatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _FriendRequestsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? requests = null}) {
    return _then(
      _value.copyWith(
            requests: null == requests
                ? _value.requests
                : requests // ignore: cast_nullable_to_non_nullable
                      as List<FriendRequest>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$_FriendRequestsUpdatedImplCopyWith<$Res>
    implements _$FriendRequestsUpdatedCopyWith<$Res> {
  factory _$$_FriendRequestsUpdatedImplCopyWith(
    _$_FriendRequestsUpdatedImpl value,
    $Res Function(_$_FriendRequestsUpdatedImpl) then,
  ) = __$$_FriendRequestsUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FriendRequest> requests});
}

/// @nodoc
class __$$_FriendRequestsUpdatedImplCopyWithImpl<$Res>
    extends
        __$FriendRequestsUpdatedCopyWithImpl<$Res, _$_FriendRequestsUpdatedImpl>
    implements _$$_FriendRequestsUpdatedImplCopyWith<$Res> {
  __$$_FriendRequestsUpdatedImplCopyWithImpl(
    _$_FriendRequestsUpdatedImpl _value,
    $Res Function(_$_FriendRequestsUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of _FriendRequestsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? requests = null}) {
    return _then(
      _$_FriendRequestsUpdatedImpl(
        null == requests
            ? _value._requests
            : requests // ignore: cast_nullable_to_non_nullable
                  as List<FriendRequest>,
      ),
    );
  }
}

/// @nodoc

class _$_FriendRequestsUpdatedImpl implements __FriendRequestsUpdated {
  const _$_FriendRequestsUpdatedImpl(final List<FriendRequest> requests)
    : _requests = requests;

  final List<FriendRequest> _requests;
  @override
  List<FriendRequest> get requests {
    if (_requests is EqualUnmodifiableListView) return _requests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requests);
  }

  @override
  String toString() {
    return '_FriendRequestsUpdated(requests: $requests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequestsUpdatedImpl &&
            const DeepCollectionEquality().equals(other._requests, _requests));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_requests));

  /// Create a copy of _FriendRequestsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendRequestsUpdatedImplCopyWith<_$_FriendRequestsUpdatedImpl>
  get copyWith =>
      __$$_FriendRequestsUpdatedImplCopyWithImpl<_$_FriendRequestsUpdatedImpl>(
        this,
        _$identity,
      );
}

abstract class __FriendRequestsUpdated implements _FriendRequestsUpdated {
  const factory __FriendRequestsUpdated(final List<FriendRequest> requests) =
      _$_FriendRequestsUpdatedImpl;

  @override
  List<FriendRequest> get requests;

  /// Create a copy of _FriendRequestsUpdated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_FriendRequestsUpdatedImplCopyWith<_$_FriendRequestsUpdatedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  List<Contact> get contacts => throw _privateConstructorUsedError;
  List<Conversation> get conversations => throw _privateConstructorUsedError;
  List<FriendRequest> get incomingFriendRequests =>
      throw _privateConstructorUsedError;
  Conversation? get currentConversation => throw _privateConstructorUsedError;
  List<Message> get currentMessages => throw _privateConstructorUsedError;
  String get currentUserId => throw _privateConstructorUsedError;
  String get classId => throw _privateConstructorUsedError;
  String get centerId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  int get totalUnreadCount => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMessages => throw _privateConstructorUsedError;
  bool get isLoadingOlderMessages => throw _privateConstructorUsedError;
  bool get hasMoreOlderMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get onPageError => throw _privateConstructorUsedError;
  String get submitError => throw _privateConstructorUsedError;
  String get pendingPushConversationId => throw _privateConstructorUsedError;
  bool get presentConversation => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({
    List<Contact> contacts,
    List<Conversation> conversations,
    List<FriendRequest> incomingFriendRequests,
    Conversation? currentConversation,
    List<Message> currentMessages,
    String currentUserId,
    String classId,
    String centerId,
    String fullName,
    String avatar,
    String role,
    int totalUnreadCount,
    bool isLoading,
    bool isLoadingMessages,
    bool isLoadingOlderMessages,
    bool hasMoreOlderMessages,
    bool isSubmitting,
    String onPageError,
    String submitError,
    String pendingPushConversationId,
    bool presentConversation,
  });

  $ConversationCopyWith<$Res>? get currentConversation;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? conversations = null,
    Object? incomingFriendRequests = null,
    Object? currentConversation = freezed,
    Object? currentMessages = null,
    Object? currentUserId = null,
    Object? classId = null,
    Object? centerId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? totalUnreadCount = null,
    Object? isLoading = null,
    Object? isLoadingMessages = null,
    Object? isLoadingOlderMessages = null,
    Object? hasMoreOlderMessages = null,
    Object? isSubmitting = null,
    Object? onPageError = null,
    Object? submitError = null,
    Object? pendingPushConversationId = null,
    Object? presentConversation = null,
  }) {
    return _then(
      _value.copyWith(
            contacts: null == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<Contact>,
            conversations: null == conversations
                ? _value.conversations
                : conversations // ignore: cast_nullable_to_non_nullable
                      as List<Conversation>,
            incomingFriendRequests: null == incomingFriendRequests
                ? _value.incomingFriendRequests
                : incomingFriendRequests // ignore: cast_nullable_to_non_nullable
                      as List<FriendRequest>,
            currentConversation: freezed == currentConversation
                ? _value.currentConversation
                : currentConversation // ignore: cast_nullable_to_non_nullable
                      as Conversation?,
            currentMessages: null == currentMessages
                ? _value.currentMessages
                : currentMessages // ignore: cast_nullable_to_non_nullable
                      as List<Message>,
            currentUserId: null == currentUserId
                ? _value.currentUserId
                : currentUserId // ignore: cast_nullable_to_non_nullable
                      as String,
            classId: null == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String,
            centerId: null == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
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
            totalUnreadCount: null == totalUnreadCount
                ? _value.totalUnreadCount
                : totalUnreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingMessages: null == isLoadingMessages
                ? _value.isLoadingMessages
                : isLoadingMessages // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLoadingOlderMessages: null == isLoadingOlderMessages
                ? _value.isLoadingOlderMessages
                : isLoadingOlderMessages // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasMoreOlderMessages: null == hasMoreOlderMessages
                ? _value.hasMoreOlderMessages
                : hasMoreOlderMessages // ignore: cast_nullable_to_non_nullable
                      as bool,
            isSubmitting: null == isSubmitting
                ? _value.isSubmitting
                : isSubmitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            onPageError: null == onPageError
                ? _value.onPageError
                : onPageError // ignore: cast_nullable_to_non_nullable
                      as String,
            submitError: null == submitError
                ? _value.submitError
                : submitError // ignore: cast_nullable_to_non_nullable
                      as String,
            pendingPushConversationId: null == pendingPushConversationId
                ? _value.pendingPushConversationId
                : pendingPushConversationId // ignore: cast_nullable_to_non_nullable
                      as String,
            presentConversation: null == presentConversation
                ? _value.presentConversation
                : presentConversation // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res>? get currentConversation {
    if (_value.currentConversation == null) {
      return null;
    }

    return $ConversationCopyWith<$Res>(_value.currentConversation!, (value) {
      return _then(_value.copyWith(currentConversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
    _$ChatStateImpl value,
    $Res Function(_$ChatStateImpl) then,
  ) = __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Contact> contacts,
    List<Conversation> conversations,
    List<FriendRequest> incomingFriendRequests,
    Conversation? currentConversation,
    List<Message> currentMessages,
    String currentUserId,
    String classId,
    String centerId,
    String fullName,
    String avatar,
    String role,
    int totalUnreadCount,
    bool isLoading,
    bool isLoadingMessages,
    bool isLoadingOlderMessages,
    bool hasMoreOlderMessages,
    bool isSubmitting,
    String onPageError,
    String submitError,
    String pendingPushConversationId,
    bool presentConversation,
  });

  @override
  $ConversationCopyWith<$Res>? get currentConversation;
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
    _$ChatStateImpl _value,
    $Res Function(_$ChatStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
    Object? conversations = null,
    Object? incomingFriendRequests = null,
    Object? currentConversation = freezed,
    Object? currentMessages = null,
    Object? currentUserId = null,
    Object? classId = null,
    Object? centerId = null,
    Object? fullName = null,
    Object? avatar = null,
    Object? role = null,
    Object? totalUnreadCount = null,
    Object? isLoading = null,
    Object? isLoadingMessages = null,
    Object? isLoadingOlderMessages = null,
    Object? hasMoreOlderMessages = null,
    Object? isSubmitting = null,
    Object? onPageError = null,
    Object? submitError = null,
    Object? pendingPushConversationId = null,
    Object? presentConversation = null,
  }) {
    return _then(
      _$ChatStateImpl(
        contacts: null == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<Contact>,
        conversations: null == conversations
            ? _value._conversations
            : conversations // ignore: cast_nullable_to_non_nullable
                  as List<Conversation>,
        incomingFriendRequests: null == incomingFriendRequests
            ? _value._incomingFriendRequests
            : incomingFriendRequests // ignore: cast_nullable_to_non_nullable
                  as List<FriendRequest>,
        currentConversation: freezed == currentConversation
            ? _value.currentConversation
            : currentConversation // ignore: cast_nullable_to_non_nullable
                  as Conversation?,
        currentMessages: null == currentMessages
            ? _value._currentMessages
            : currentMessages // ignore: cast_nullable_to_non_nullable
                  as List<Message>,
        currentUserId: null == currentUserId
            ? _value.currentUserId
            : currentUserId // ignore: cast_nullable_to_non_nullable
                  as String,
        classId: null == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String,
        centerId: null == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
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
        totalUnreadCount: null == totalUnreadCount
            ? _value.totalUnreadCount
            : totalUnreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingMessages: null == isLoadingMessages
            ? _value.isLoadingMessages
            : isLoadingMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLoadingOlderMessages: null == isLoadingOlderMessages
            ? _value.isLoadingOlderMessages
            : isLoadingOlderMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasMoreOlderMessages: null == hasMoreOlderMessages
            ? _value.hasMoreOlderMessages
            : hasMoreOlderMessages // ignore: cast_nullable_to_non_nullable
                  as bool,
        isSubmitting: null == isSubmitting
            ? _value.isSubmitting
            : isSubmitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        onPageError: null == onPageError
            ? _value.onPageError
            : onPageError // ignore: cast_nullable_to_non_nullable
                  as String,
        submitError: null == submitError
            ? _value.submitError
            : submitError // ignore: cast_nullable_to_non_nullable
                  as String,
        pendingPushConversationId: null == pendingPushConversationId
            ? _value.pendingPushConversationId
            : pendingPushConversationId // ignore: cast_nullable_to_non_nullable
                  as String,
        presentConversation: null == presentConversation
            ? _value.presentConversation
            : presentConversation // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl({
    final List<Contact> contacts = const [],
    final List<Conversation> conversations = const [],
    final List<FriendRequest> incomingFriendRequests = const [],
    this.currentConversation,
    final List<Message> currentMessages = const [],
    this.currentUserId = '',
    this.classId = '',
    this.centerId = '',
    this.fullName = '',
    this.avatar = '',
    this.role = '',
    this.totalUnreadCount = 0,
    this.isLoading = false,
    this.isLoadingMessages = false,
    this.isLoadingOlderMessages = false,
    this.hasMoreOlderMessages = true,
    this.isSubmitting = false,
    this.onPageError = '',
    this.submitError = '',
    this.pendingPushConversationId = '',
    this.presentConversation = false,
  }) : _contacts = contacts,
       _conversations = conversations,
       _incomingFriendRequests = incomingFriendRequests,
       _currentMessages = currentMessages;

  final List<Contact> _contacts;
  @override
  @JsonKey()
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<Conversation> _conversations;
  @override
  @JsonKey()
  List<Conversation> get conversations {
    if (_conversations is EqualUnmodifiableListView) return _conversations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conversations);
  }

  final List<FriendRequest> _incomingFriendRequests;
  @override
  @JsonKey()
  List<FriendRequest> get incomingFriendRequests {
    if (_incomingFriendRequests is EqualUnmodifiableListView)
      return _incomingFriendRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomingFriendRequests);
  }

  @override
  final Conversation? currentConversation;
  final List<Message> _currentMessages;
  @override
  @JsonKey()
  List<Message> get currentMessages {
    if (_currentMessages is EqualUnmodifiableListView) return _currentMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentMessages);
  }

  @override
  @JsonKey()
  final String currentUserId;
  @override
  @JsonKey()
  final String classId;
  @override
  @JsonKey()
  final String centerId;
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
  final int totalUnreadCount;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMessages;
  @override
  @JsonKey()
  final bool isLoadingOlderMessages;
  @override
  @JsonKey()
  final bool hasMoreOlderMessages;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final String onPageError;
  @override
  @JsonKey()
  final String submitError;
  @override
  @JsonKey()
  final String pendingPushConversationId;
  @override
  @JsonKey()
  final bool presentConversation;

  @override
  String toString() {
    return 'ChatState(contacts: $contacts, conversations: $conversations, incomingFriendRequests: $incomingFriendRequests, currentConversation: $currentConversation, currentMessages: $currentMessages, currentUserId: $currentUserId, classId: $classId, centerId: $centerId, fullName: $fullName, avatar: $avatar, role: $role, totalUnreadCount: $totalUnreadCount, isLoading: $isLoading, isLoadingMessages: $isLoadingMessages, isLoadingOlderMessages: $isLoadingOlderMessages, hasMoreOlderMessages: $hasMoreOlderMessages, isSubmitting: $isSubmitting, onPageError: $onPageError, submitError: $submitError, pendingPushConversationId: $pendingPushConversationId, presentConversation: $presentConversation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality().equals(
              other._conversations,
              _conversations,
            ) &&
            const DeepCollectionEquality().equals(
              other._incomingFriendRequests,
              _incomingFriendRequests,
            ) &&
            (identical(other.currentConversation, currentConversation) ||
                other.currentConversation == currentConversation) &&
            const DeepCollectionEquality().equals(
              other._currentMessages,
              _currentMessages,
            ) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                other.totalUnreadCount == totalUnreadCount) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMessages, isLoadingMessages) ||
                other.isLoadingMessages == isLoadingMessages) &&
            (identical(other.isLoadingOlderMessages, isLoadingOlderMessages) ||
                other.isLoadingOlderMessages == isLoadingOlderMessages) &&
            (identical(other.hasMoreOlderMessages, hasMoreOlderMessages) ||
                other.hasMoreOlderMessages == hasMoreOlderMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.onPageError, onPageError) ||
                other.onPageError == onPageError) &&
            (identical(other.submitError, submitError) ||
                other.submitError == submitError) &&
            (identical(
                  other.pendingPushConversationId,
                  pendingPushConversationId,
                ) ||
                other.pendingPushConversationId == pendingPushConversationId) &&
            (identical(other.presentConversation, presentConversation) ||
                other.presentConversation == presentConversation));
  }

  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    const DeepCollectionEquality().hash(_contacts),
    const DeepCollectionEquality().hash(_conversations),
    const DeepCollectionEquality().hash(_incomingFriendRequests),
    currentConversation,
    const DeepCollectionEquality().hash(_currentMessages),
    currentUserId,
    classId,
    centerId,
    fullName,
    avatar,
    role,
    totalUnreadCount,
    isLoading,
    isLoadingMessages,
    isLoadingOlderMessages,
    hasMoreOlderMessages,
    isSubmitting,
    onPageError,
    submitError,
    pendingPushConversationId,
    presentConversation,
  ]);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState({
    final List<Contact> contacts,
    final List<Conversation> conversations,
    final List<FriendRequest> incomingFriendRequests,
    final Conversation? currentConversation,
    final List<Message> currentMessages,
    final String currentUserId,
    final String classId,
    final String centerId,
    final String fullName,
    final String avatar,
    final String role,
    final int totalUnreadCount,
    final bool isLoading,
    final bool isLoadingMessages,
    final bool isLoadingOlderMessages,
    final bool hasMoreOlderMessages,
    final bool isSubmitting,
    final String onPageError,
    final String submitError,
    final String pendingPushConversationId,
    final bool presentConversation,
  }) = _$ChatStateImpl;

  @override
  List<Contact> get contacts;
  @override
  List<Conversation> get conversations;
  @override
  List<FriendRequest> get incomingFriendRequests;
  @override
  Conversation? get currentConversation;
  @override
  List<Message> get currentMessages;
  @override
  String get currentUserId;
  @override
  String get classId;
  @override
  String get centerId;
  @override
  String get fullName;
  @override
  String get avatar;
  @override
  String get role;
  @override
  int get totalUnreadCount;
  @override
  bool get isLoading;
  @override
  bool get isLoadingMessages;
  @override
  bool get isLoadingOlderMessages;
  @override
  bool get hasMoreOlderMessages;
  @override
  bool get isSubmitting;
  @override
  String get onPageError;
  @override
  String get submitError;
  @override
  String get pendingPushConversationId;
  @override
  bool get presentConversation;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
