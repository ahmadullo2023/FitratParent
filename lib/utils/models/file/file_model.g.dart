// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileModelImpl _$$FileModelImplFromJson(Map<String, dynamic> json) =>
    _$FileModelImpl(
      id: json['id'] as String?,
      file: json['file'] as String?,
      choiceUrl: json['choice_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$FileModelImplToJson(_$FileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'choice_url': instance.choiceUrl,
      'url': instance.url,
    };
