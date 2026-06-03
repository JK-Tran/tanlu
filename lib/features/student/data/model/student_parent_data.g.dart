// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_parent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentParentDataImpl _$$StudentParentDataImplFromJson(
  Map<String, dynamic> json,
) => _$StudentParentDataImpl(
  id: (json['id'] as num?)?.toInt(),
  studentId: (json['studentId'] as num?)?.toInt(),
  parentId: (json['parentId'] as num?)?.toInt(),
  relationship: json['relationship'] as String?,
  isPrimaryContact: json['isPrimaryContact'] as bool?,
  createdAt: json['createdAt'] as String?,
  parent: json['parent'] == null
      ? null
      : ParentData.fromJson(json['parent'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$StudentParentDataImplToJson(
  _$StudentParentDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'studentId': instance.studentId,
  'parentId': instance.parentId,
  'relationship': instance.relationship,
  'isPrimaryContact': instance.isPrimaryContact,
  'createdAt': instance.createdAt,
  'parent': instance.parent,
};
