// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentData _$StudentDataFromJson(Map<String, dynamic> json) {
  return _StudentData.fromJson(json);
}

/// @nodoc
mixin _$StudentData {
  @JsonKey(name: 'id', includeToJson: false)
  String? get id => throw _privateConstructorUsedError; // ID thường được lấy từ Document ID
  @JsonKey(name: 'classId')
  String? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String? get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  String? get dob => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateOfBirth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentCode')
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentUserId')
  String? get parentUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacts')
  List<ContactData>? get contacts => throw _privateConstructorUsedError; // Y tế & Thể chất
  @JsonKey(name: 'birthHistory')
  String? get birthHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosis')
  String? get diagnosis => throw _privateConstructorUsedError;
  @JsonKey(name: 'allergies')
  String? get allergies => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentMedications')
  String? get currentMedications => throw _privateConstructorUsedError;
  @JsonKey(name: 'bloodType')
  String? get bloodType => throw _privateConstructorUsedError; // Hành vi & Sở thích
  @JsonKey(name: 'likes')
  String? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'dislikesOrTriggers')
  String? get dislikesOrTriggers => throw _privateConstructorUsedError;
  @JsonKey(name: 'selfCareSkills')
  String? get selfCareSkills => throw _privateConstructorUsedError; // Cũ / Tương thích ngược
  @JsonKey(name: 'initialReason')
  String? get initialReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosisSummary')
  String? get diagnosisSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'developmentAgeMonth')
  int? get developmentAgeMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportLevel')
  String? get supportLevel => throw _privateConstructorUsedError;

  /// Serializes this StudentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentDataCopyWith<StudentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentDataCopyWith<$Res> {
  factory $StudentDataCopyWith(
    StudentData value,
    $Res Function(StudentData) then,
  ) = _$StudentDataCopyWithImpl<$Res, StudentData>;
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickname') String? nickname,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parentUserId') String? parentUserId,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
    @JsonKey(name: 'birthHistory') String? birthHistory,
    @JsonKey(name: 'diagnosis') String? diagnosis,
    @JsonKey(name: 'allergies') String? allergies,
    @JsonKey(name: 'currentMedications') String? currentMedications,
    @JsonKey(name: 'bloodType') String? bloodType,
    @JsonKey(name: 'likes') String? likes,
    @JsonKey(name: 'dislikesOrTriggers') String? dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') String? selfCareSkills,
    @JsonKey(name: 'initialReason') String? initialReason,
    @JsonKey(name: 'diagnosisSummary') String? diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') int? developmentAgeMonth,
    @JsonKey(name: 'supportLevel') String? supportLevel,
  });
}

/// @nodoc
class _$StudentDataCopyWithImpl<$Res, $Val extends StudentData>
    implements $StudentDataCopyWith<$Res> {
  _$StudentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarUrl = freezed,
    Object? studentCode = freezed,
    Object? status = freezed,
    Object? parentUserId = freezed,
    Object? address = freezed,
    Object? contacts = freezed,
    Object? birthHistory = freezed,
    Object? diagnosis = freezed,
    Object? allergies = freezed,
    Object? currentMedications = freezed,
    Object? bloodType = freezed,
    Object? likes = freezed,
    Object? dislikesOrTriggers = freezed,
    Object? selfCareSkills = freezed,
    Object? initialReason = freezed,
    Object? diagnosisSummary = freezed,
    Object? developmentAgeMonth = freezed,
    Object? supportLevel = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            nickname: freezed == nickname
                ? _value.nickname
                : nickname // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            dob: freezed == dob
                ? _value.dob
                : dob // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            studentCode: freezed == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            parentUserId: freezed == parentUserId
                ? _value.parentUserId
                : parentUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            contacts: freezed == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<ContactData>?,
            birthHistory: freezed == birthHistory
                ? _value.birthHistory
                : birthHistory // ignore: cast_nullable_to_non_nullable
                      as String?,
            diagnosis: freezed == diagnosis
                ? _value.diagnosis
                : diagnosis // ignore: cast_nullable_to_non_nullable
                      as String?,
            allergies: freezed == allergies
                ? _value.allergies
                : allergies // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentMedications: freezed == currentMedications
                ? _value.currentMedications
                : currentMedications // ignore: cast_nullable_to_non_nullable
                      as String?,
            bloodType: freezed == bloodType
                ? _value.bloodType
                : bloodType // ignore: cast_nullable_to_non_nullable
                      as String?,
            likes: freezed == likes
                ? _value.likes
                : likes // ignore: cast_nullable_to_non_nullable
                      as String?,
            dislikesOrTriggers: freezed == dislikesOrTriggers
                ? _value.dislikesOrTriggers
                : dislikesOrTriggers // ignore: cast_nullable_to_non_nullable
                      as String?,
            selfCareSkills: freezed == selfCareSkills
                ? _value.selfCareSkills
                : selfCareSkills // ignore: cast_nullable_to_non_nullable
                      as String?,
            initialReason: freezed == initialReason
                ? _value.initialReason
                : initialReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            diagnosisSummary: freezed == diagnosisSummary
                ? _value.diagnosisSummary
                : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                      as String?,
            developmentAgeMonth: freezed == developmentAgeMonth
                ? _value.developmentAgeMonth
                : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                      as int?,
            supportLevel: freezed == supportLevel
                ? _value.supportLevel
                : supportLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentDataImplCopyWith<$Res>
    implements $StudentDataCopyWith<$Res> {
  factory _$$StudentDataImplCopyWith(
    _$StudentDataImpl value,
    $Res Function(_$StudentDataImpl) then,
  ) = __$$StudentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickname') String? nickname,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'dob') String? dob,
    @JsonKey(name: 'dateOfBirth') String? dateOfBirth,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'parentUserId') String? parentUserId,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
    @JsonKey(name: 'birthHistory') String? birthHistory,
    @JsonKey(name: 'diagnosis') String? diagnosis,
    @JsonKey(name: 'allergies') String? allergies,
    @JsonKey(name: 'currentMedications') String? currentMedications,
    @JsonKey(name: 'bloodType') String? bloodType,
    @JsonKey(name: 'likes') String? likes,
    @JsonKey(name: 'dislikesOrTriggers') String? dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') String? selfCareSkills,
    @JsonKey(name: 'initialReason') String? initialReason,
    @JsonKey(name: 'diagnosisSummary') String? diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') int? developmentAgeMonth,
    @JsonKey(name: 'supportLevel') String? supportLevel,
  });
}

/// @nodoc
class __$$StudentDataImplCopyWithImpl<$Res>
    extends _$StudentDataCopyWithImpl<$Res, _$StudentDataImpl>
    implements _$$StudentDataImplCopyWith<$Res> {
  __$$StudentDataImplCopyWithImpl(
    _$StudentDataImpl _value,
    $Res Function(_$StudentDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? classId = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? dateOfBirth = freezed,
    Object? avatarUrl = freezed,
    Object? studentCode = freezed,
    Object? status = freezed,
    Object? parentUserId = freezed,
    Object? address = freezed,
    Object? contacts = freezed,
    Object? birthHistory = freezed,
    Object? diagnosis = freezed,
    Object? allergies = freezed,
    Object? currentMedications = freezed,
    Object? bloodType = freezed,
    Object? likes = freezed,
    Object? dislikesOrTriggers = freezed,
    Object? selfCareSkills = freezed,
    Object? initialReason = freezed,
    Object? diagnosisSummary = freezed,
    Object? developmentAgeMonth = freezed,
    Object? supportLevel = freezed,
  }) {
    return _then(
      _$StudentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        nickname: freezed == nickname
            ? _value.nickname
            : nickname // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        dob: freezed == dob
            ? _value.dob
            : dob // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        studentCode: freezed == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        parentUserId: freezed == parentUserId
            ? _value.parentUserId
            : parentUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        contacts: freezed == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<ContactData>?,
        birthHistory: freezed == birthHistory
            ? _value.birthHistory
            : birthHistory // ignore: cast_nullable_to_non_nullable
                  as String?,
        diagnosis: freezed == diagnosis
            ? _value.diagnosis
            : diagnosis // ignore: cast_nullable_to_non_nullable
                  as String?,
        allergies: freezed == allergies
            ? _value.allergies
            : allergies // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentMedications: freezed == currentMedications
            ? _value.currentMedications
            : currentMedications // ignore: cast_nullable_to_non_nullable
                  as String?,
        bloodType: freezed == bloodType
            ? _value.bloodType
            : bloodType // ignore: cast_nullable_to_non_nullable
                  as String?,
        likes: freezed == likes
            ? _value.likes
            : likes // ignore: cast_nullable_to_non_nullable
                  as String?,
        dislikesOrTriggers: freezed == dislikesOrTriggers
            ? _value.dislikesOrTriggers
            : dislikesOrTriggers // ignore: cast_nullable_to_non_nullable
                  as String?,
        selfCareSkills: freezed == selfCareSkills
            ? _value.selfCareSkills
            : selfCareSkills // ignore: cast_nullable_to_non_nullable
                  as String?,
        initialReason: freezed == initialReason
            ? _value.initialReason
            : initialReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        diagnosisSummary: freezed == diagnosisSummary
            ? _value.diagnosisSummary
            : diagnosisSummary // ignore: cast_nullable_to_non_nullable
                  as String?,
        developmentAgeMonth: freezed == developmentAgeMonth
            ? _value.developmentAgeMonth
            : developmentAgeMonth // ignore: cast_nullable_to_non_nullable
                  as int?,
        supportLevel: freezed == supportLevel
            ? _value.supportLevel
            : supportLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDataImpl implements _StudentData {
  const _$StudentDataImpl({
    @JsonKey(name: 'id', includeToJson: false) this.id,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'nickname') this.nickname,
    @JsonKey(name: 'gender') this.gender,
    @JsonKey(name: 'dob') this.dob,
    @JsonKey(name: 'dateOfBirth') this.dateOfBirth,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'studentCode') this.studentCode,
    @JsonKey(name: 'status') this.status,
    @JsonKey(name: 'parentUserId') this.parentUserId,
    @JsonKey(name: 'address') this.address,
    @JsonKey(name: 'contacts') final List<ContactData>? contacts,
    @JsonKey(name: 'birthHistory') this.birthHistory,
    @JsonKey(name: 'diagnosis') this.diagnosis,
    @JsonKey(name: 'allergies') this.allergies,
    @JsonKey(name: 'currentMedications') this.currentMedications,
    @JsonKey(name: 'bloodType') this.bloodType,
    @JsonKey(name: 'likes') this.likes,
    @JsonKey(name: 'dislikesOrTriggers') this.dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') this.selfCareSkills,
    @JsonKey(name: 'initialReason') this.initialReason,
    @JsonKey(name: 'diagnosisSummary') this.diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') this.developmentAgeMonth,
    @JsonKey(name: 'supportLevel') this.supportLevel,
  }) : _contacts = contacts;

  factory _$StudentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDataImplFromJson(json);

  @override
  @JsonKey(name: 'id', includeToJson: false)
  final String? id;
  // ID thường được lấy từ Document ID
  @override
  @JsonKey(name: 'classId')
  final String? classId;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'nickname')
  final String? nickname;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'dob')
  final String? dob;
  @override
  @JsonKey(name: 'dateOfBirth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'studentCode')
  final String? studentCode;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'parentUserId')
  final String? parentUserId;
  @override
  @JsonKey(name: 'address')
  final String? address;
  final List<ContactData>? _contacts;
  @override
  @JsonKey(name: 'contacts')
  List<ContactData>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  // Y tế & Thể chất
  @override
  @JsonKey(name: 'birthHistory')
  final String? birthHistory;
  @override
  @JsonKey(name: 'diagnosis')
  final String? diagnosis;
  @override
  @JsonKey(name: 'allergies')
  final String? allergies;
  @override
  @JsonKey(name: 'currentMedications')
  final String? currentMedications;
  @override
  @JsonKey(name: 'bloodType')
  final String? bloodType;
  // Hành vi & Sở thích
  @override
  @JsonKey(name: 'likes')
  final String? likes;
  @override
  @JsonKey(name: 'dislikesOrTriggers')
  final String? dislikesOrTriggers;
  @override
  @JsonKey(name: 'selfCareSkills')
  final String? selfCareSkills;
  // Cũ / Tương thích ngược
  @override
  @JsonKey(name: 'initialReason')
  final String? initialReason;
  @override
  @JsonKey(name: 'diagnosisSummary')
  final String? diagnosisSummary;
  @override
  @JsonKey(name: 'developmentAgeMonth')
  final int? developmentAgeMonth;
  @override
  @JsonKey(name: 'supportLevel')
  final String? supportLevel;

  @override
  String toString() {
    return 'StudentData(id: $id, classId: $classId, fullName: $fullName, nickname: $nickname, gender: $gender, dob: $dob, dateOfBirth: $dateOfBirth, avatarUrl: $avatarUrl, studentCode: $studentCode, status: $status, parentUserId: $parentUserId, address: $address, contacts: $contacts, birthHistory: $birthHistory, diagnosis: $diagnosis, allergies: $allergies, currentMedications: $currentMedications, bloodType: $bloodType, likes: $likes, dislikesOrTriggers: $dislikesOrTriggers, selfCareSkills: $selfCareSkills, initialReason: $initialReason, diagnosisSummary: $diagnosisSummary, developmentAgeMonth: $developmentAgeMonth, supportLevel: $supportLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.parentUserId, parentUserId) ||
                other.parentUserId == parentUserId) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            (identical(other.birthHistory, birthHistory) ||
                other.birthHistory == birthHistory) &&
            (identical(other.diagnosis, diagnosis) ||
                other.diagnosis == diagnosis) &&
            (identical(other.allergies, allergies) ||
                other.allergies == allergies) &&
            (identical(other.currentMedications, currentMedications) ||
                other.currentMedications == currentMedications) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.dislikesOrTriggers, dislikesOrTriggers) ||
                other.dislikesOrTriggers == dislikesOrTriggers) &&
            (identical(other.selfCareSkills, selfCareSkills) ||
                other.selfCareSkills == selfCareSkills) &&
            (identical(other.initialReason, initialReason) ||
                other.initialReason == initialReason) &&
            (identical(other.diagnosisSummary, diagnosisSummary) ||
                other.diagnosisSummary == diagnosisSummary) &&
            (identical(other.developmentAgeMonth, developmentAgeMonth) ||
                other.developmentAgeMonth == developmentAgeMonth) &&
            (identical(other.supportLevel, supportLevel) ||
                other.supportLevel == supportLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    classId,
    fullName,
    nickname,
    gender,
    dob,
    dateOfBirth,
    avatarUrl,
    studentCode,
    status,
    parentUserId,
    address,
    const DeepCollectionEquality().hash(_contacts),
    birthHistory,
    diagnosis,
    allergies,
    currentMedications,
    bloodType,
    likes,
    dislikesOrTriggers,
    selfCareSkills,
    initialReason,
    diagnosisSummary,
    developmentAgeMonth,
    supportLevel,
  ]);

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      __$$StudentDataImplCopyWithImpl<_$StudentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentDataImplToJson(this);
  }
}

abstract class _StudentData implements StudentData {
  const factory _StudentData({
    @JsonKey(name: 'id', includeToJson: false) final String? id,
    @JsonKey(name: 'classId') final String? classId,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'nickname') final String? nickname,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'dob') final String? dob,
    @JsonKey(name: 'dateOfBirth') final String? dateOfBirth,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'studentCode') final String? studentCode,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'parentUserId') final String? parentUserId,
    @JsonKey(name: 'address') final String? address,
    @JsonKey(name: 'contacts') final List<ContactData>? contacts,
    @JsonKey(name: 'birthHistory') final String? birthHistory,
    @JsonKey(name: 'diagnosis') final String? diagnosis,
    @JsonKey(name: 'allergies') final String? allergies,
    @JsonKey(name: 'currentMedications') final String? currentMedications,
    @JsonKey(name: 'bloodType') final String? bloodType,
    @JsonKey(name: 'likes') final String? likes,
    @JsonKey(name: 'dislikesOrTriggers') final String? dislikesOrTriggers,
    @JsonKey(name: 'selfCareSkills') final String? selfCareSkills,
    @JsonKey(name: 'initialReason') final String? initialReason,
    @JsonKey(name: 'diagnosisSummary') final String? diagnosisSummary,
    @JsonKey(name: 'developmentAgeMonth') final int? developmentAgeMonth,
    @JsonKey(name: 'supportLevel') final String? supportLevel,
  }) = _$StudentDataImpl;

  factory _StudentData.fromJson(Map<String, dynamic> json) =
      _$StudentDataImpl.fromJson;

  @override
  @JsonKey(name: 'id', includeToJson: false)
  String? get id; // ID thường được lấy từ Document ID
  @override
  @JsonKey(name: 'classId')
  String? get classId;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'nickname')
  String? get nickname;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'dob')
  String? get dob;
  @override
  @JsonKey(name: 'dateOfBirth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'studentCode')
  String? get studentCode;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'parentUserId')
  String? get parentUserId;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'contacts')
  List<ContactData>? get contacts; // Y tế & Thể chất
  @override
  @JsonKey(name: 'birthHistory')
  String? get birthHistory;
  @override
  @JsonKey(name: 'diagnosis')
  String? get diagnosis;
  @override
  @JsonKey(name: 'allergies')
  String? get allergies;
  @override
  @JsonKey(name: 'currentMedications')
  String? get currentMedications;
  @override
  @JsonKey(name: 'bloodType')
  String? get bloodType; // Hành vi & Sở thích
  @override
  @JsonKey(name: 'likes')
  String? get likes;
  @override
  @JsonKey(name: 'dislikesOrTriggers')
  String? get dislikesOrTriggers;
  @override
  @JsonKey(name: 'selfCareSkills')
  String? get selfCareSkills; // Cũ / Tương thích ngược
  @override
  @JsonKey(name: 'initialReason')
  String? get initialReason;
  @override
  @JsonKey(name: 'diagnosisSummary')
  String? get diagnosisSummary;
  @override
  @JsonKey(name: 'developmentAgeMonth')
  int? get developmentAgeMonth;
  @override
  @JsonKey(name: 'supportLevel')
  String? get supportLevel;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
