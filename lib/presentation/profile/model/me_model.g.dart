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
      isLinked:
          (json['is_linked'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      calculatePenalties: json['calculate_penalties'] as bool?,
      calculateBonus: json['calculate_bonus'] as bool?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      penalty: json['penalty'],
      pages: json['pages'] as List<dynamic>?,
      files: json['files'] as List<dynamic>?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      balance: json['balance'] as String?,
      salary: (json['salary'] as num?)?.toDouble(),
      extraNumber: json['extra_number'] as String?,
      isCallCenter: json['is_call_center'] as bool?,
      secondUser: json['second_user'] as String?,
      studentId: json['student_id'] as String?,
      enter: json['enter'] as String?,
      leave: json['leave'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      createdAt: json['created_at'] as String?,
      bonus: json['bonus'] as List<dynamic>?,
      compensation: json['compensation'] as List<dynamic>?,
      monitoring: (json['monitoring'] as num?)?.toDouble(),
      updatedAt: json['updated_at'] as String?,
      isArchived: json['is_archived'] as bool?,
    );

Map<String, dynamic> _$$MeModelImplToJson(_$MeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_linked': instance.isLinked,
      'calculate_penalties': instance.calculatePenalties,
      'calculate_bonus': instance.calculateBonus,
      'phone': instance.phone,
      'role': instance.role,
      'penalty': instance.penalty,
      'pages': instance.pages,
      'files': instance.files,
      'photo': instance.photo?.toJson(),
      'filial': instance.filial,
      'balance': instance.balance,
      'salary': instance.salary,
      'extra_number': instance.extraNumber,
      'is_call_center': instance.isCallCenter,
      'second_user': instance.secondUser,
      'student_id': instance.studentId,
      'enter': instance.enter,
      'leave': instance.leave,
      'date_of_birth': instance.dateOfBirth,
      'created_at': instance.createdAt,
      'bonus': instance.bonus,
      'compensation': instance.compensation,
      'monitoring': instance.monitoring,
      'updated_at': instance.updatedAt,
      'is_archived': instance.isArchived,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      file: json['file'],
      choice: json['choice'],
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'choice': instance.choice,
      'url': instance.url,
    };
