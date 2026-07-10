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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'centerId')
  int? get centerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'classId')
  int? get classId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentId')
  int? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'studentCode')
  String? get studentCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthDate')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthHistory')
  String? get birthHistory => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosis')
  String? get diagnosis => throw _privateConstructorUsedError;
  @JsonKey(name: 'allergies')
  String? get allergies => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentMedications')
  String? get currentMedications => throw _privateConstructorUsedError;
  @JsonKey(name: 'bloodType')
  String? get bloodType => throw _privateConstructorUsedError;
  @JsonKey(name: 'likes')
  String? get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'dislikesOrTriggers')
  String? get dislikesOrTriggers => throw _privateConstructorUsedError;
  @JsonKey(name: 'selfCareSkills')
  String? get selfCareSkills => throw _privateConstructorUsedError;
  @JsonKey(name: 'initialReason')
  String? get initialReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'diagnosisSummary')
  String? get diagnosisSummary => throw _privateConstructorUsedError;
  @JsonKey(name: 'developmentAgeMonth')
  int? get developmentAgeMonth => throw _privateConstructorUsedError;
  @JsonKey(name: 'supportLevel')
  String? get supportLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'class')
  ClassInfoData? get classInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent')
  ParentData? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacts')
  List<ContactData>? get contacts => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
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
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
  });

  $ClassInfoDataCopyWith<$Res>? get classInfo;
  $ParentDataCopyWith<$Res>? get parent;
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
    Object? centerId = freezed,
    Object? classId = freezed,
    Object? parentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
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
    Object? createdAt = freezed,
    Object? classInfo = freezed,
    Object? parent = freezed,
    Object? contacts = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            centerId: freezed == centerId
                ? _value.centerId
                : centerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            classId: freezed == classId
                ? _value.classId
                : classId // ignore: cast_nullable_to_non_nullable
                      as int?,
            parentId: freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            studentCode: freezed == studentCode
                ? _value.studentCode
                : studentCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            nickName: freezed == nickName
                ? _value.nickName
                : nickName // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthDate: freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            classInfo: freezed == classInfo
                ? _value.classInfo
                : classInfo // ignore: cast_nullable_to_non_nullable
                      as ClassInfoData?,
            parent: freezed == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as ParentData?,
            contacts: freezed == contacts
                ? _value.contacts
                : contacts // ignore: cast_nullable_to_non_nullable
                      as List<ContactData>?,
          )
          as $Val,
    );
  }

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ClassInfoDataCopyWith<$Res>? get classInfo {
    if (_value.classInfo == null) {
      return null;
    }

    return $ClassInfoDataCopyWith<$Res>(_value.classInfo!, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParentDataCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentDataCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
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
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birthDate') String? birthDate,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
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
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'class') ClassInfoData? classInfo,
    @JsonKey(name: 'parent') ParentData? parent,
    @JsonKey(name: 'contacts') List<ContactData>? contacts,
  });

  @override
  $ClassInfoDataCopyWith<$Res>? get classInfo;
  @override
  $ParentDataCopyWith<$Res>? get parent;
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
    Object? centerId = freezed,
    Object? classId = freezed,
    Object? parentId = freezed,
    Object? studentCode = freezed,
    Object? fullName = freezed,
    Object? nickName = freezed,
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? avatarUrl = freezed,
    Object? status = freezed,
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
    Object? createdAt = freezed,
    Object? classInfo = freezed,
    Object? parent = freezed,
    Object? contacts = freezed,
  }) {
    return _then(
      _$StudentDataImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        centerId: freezed == centerId
            ? _value.centerId
            : centerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        classId: freezed == classId
            ? _value.classId
            : classId // ignore: cast_nullable_to_non_nullable
                  as int?,
        parentId: freezed == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        studentCode: freezed == studentCode
            ? _value.studentCode
            : studentCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        nickName: freezed == nickName
            ? _value.nickName
            : nickName // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthDate: freezed == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        classInfo: freezed == classInfo
            ? _value.classInfo
            : classInfo // ignore: cast_nullable_to_non_nullable
                  as ClassInfoData?,
        parent: freezed == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as ParentData?,
        contacts: freezed == contacts
            ? _value._contacts
            : contacts // ignore: cast_nullable_to_non_nullable
                  as List<ContactData>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentDataImpl extends _StudentData {
  const _$StudentDataImpl({
    @JsonKey(name: 'id') this.id,
    @JsonKey(name: 'centerId') this.centerId,
    @JsonKey(name: 'classId') this.classId,
    @JsonKey(name: 'parentId') this.parentId,
    @JsonKey(name: 'studentCode') this.studentCode,
    @JsonKey(name: 'fullName') this.fullName,
    @JsonKey(name: 'nickName') this.nickName,
    @JsonKey(name: 'gender') this.gender,
    @JsonKey(name: 'birthDate') this.birthDate,
    @JsonKey(name: 'avatarUrl') this.avatarUrl,
    @JsonKey(name: 'status') this.status,
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
    @JsonKey(name: 'createdAt') this.createdAt,
    @JsonKey(name: 'class') this.classInfo,
    @JsonKey(name: 'parent') this.parent,
    @JsonKey(name: 'contacts') final List<ContactData>? contacts,
  }) : _contacts = contacts,
       super._();

  factory _$StudentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'centerId')
  final int? centerId;
  @override
  @JsonKey(name: 'classId')
  final int? classId;
  @override
  @JsonKey(name: 'parentId')
  final int? parentId;
  @override
  @JsonKey(name: 'studentCode')
  final String? studentCode;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'birthDate')
  final String? birthDate;
  @override
  @JsonKey(name: 'avatarUrl')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'status')
  final String? status;
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
  @override
  @JsonKey(name: 'likes')
  final String? likes;
  @override
  @JsonKey(name: 'dislikesOrTriggers')
  final String? dislikesOrTriggers;
  @override
  @JsonKey(name: 'selfCareSkills')
  final String? selfCareSkills;
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
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'class')
  final ClassInfoData? classInfo;
  @override
  @JsonKey(name: 'parent')
  final ParentData? parent;
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

  @override
  String toString() {
    return 'StudentData(id: $id, centerId: $centerId, classId: $classId, parentId: $parentId, studentCode: $studentCode, fullName: $fullName, nickName: $nickName, gender: $gender, birthDate: $birthDate, avatarUrl: $avatarUrl, status: $status, birthHistory: $birthHistory, diagnosis: $diagnosis, allergies: $allergies, currentMedications: $currentMedications, bloodType: $bloodType, likes: $likes, dislikesOrTriggers: $dislikesOrTriggers, selfCareSkills: $selfCareSkills, initialReason: $initialReason, diagnosisSummary: $diagnosisSummary, developmentAgeMonth: $developmentAgeMonth, supportLevel: $supportLevel, createdAt: $createdAt, classInfo: $classInfo, parent: $parent, contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.centerId, centerId) ||
                other.centerId == centerId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.studentCode, studentCode) ||
                other.studentCode == studentCode) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.status, status) || other.status == status) &&
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
                other.supportLevel == supportLevel) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.classInfo, classInfo) ||
                other.classInfo == classInfo) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    centerId,
    classId,
    parentId,
    studentCode,
    fullName,
    nickName,
    gender,
    birthDate,
    avatarUrl,
    status,
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
    createdAt,
    classInfo,
    parent,
    const DeepCollectionEquality().hash(_contacts),
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

abstract class _StudentData extends StudentData {
  const factory _StudentData({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'centerId') final int? centerId,
    @JsonKey(name: 'classId') final int? classId,
    @JsonKey(name: 'parentId') final int? parentId,
    @JsonKey(name: 'studentCode') final String? studentCode,
    @JsonKey(name: 'fullName') final String? fullName,
    @JsonKey(name: 'nickName') final String? nickName,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'birthDate') final String? birthDate,
    @JsonKey(name: 'avatarUrl') final String? avatarUrl,
    @JsonKey(name: 'status') final String? status,
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
    @JsonKey(name: 'createdAt') final DateTime? createdAt,
    @JsonKey(name: 'class') final ClassInfoData? classInfo,
    @JsonKey(name: 'parent') final ParentData? parent,
    @JsonKey(name: 'contacts') final List<ContactData>? contacts,
  }) = _$StudentDataImpl;
  const _StudentData._() : super._();

  factory _StudentData.fromJson(Map<String, dynamic> json) =
      _$StudentDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'centerId')
  int? get centerId;
  @override
  @JsonKey(name: 'classId')
  int? get classId;
  @override
  @JsonKey(name: 'parentId')
  int? get parentId;
  @override
  @JsonKey(name: 'studentCode')
  String? get studentCode;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'birthDate')
  String? get birthDate;
  @override
  @JsonKey(name: 'avatarUrl')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'status')
  String? get status;
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
  String? get bloodType;
  @override
  @JsonKey(name: 'likes')
  String? get likes;
  @override
  @JsonKey(name: 'dislikesOrTriggers')
  String? get dislikesOrTriggers;
  @override
  @JsonKey(name: 'selfCareSkills')
  String? get selfCareSkills;
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
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'class')
  ClassInfoData? get classInfo;
  @override
  @JsonKey(name: 'parent')
  ParentData? get parent;
  @override
  @JsonKey(name: 'contacts')
  List<ContactData>? get contacts;

  /// Create a copy of StudentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentDataImplCopyWith<_$StudentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
