// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeNewImpl _$$ThemeNewImplFromJson(Map<String, dynamic> json) =>
    _$ThemeNewImpl(
      id: json['id'] as String?,
      subject: json['subject'] == null
          ? null
          : Subject.fromJson(json['subject'] as Map<String, dynamic>),
      title: json['title'] as String?,
      theme: json['theme'] as String?,
      course: (json['course'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      videos: (json['videos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => File.fromJson(e as Map<String, dynamic>))
          .toList(),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      homeworkFiles: (json['homework_files'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      courseWorkFiles: (json['course_work_files'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraWorkFiles: (json['extra_work_files'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ThemeNewImplToJson(_$ThemeNewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'title': instance.title,
      'theme': instance.theme,
      'course': instance.course,
      'description': instance.description,
      'videos': instance.videos,
      'files': instance.files,
      'photos': instance.photos,
      'homework_files': instance.homeworkFiles,
      'course_work_files': instance.courseWorkFiles,
      'extra_work_files': instance.extraWorkFiles,
    };

_$HomeworkModelImpl _$$HomeworkModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      theme: json['theme'] == null
          ? null
          : ThemeNew.fromJson(json['theme'] as Map<String, dynamic>),
      ball: json['ball'] == null
          ? null
          : BallData.fromJson(json['ball'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool?,
      testChecked: json['test_checked'] as bool?,
      video: (json['video'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$HomeworkModelImplToJson(_$HomeworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'theme': instance.theme?.toJson(),
      'ball': instance.ball?.toJson(),
      'is_active': instance.isActive,
      'test_checked': instance.testChecked,
      'video': instance.video?.map((e) => e.toJson()).toList(),
      'documents': instance.documents?.map((e) => e.toJson()).toList(),
      'photo': instance.photo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt,
    };

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      course: (json['course'] as num?)?.toInt(),
      hasLevel: json['has_level'] as bool?,
      isLanguage: json['is_language'] as bool?,
      allThemes: (json['all_themes'] as num?)?.toInt(),
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'course': instance.course,
      'has_level': instance.hasLevel,
      'is_language': instance.isLanguage,
      'all_themes': instance.allThemes,
      'label': instance.label,
    };

_$FileImpl _$$FileImplFromJson(Map<String, dynamic> json) => _$FileImpl(
      id: json['id'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$$FileImplToJson(_$FileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
    };

_$HomeworksModelImpl _$$HomeworksModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeworksModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      theme: json['theme'] == null
          ? null
          : ThemeNew.fromJson(json['theme'] as Map<String, dynamic>),
      ball: json['ball'] == null
          ? null
          : BallData.fromJson(json['ball'] as Map<String, dynamic>),
      studentBall: (json['student_ball'] as num?)?.toInt(),
      isActive: json['is_active'] as bool?,
      video: (json['video'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      photo: (json['photo'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$HomeworksModelImplToJson(
        _$HomeworksModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'theme': instance.theme?.toJson(),
      'ball': instance.ball?.toJson(),
      'student_ball': instance.studentBall,
      'is_active': instance.isActive,
      'video': instance.video?.map((e) => e.toJson()).toList(),
      'documents': instance.documents?.map((e) => e.toJson()).toList(),
      'photo': instance.photo?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt,
    };

_$BallDataImpl _$$BallDataImplFromJson(Map<String, dynamic> json) =>
    _$BallDataImpl(
      overallAvg: (json['overall_avg'] as num?)?.toInt(),
      onlineAvg: (json['online_avg'] as num?)?.toInt(),
      offlineAvg: (json['offline_avg'] as num?)?.toInt(),
      ball: (json['ball'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BallDataImplToJson(_$BallDataImpl instance) =>
    <String, dynamic>{
      'overall_avg': instance.overallAvg,
      'online_avg': instance.onlineAvg,
      'offline_avg': instance.offlineAvg,
      'ball': instance.ball,
    };

_$HomeworkDataImpl _$$HomeworkDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeworkDataImpl(
      id: json['id'] as String?,
      testChecked: json['test_checked'] as bool?,
      isActive: json['is_active'] as bool?,
      homework: json['homework'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$HomeworkDataImplToJson(_$HomeworkDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test_checked': instance.testChecked,
      'is_active': instance.isActive,
      'homework': instance.homework,
      'status': instance.status,
    };
