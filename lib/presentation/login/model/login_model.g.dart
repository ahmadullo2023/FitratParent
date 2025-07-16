// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
      userId: json['user_id'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      studentId: json['student_id'] as String?,
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'user_id': instance.userId,
      'phone': instance.phone,
      'role': instance.role,
      'student_id': instance.studentId,
      'filial': instance.filial,
    };
