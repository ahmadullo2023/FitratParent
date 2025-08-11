// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryModelImpl _$$StoryModelImplFromJson(Map<String, dynamic> json) =>
    _$StoryModelImpl(
      id: json['id'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      video: (json['video'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
      seen: json['seen'] as bool?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$StoryModelImplToJson(_$StoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo?.toJson(),
      'video': instance.video?.map((e) => e.toJson()).toList(),
      'text': instance.text,
      'seen': instance.seen,
      'created_at': instance.createdAt,
    };
