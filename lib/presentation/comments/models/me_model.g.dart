// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeModelImpl _$$MeModelImplFromJson(Map<String, dynamic> json) =>
    _$MeModelImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      balance: json['balance'] as String?,
      monitoring: (json['monitoring'] as num?)?.toDouble(),
      enter: json['enter'],
      leave: json['leave'],
      dateOfBirth: json['date_of_birth'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      penalty: (json['penalty'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MeModelImplToJson(_$MeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'role': instance.role,
      'photo': instance.photo,
      'filial': instance.filial,
      'balance': instance.balance,
      'monitoring': instance.monitoring,
      'enter': instance.enter,
      'leave': instance.leave,
      'date_of_birth': instance.dateOfBirth,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'penalty': instance.penalty,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      file: json['file'] as String?,
      choice: json['choice'] as String?,
      url: json['url'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'choice': instance.choice,
      'url': instance.url,
      'id': instance.id,
    };
