// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentHistoryModelImpl _$$PaymentHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentHistoryModelImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaymentHistoryModelImplToJson(
        _$PaymentHistoryModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };

_$ResultsModelImpl _$$ResultsModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultsModelImpl(
      id: json['id'] as String?,
      action: json['action'] as String?,
      casher: json['casher'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      kind: json['kind'] == null
          ? null
          : KindModel.fromJson(json['kind'] as Map<String, dynamic>),
      payment_method: json['payment_method'] as String?,
      lid: json['lid'] as String?,
      attendance: json['attendance'] as String?,
      stuff: json['stuff'] as String?,
      comment: json['comment'] as String?,
      studentInfo: json['student_info'] == null
          ? null
          : StudentInfo.fromJson(json['student_info'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ResultsModelImplToJson(_$ResultsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'action': instance.action,
      'casher': instance.casher,
      'amount': instance.amount,
      'kind': instance.kind?.toJson(),
      'payment_method': instance.payment_method,
      'lid': instance.lid,
      'attendance': instance.attendance,
      'stuff': instance.stuff,
      'comment': instance.comment,
      'student_info': instance.studentInfo?.toJson(),
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'total': instance.total,
      'balance': instance.balance,
    };

_$KindModelImpl _$$KindModelImplFromJson(Map<String, dynamic> json) =>
    _$KindModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      action: json['action'] as String?,
      color: json['color'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$KindModelImplToJson(_$KindModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'action': instance.action,
      'color': instance.color,
      'created_at': instance.created_at,
    };

_$StudentInfoImpl _$$StudentInfoImplFromJson(Map<String, dynamic> json) =>
    _$StudentInfoImpl(
      id: json['id'] as String?,
      first_name: json['first_name'] as String?,
      last_name: json['last_name'] as String?,
    );

Map<String, dynamic> _$$StudentInfoImplToJson(_$StudentInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
    };
