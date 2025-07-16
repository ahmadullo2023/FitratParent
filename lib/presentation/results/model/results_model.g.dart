// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      id: json['id'] as String?,
      studentId: json['studentId'] as String?,
      fkName: json['fkName'] == null
          ? null
          : FKNameModel.fromJson(json['fkName'] as Map<String, dynamic>),
      fullName: json['fullName'] as String?,
      studentPhoto: json['studentPhoto'] == null
          ? null
          : Photo.fromJson(json['studentPhoto'] as Map<String, dynamic>),
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
      'studentId': instance.studentId,
      'fkName': instance.fkName,
      'fullName': instance.fullName,
      'studentPhoto': instance.studentPhoto,
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
