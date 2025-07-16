// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String?,
      user: json['user'] as String?,
      comment: json['comment'] as String?,
      comeFrom: json['come_from'] as String?,
      choice: json['choice'] as String?,
      hasRead: json['has_read'] as bool?,
      isRead: json['is_read'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'comment': instance.comment,
      'come_from': instance.comeFrom,
      'choice': instance.choice,
      'has_read': instance.hasRead,
      'is_read': instance.isRead,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
