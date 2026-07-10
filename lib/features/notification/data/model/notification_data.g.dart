// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDataImpl _$$NotificationDataImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationDataImpl(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  title: json['title'] as String?,
  body: json['body'] as String?,
  type: json['type'] as String?,
  isRead: json['isRead'] as bool?,
  data: json['data'] as Map<String, dynamic>?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$NotificationDataImplToJson(
  _$NotificationDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'title': instance.title,
  'body': instance.body,
  'type': instance.type,
  'isRead': instance.isRead,
  'data': instance.data,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_$NotificationResponseDataImpl _$$NotificationResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationResponseDataImpl(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => NotificationData.fromJson(e as Map<String, dynamic>))
      .toList(),
  unreadCount: (json['unreadCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$NotificationResponseDataImplToJson(
  _$NotificationResponseDataImpl instance,
) => <String, dynamic>{
  'data': instance.data,
  'unreadCount': instance.unreadCount,
};
