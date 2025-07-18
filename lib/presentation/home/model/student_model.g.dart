// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentModelImpl _$$StudentModelImplFromJson(Map<String, dynamic> json) =>
    _$StudentModelImpl(
      id: json['id'] as String?,
      group: json['group'] == null
          ? null
          : GroupMinModel.fromJson(json['group'] as Map<String, dynamic>),
      lid: json['lid'] == null
          ? null
          : Lid.fromJson(json['lid'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : Student.fromJson(json['student'] as Map<String, dynamic>),
      homeworkType: json['homework_type'] as String?,
    );

Map<String, dynamic> _$$StudentModelImplToJson(_$StudentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group': instance.group?.toJson(),
      'lid': instance.lid?.toJson(),
      'student': instance.student?.toJson(),
      'homework_type': instance.homeworkType,
    };

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      middleName: json['middle_name'] as String?,
      isAttendance: json['is_attendance'] as bool?,
      phone: json['phone'] as String?,
      learning: json['learning'] == null
          ? null
          : Learning.fromJson(json['learning'] as Map<String, dynamic>),
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      educationLang: json['education_lang'] as String?,
      studentType: json['student_type'] as String?,
      eduClass: json['edu_class'] as String?,
      subject: json['subject'] as String?,
      sales: (json['sales'] as List<dynamic>?)
          ?.map((e) => SalesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      voucher: (json['voucher'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : VoucherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      ball: (json['ball'] as num?)?.toInt(),
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
      course: (json['course'] as List<dynamic>?)
          ?.map((e) => CourseData.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      secondaryGroup: json['secondary_group'] == null
          ? null
          : SecondaryGroupMin.fromJson(
              json['secondary_group'] as Map<String, dynamic>),
      secondaryTeacher: json['secondary_teacher'] == null
          ? null
          : SecondaryTeacherMin.fromJson(
              json['secondary_teacher'] as Map<String, dynamic>),
      newStudentStages: json['new_student_stages'] as String?,
      newStudentDate: json['new_student_date'] == null
          ? null
          : DateTime.parse(json['new_student_date'] as String),
      activeDate: json['active_date'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo?.toJson(),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'is_attendance': instance.isAttendance,
      'phone': instance.phone,
      'learning': instance.learning?.toJson(),
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'education_lang': instance.educationLang,
      'student_type': instance.studentType,
      'edu_class': instance.eduClass,
      'subject': instance.subject,
      'sales': instance.sales?.map((e) => e.toJson()).toList(),
      'voucher': instance.voucher?.map((e) => e?.toJson()).toList(),
      'ball': instance.ball,
      'filial': instance.filial?.toJson(),
      'marketing_channel': instance.marketingChannel?.toJson(),
      'student_stage_type': instance.studentStageType,
      'balance_status': instance.balanceStatus,
      'balance': instance.balance,
      'service_manager': instance.serviceManager?.toJson(),
      'course': instance.course?.map((e) => e.toJson()).toList(),
      'group': instance.group?.map((e) => e.toJson()).toList(),
      'teacher': instance.teacher?.toJson(),
      'call_operator': instance.callOperator,
      'sales_manager': instance.salesManager?.toJson(),
      'is_archived': instance.isArchived,
      'is_frozen': instance.isFrozen,
      'attendance_count': instance.attendanceCount,
      'relatives': instance.relatives?.map((e) => e.toJson()).toList(),
      'file': instance.file?.map((e) => e.toJson()).toList(),
      'secondary_group': instance.secondaryGroup?.toJson(),
      'secondary_teacher': instance.secondaryTeacher?.toJson(),
      'new_student_stages': instance.newStudentStages,
      'new_student_date': instance.newStudentDate?.toIso8601String(),
      'active_date': instance.activeDate,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$LidImpl _$$LidImplFromJson(Map<String, dynamic> json) => _$LidImpl(
      id: json['id'] as String?,
      senderId: json['sender_id'] as String?,
      messageText: json['message_text'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      middleName: json['middle_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      educationLang: json['education_lang'] as String?,
      studentType: json['student_type'] as String?,
      sales: (json['sales'] as List<dynamic>?)
          ?.map((e) => SalesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      voucher: (json['voucher'] as List<dynamic>?)
          ?.map((e) => VoucherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderedDate: json['ordered_date'] as String?,
      eduClass: json['edu_class'] as String?,
      eduLevel: json['edu_level'] as String?,
      subject: json['subject'] as String?,
      ball: (json['ball'] as num?)?.toInt(),
      filial: json['filial'] == null
          ? null
          : Filial.fromJson(json['filial'] as Map<String, dynamic>),
      isFrozen: json['is_frozen'] as bool?,
      isAttendance: json['is_attendance'] == null
          ? null
          : IsAttendance.fromJson(
              json['is_attendance'] as Map<String, dynamic>),
      marketingChannel: json['marketing_channel'] == null
          ? null
          : MarketingChannel.fromJson(
              json['marketing_channel'] as Map<String, dynamic>),
      lidStageType: json['lid_stage_type'] as String?,
      orderedStages: json['ordered_stages'] as String?,
      extraNumber: json['extra_number'] as String?,
      student: json['student'] as String?,
      balance: json['balance'] as String?,
      lidStages: json['lid_stages'] as String?,
      isArchived: json['is_archived'] as bool?,
      course: (json['course'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      group: (json['group'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
      serviceManager: json['service_manager'] as String?,
      isStudent: json['is_student'] as bool?,
      callOperator: json['call_operator'] == null
          ? null
          : CallOperator.fromJson(
              json['call_operator'] as Map<String, dynamic>),
      relatives: (json['relatives'] as List<dynamic>?)
          ?.map((e) => RelativesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lessonsCount: (json['lessons_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      salesManager: json['sales_manager'] as String?,
      isExpired: json['is_expired'] as bool?,
      file: (json['file'] as List<dynamic>?)
          ?.map((e) => FileData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LidImplToJson(_$LidImpl instance) => <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'message_text': instance.messageText,
      'photo': instance.photo?.toJson(),
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'phone_number': instance.phoneNumber,
      'date_of_birth': instance.dateOfBirth,
      'education_lang': instance.educationLang,
      'student_type': instance.studentType,
      'sales': instance.sales?.map((e) => e.toJson()).toList(),
      'voucher': instance.voucher?.map((e) => e.toJson()).toList(),
      'ordered_date': instance.orderedDate,
      'edu_class': instance.eduClass,
      'edu_level': instance.eduLevel,
      'subject': instance.subject,
      'ball': instance.ball,
      'filial': instance.filial?.toJson(),
      'is_frozen': instance.isFrozen,
      'is_attendance': instance.isAttendance?.toJson(),
      'marketing_channel': instance.marketingChannel?.toJson(),
      'lid_stage_type': instance.lidStageType,
      'ordered_stages': instance.orderedStages,
      'extra_number': instance.extraNumber,
      'student': instance.student,
      'balance': instance.balance,
      'lid_stages': instance.lidStages,
      'is_archived': instance.isArchived,
      'course': instance.course,
      'group': instance.group,
      'service_manager': instance.serviceManager,
      'is_student': instance.isStudent,
      'call_operator': instance.callOperator?.toJson(),
      'relatives': instance.relatives?.map((e) => e.toJson()).toList(),
      'lessons_count': instance.lessonsCount,
      'created_at': instance.createdAt,
      'sales_manager': instance.salesManager,
      'is_expired': instance.isExpired,
      'file': instance.file?.map((e) => e.toJson()).toList(),
    };

_$GroupMinModelImpl _$$GroupMinModelImplFromJson(Map<String, dynamic> json) =>
    _$GroupMinModelImpl(
      roomNumber: json['room_number'] as String?,
      groupName: json['group_name'] as String?,
      levelId: json['level_id'] as String?,
      teacher: json['teacher'] as String?,
      course: json['course'] as String?,
      subject: json['subject'] == null
          ? null
          : SubjectData.fromJson(json['subject'] as Map<String, dynamic>),
      courseId: json['course_id'] as String?,
    );

Map<String, dynamic> _$$GroupMinModelImplToJson(_$GroupMinModelImpl instance) =>
    <String, dynamic>{
      'room_number': instance.roomNumber,
      'group_name': instance.groupName,
      'level_id': instance.levelId,
      'teacher': instance.teacher,
      'course': instance.course,
      'subject': instance.subject?.toJson(),
      'course_id': instance.courseId,
    };

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as String?,
      file: json['file'] as String?,
      choice: json['choice'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'choice': instance.choice,
      'url': instance.url,
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

_$SalesDataImpl _$$SalesDataImplFromJson(Map<String, dynamic> json) =>
    _$SalesDataImpl(
      id: json['id'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      saleStatus: json['sale_status'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$SalesDataImplToJson(_$SalesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'sale_status': instance.saleStatus,
      'date': instance.date,
    };

_$SalesManagerImpl _$$SalesManagerImplFromJson(Map<String, dynamic> json) =>
    _$SalesManagerImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isLinked:
          (json['is_linked'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      penalty: json['penalty'],
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      balance: json['balance'] as String?,
      ball: (json['ball'] as num?)?.toDouble(),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((e) => PagesData.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileData.fromJson(e as Map<String, dynamic>))
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
      compensation: json['compensation'] as List<dynamic>?,
      updatedAt: json['updated_at'] as String?,
      isArchived: json['is_archived'] as bool?,
    );

Map<String, dynamic> _$$SalesManagerImplToJson(_$SalesManagerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_linked': instance.isLinked,
      'phone': instance.phone,
      'role': instance.role,
      'photo': instance.photo?.toJson(),
      'penalty': instance.penalty,
      'filial': instance.filial,
      'balance': instance.balance,
      'ball': instance.ball,
      'pages': instance.pages?.map((e) => e.toJson()).toList(),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'salary': instance.salary,
      'extra_number': instance.extraNumber,
      'is_call_center': instance.isCallCenter,
      'enter': instance.enter,
      'leave': instance.leave,
      'date_of_birth': instance.dateOfBirth,
      'created_at': instance.createdAt,
      'bonus': instance.bonus?.map((e) => e.toJson()).toList(),
      'compensation': instance.compensation,
      'updated_at': instance.updatedAt,
      'is_archived': instance.isArchived,
    };

_$RelativesDataImpl _$$RelativesDataImplFromJson(Map<String, dynamic> json) =>
    _$RelativesDataImpl(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      who: json['who'] as String?,
    );

Map<String, dynamic> _$$RelativesDataImplToJson(_$RelativesDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'who': instance.who,
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

_$IsAttendanceImpl _$$IsAttendanceImplFromJson(Map<String, dynamic> json) =>
    _$IsAttendanceImpl(
      date: json['date'] as String?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$$IsAttendanceImplToJson(_$IsAttendanceImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
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

_$CallOperatorImpl _$$CallOperatorImplFromJson(Map<String, dynamic> json) =>
    _$CallOperatorImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
      firstName: json['first_name'],
      lastName: json['last_name'],
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      photo: json['photo'],
      filial: (json['filial'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      balance: json['balance'] as String?,
      ball: (json['ball'] as num?)?.toDouble(),
      salary: (json['salary'] as num?)?.toDouble(),
      enter: json['enter'] as String?,
      leave: json['leave'] as String?,
      dateOfBirth: json['date_of_birth'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      compensation: (json['compensation'] as List<dynamic>?)
          ?.map((e) => Compensation.fromJson(e as Map<String, dynamic>))
          .toList(),
      bonus: (json['bonus'] as List<dynamic>?)
          ?.map((e) => BonusData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CallOperatorImplToJson(_$CallOperatorImpl instance) =>
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
      'ball': instance.ball,
      'salary': instance.salary,
      'enter': instance.enter,
      'leave': instance.leave,
      'date_of_birth': instance.dateOfBirth,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'compensation': instance.compensation?.map((e) => e.toJson()).toList(),
      'bonus': instance.bonus?.map((e) => e.toJson()).toList(),
    };

_$CompensationImpl _$$CompensationImplFromJson(Map<String, dynamic> json) =>
    _$CompensationImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      user: json['user'] as String?,
      amount: json['amount'] as String?,
    );

Map<String, dynamic> _$$CompensationImplToJson(_$CompensationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user,
      'amount': instance.amount,
    };

_$BonusDataImpl _$$BonusDataImplFromJson(Map<String, dynamic> json) =>
    _$BonusDataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BonusDataImplToJson(_$BonusDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
    };

_$FileDataImpl _$$FileDataImplFromJson(Map<String, dynamic> json) =>
    _$FileDataImpl(
      id: json['id'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$FileDataImplToJson(_$FileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
    };

_$CourseDataImpl _$$CourseDataImplFromJson(Map<String, dynamic> json) =>
    _$CourseDataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      level: json['level'],
      filial: (json['filial'] as num?)?.toInt(),
      lessonsNumber: (json['lessons_number'] as num?)?.toInt(),
      theme: json['theme'] as List<dynamic>?,
      subject: json['subject'] == null
          ? null
          : SubjectData.fromJson(json['subject'] as Map<String, dynamic>),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$CourseDataImplToJson(_$CourseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
      'filial': instance.filial,
      'lessons_number': instance.lessonsNumber,
      'theme': instance.theme,
      'subject': instance.subject?.toJson(),
      'status': instance.status,
    };

_$SubjectDataImpl _$$SubjectDataImplFromJson(Map<String, dynamic> json) =>
    _$SubjectDataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      photo: json['photo'] == null
          ? null
          : Photo.fromJson(json['photo'] as Map<String, dynamic>),
      course: (json['course'] as num?)?.toInt(),
      hasLevel: json['has_level'] as bool?,
      allThemes: (json['all_themes'] as num?)?.toInt(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$SubjectDataImplToJson(_$SubjectDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo?.toJson(),
      'course': instance.course,
      'has_level': instance.hasLevel,
      'all_themes': instance.allThemes,
      'label': instance.label,
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

_$TeacherImpl _$$TeacherImplFromJson(Map<String, dynamic> json) =>
    _$TeacherImpl(
      id: json['id'] as String?,
      fullName: json['full_name'] as String?,
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
    };

_$PagesDataImpl _$$PagesDataImplFromJson(Map<String, dynamic> json) =>
    _$PagesDataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      user: json['user'] as String?,
      isEditable: json['is_editable'] as bool?,
      isReadable: json['is_readable'] as bool?,
      isParent: json['is_parent'] as bool?,
    );

Map<String, dynamic> _$$PagesDataImplToJson(_$PagesDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'user': instance.user,
      'is_editable': instance.isEditable,
      'is_readable': instance.isReadable,
      'is_parent': instance.isParent,
    };

_$SecondaryGroupMinImpl _$$SecondaryGroupMinImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondaryGroupMinImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$SecondaryGroupMinImplToJson(
        _$SecondaryGroupMinImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$SecondaryTeacherMinImpl _$$SecondaryTeacherMinImplFromJson(
        Map<String, dynamic> json) =>
    _$SecondaryTeacherMinImpl(
      id: json['id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$$SecondaryTeacherMinImplToJson(
        _$SecondaryTeacherMinImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

_$LearningResponseImpl _$$LearningResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LearningResponseImpl(
      studentId: json['student_id'] as String?,
      fullName: json['full_name'] as String?,
      phone: json['phone'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      overallLearning: (json['overall_learning'] as num?)?.toDouble(),
      courseScores: json['course_scores'] as List<dynamic>?,
    );

Map<String, dynamic> _$$LearningResponseImplToJson(
        _$LearningResponseImpl instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'full_name': instance.fullName,
      'phone': instance.phone,
      'balance': instance.balance,
      'overall_learning': instance.overallLearning,
      'course_scores': instance.courseScores,
    };
