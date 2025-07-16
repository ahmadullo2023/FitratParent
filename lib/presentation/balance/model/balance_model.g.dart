// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BalanceModelImpl _$$BalanceModelImplFromJson(Map<String, dynamic> json) =>
    _$BalanceModelImpl(
      id: json['id'] as String?,
      casher: json['casher'] as String?,
      student: json['student'] as String?,
      action: json['action'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      kind: json['kind'] as String?,
      paymentMethod: json['payment_method'] as String?,
      creator: json['creator'] as String?,
      comment: json['comment'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BalanceModelImplToJson(_$BalanceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'casher': instance.casher,
      'student': instance.student,
      'action': instance.action,
      'amount': instance.amount,
      'kind': instance.kind,
      'payment_method': instance.paymentMethod,
      'creator': instance.creator,
      'comment': instance.comment,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
