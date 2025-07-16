// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointsModelImpl _$$PointsModelImplFromJson(Map<String, dynamic> json) =>
    _$PointsModelImpl(
      id: json['id'] as String?,
      student: json['student'] as String?,
      coin: json['coin'] as String?,
      comment: json['comment'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$PointsModelImplToJson(_$PointsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student': instance.student,
      'coin': instance.coin,
      'comment': instance.comment,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
