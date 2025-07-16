// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      lastName: json['last_name'] as String?,
      middleName: json['middle_name'] as String?,
      phone: json['phone'] as String?,
      learning: json['learning'] == null
          ? null
          : Learning.fromJson(json['learning'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] as String?,
      educationLang: json['education_lang'] as String?,
      studentType: json['student_type'] as String?,
      eduClass: json['edu_class'] as String?,
      eduLevel: json['edu_level'] as String?,
      studentId: json['student_id'] as String?,
      subject: json['subject'] as String?,
      sales: (json['sales'] as List<dynamic>?)
          ?.map((e) => SalesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      voucher: json['voucher'] == null
          ? null
          : VoucherData.fromJson(json['voucher'] as Map<String, dynamic>),
      ball: (json['ball'] as num?)?.toDouble(),
      filial: json['filial'] == null
          ? null
          : Filial.fromJson(json['filial'] as Map<String, dynamic>),
      marketingChannel: json['marketing_channel'] == null
          ? null
          : MarketingChannel.fromJson(
              json['marketing_channel'] as Map<String, dynamic>),
      studentStageType: json['student_stage_type'] as String?,
      balanceStatus: json['balance_status'] as String?,
      balance: json['balance'] as String?,
      serviceManager: json['service_manager'] == null
          ? null
          : ServiceManager.fromJson(
              json['service_manager'] as Map<String, dynamic>),
      course: json['course'] == null
          ? null
          : MeCourseData.fromJson(json['course'] as Map<String, dynamic>),
      group: (json['group'] as List<dynamic>?)
          ?.map((e) => GroupData.fromJson(e as Map<String, dynamic>))
          .toList(),
      teacher: json['teacher'] == null
          ? null
          : Teacher.fromJson(json['teacher'] as Map<String, dynamic>),
      callOperator: json['call_operator'] as String?,
      salesManager: json['sales_manager'] == null
          ? null
          : SalesManager.fromJson(
              json['sales_manager'] as Map<String, dynamic>),
      isArchived: json['is_archived'] as bool?,
      isFrozen: json['is_frozen'] as bool?,
      attendanceCount: (json['attendance_count'] as num?)?.toInt(),
      relatives: (json['relatives'] as List<dynamic>?)
          ?.map((e) => RelativesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      file: (json['file'] as List<dynamic>?)
          ?.map((e) => FileData.fromJson(e as Map<String, dynamic>))
          .toList(),
      strike: (json['strike'] as num?)?.toInt(),
      secondaryGroup: json['secondary_group'] == null
          ? null
          : SecondaryGroupMin.fromJson(
              json['secondary_group'] as Map<String, dynamic>),
      secondaryTeacher: json['secondary_teacher'] == null
          ? null
          : SecondaryTeacherMin.fromJson(
              json['secondary_teacher'] as Map<String, dynamic>),
      newStudentStages: json['new_student_stages'] as String?,
      newStudentDate: json['new_student_date'] as String?,
      activeDate: json['active_date'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'photo': instance.photo?.toJson(),
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'phone': instance.phone,
      'learning': instance.learning?.toJson(),
      'date_of_birth': instance.dateOfBirth,
      'education_lang': instance.educationLang,
      'student_type': instance.studentType,
      'edu_class': instance.eduClass,
      'edu_level': instance.eduLevel,
      'student_id': instance.studentId,
      'subject': instance.subject,
      'sales': instance.sales?.map((e) => e.toJson()).toList(),
      'voucher': instance.voucher?.toJson(),
      'ball': instance.ball,
      'filial': instance.filial?.toJson(),
      'marketing_channel': instance.marketingChannel?.toJson(),
      'student_stage_type': instance.studentStageType,
      'balance_status': instance.balanceStatus,
      'balance': instance.balance,
      'service_manager': instance.serviceManager?.toJson(),
      'course': instance.course?.toJson(),
      'group': instance.group?.map((e) => e.toJson()).toList(),
      'teacher': instance.teacher?.toJson(),
      'call_operator': instance.callOperator,
      'sales_manager': instance.salesManager?.toJson(),
      'is_archived': instance.isArchived,
      'is_frozen': instance.isFrozen,
      'attendance_count': instance.attendanceCount,
      'relatives': instance.relatives?.map((e) => e.toJson()).toList(),
      'file': instance.file?.map((e) => e.toJson()).toList(),
      'strike': instance.strike,
      'secondary_group': instance.secondaryGroup?.toJson(),
      'secondary_teacher': instance.secondaryTeacher?.toJson(),
      'new_student_stages': instance.newStudentStages,
      'new_student_date': instance.newStudentDate,
      'active_date': instance.activeDate,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$MeCourseDataImpl _$$MeCourseDataImplFromJson(Map<String, dynamic> json) =>
    _$MeCourseDataImpl(
      count: (json['count'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MeCourseDataImplToJson(_$MeCourseDataImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

_$FilialImpl _$$FilialImplFromJson(Map<String, dynamic> json) => _$FilialImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toInt(),
      longitude: (json['longitude'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$FilialImplToJson(_$FilialImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$LearningImpl _$$LearningImplFromJson(Map<String, dynamic> json) =>
    _$LearningImpl(
      score: (json['score'] as num?)?.toDouble(),
      learning: (json['learning'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LearningImplToJson(_$LearningImpl instance) =>
    <String, dynamic>{
      'score': instance.score,
      'learning': instance.learning,
    };

_$VoucherDataImpl _$$VoucherDataImplFromJson(Map<String, dynamic> json) =>
    _$VoucherDataImpl(
      id: json['id'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      isExpired: json['is_expired'] as bool?,
    );

Map<String, dynamic> _$$VoucherDataImplToJson(_$VoucherDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'created_at': instance.createdAt,
      'is_expired': instance.isExpired,
    };

_$MarketingChannelImpl _$$MarketingChannelImplFromJson(
        Map<String, dynamic> json) =>
    _$MarketingChannelImpl(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      filial: (json['filial'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MarketingChannelImplToJson(
        _$MarketingChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'name': instance.name,
      'type': instance.type,
      'filial': instance.filial,
    };

_$ServiceManagerImpl _$$ServiceManagerImplFromJson(Map<String, dynamic> json) =>
    _$ServiceManagerImpl(
      balance: json['balance'] as String?,
      ball: (json['ball'] as num?)?.toDouble(),
      isLinked:
          (json['is_linked'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileData.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      salary: (json['salary'] as num?)?.toDouble(),
      extraNumber: json['extra_number'] as String?,
      isCallCenter: json['is_call_center'] as bool?,
      enter: json['enter'] as String?,
      leave: json['leave'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      createdAt: json['created_at'] as String?,
      bonus: (json['bonus'] as List<dynamic>?)
          ?.map((e) => BonusData.fromJson(e as Map<String, dynamic>))
          .toList(),
      compensation: (json['compensation'] as List<dynamic>?)
          ?.map((e) => BonusData.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updated_at'] as String?,
      isArchived: json['is_archived'] as bool?,
    );

Map<String, dynamic> _$$ServiceManagerImplToJson(
        _$ServiceManagerImpl instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'ball': instance.ball,
      'is_linked': instance.isLinked,
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'photo': instance.photo?.toJson(),
      'filial': instance.filial,
      'salary': instance.salary,
      'extra_number': instance.extraNumber,
      'is_call_center': instance.isCallCenter,
      'enter': instance.enter,
      'leave': instance.leave,
      'date_of_birth': instance.dateOfBirth,
      'created_at': instance.createdAt,
      'bonus': instance.bonus?.map((e) => e.toJson()).toList(),
      'compensation': instance.compensation?.map((e) => e.toJson()).toList(),
      'updated_at': instance.updatedAt,
      'is_archived': instance.isArchived,
    };

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String?,
      level: json['level'],
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
    };

_$GroupDataImpl _$$GroupDataImplFromJson(Map<String, dynamic> json) =>
    _$GroupDataImpl(
      groupName: json['group__name'] as String?,
      groupStatus: json['group__status'] as String?,
      groupStartedAt: json['group__started_at'] as String?,
      groupEndedAt: json['group__ended_at'] as String?,
      teacherFirstName: json['group__teacher__first_name'] as String?,
      teacherLastName: json['group__teacher__last_name'] as String?,
      groupCourseName: json['group__course__name'] as String?,
      groupCourseLevelName: json['group__course__level__name'] as String?,
    );

Map<String, dynamic> _$$GroupDataImplToJson(_$GroupDataImpl instance) =>
    <String, dynamic>{
      'group__name': instance.groupName,
      'group__status': instance.groupStatus,
      'group__started_at': instance.groupStartedAt,
      'group__ended_at': instance.groupEndedAt,
      'group__teacher__first_name': instance.teacherFirstName,
      'group__teacher__last_name': instance.teacherLastName,
      'group__course__name': instance.groupCourseName,
      'group__course__level__name': instance.groupCourseLevelName,
    };
