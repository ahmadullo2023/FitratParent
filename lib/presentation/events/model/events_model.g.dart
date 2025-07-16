// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventsModelImpl _$$EventsModelImplFromJson(Map<String, dynamic> json) =>
    _$EventsModelImpl(
      id: json['id'] as String?,
      file: (json['file'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: json['photo'] == null
          ? null
          : FileModel.fromJson(json['photo'] as Map<String, dynamic>),
      link: json['link'] as String?,
      linkPreview: json['link_preview'] as String?,
      comment: json['comment'] as String?,
      endDate: json['end_date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$EventsModelImplToJson(_$EventsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file?.map((e) => e.toJson()).toList(),
      'photo': instance.photo?.toJson(),
      'link': instance.link,
      'link_preview': instance.linkPreview,
      'comment': instance.comment,
      'end_date': instance.endDate,
      'status': instance.status,
    };
