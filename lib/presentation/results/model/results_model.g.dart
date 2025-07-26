// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      id: json['id'] as String?,
      studentId: json['student_id'] as String?,
      fkName: json['fk_name'] == null
          ? null
          : FKNameModel.fromJson(json['fk_name'] as Map<String, dynamic>),
      fullName: json['full_name'] as String?,
      studentPhoto: json['student_photo'] == null
          ? null
          : Photo.fromJson(json['student_photo'] as Map<String, dynamic>),
      type: json['type'] as String?,
      teacher: json['teacher'] as String?,
      point: json['point'] as String?,
      file: json['file'] == null
          ? null
          : FileModel.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultsModelImplToJson(_$ResultsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.studentId,
      'fk_name': instance.fkName,
      'full_name': instance.fullName,
      'student_photo': instance.studentPhoto,
      'type': instance.type,
      'teacher': instance.teacher,
      'point': instance.point,
      'file': instance.file,
    };

_$FKNameModelImpl _$$FKNameModelImplFromJson(Map<String, dynamic> json) =>
    _$FKNameModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      who: json['who'] as String?,
      pointType: json['point_type'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$FKNameModelImplToJson(_$FKNameModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'who': instance.who,
      'point_type': instance.pointType,
      'type': instance.type,
    };
