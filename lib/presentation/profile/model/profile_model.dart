import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/model/student_model.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {

  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory ProfileModel({
    String? id,
    String? name,
    Photo? photo,
    String? lastName,
    String? middleName,
    String? phone,
    Learning? learning,
    String? dateOfBirth,
    String? educationLang,
    String? studentType,
    String? eduClass,
    String? eduLevel,
    String? studentId,
    String? subject,
    List<SalesData>? sales,
    VoucherData? voucher,
    double? ball,
    Filial? filial,
    MarketingChannel? marketingChannel,
    String? studentStageType,
    String? balanceStatus,
    String? balance,
    ServiceManager? serviceManager,
    MeCourseData? course,
    List<GroupData>? group,
    Teacher? teacher,
    String? callOperator,
    SalesManager? salesManager,
    bool? isArchived,
    bool? isFrozen,
    int? attendanceCount,
    List<RelativesData>? relatives,
    List<FileData>? file,
    int? strike,
    SecondaryGroupMin? secondaryGroup,
    SecondaryTeacherMin? secondaryTeacher,
    String? newStudentStages,
    String? newStudentDate,
    String? activeDate,
    String? createdAt,
    String? updatedAt,


  }) = _ProfileModel;


  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class MeCourseData with _$MeCourseData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory MeCourseData({
    int? count,
    List<Course>? items
}) = _MeCourseData;


  factory MeCourseData.fromJson(Map<String, dynamic> json) =>
      _$MeCourseDataFromJson(json);
}

@freezed
class Filial with _$Filial {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Filial({
    int? id,
    String? name,
    int? latitude,
    int? longitude,
    String? createdAt,
    String? updatedAt,
  }) = _Filial;

  factory Filial.fromJson(Map<String, dynamic> json) => _$FilialFromJson(json);
}

@freezed
class Learning with _$Learning {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Learning({
    double? score,
    double? learning,
  }) = _Learning;

  factory Learning.fromJson(Map<String, Object?> json) =>
      _$LearningFromJson(json);
}

@freezed
class VoucherData with _$VoucherData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory VoucherData({
    String? id,
    int? amount,
    String? createdAt,
    bool? isExpired,
  }) = _VoucherData;

  factory VoucherData.fromJson(Map<String, dynamic> json) =>
      _$VoucherDataFromJson(json);
}

@freezed
class MarketingChannel with _$MarketingChannel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MarketingChannel({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? name,
    String? type,
    int? filial,
  }) = _MarketingChannel;

  factory MarketingChannel.fromJson(Map<String, dynamic> json) =>
      _$MarketingChannelFromJson(json);
}

@freezed
class ServiceManager with _$ServiceManager {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ServiceManager({
    String? balance,
    double? ball,
    List<bool>? isLinked,
    List<FileData>? files,
    Photo? photo, //check this
    List<int>? filial,
    double? salary,
    String? extraNumber,
    bool? isCallCenter,
    String? enter,
    String? leave,
    String? dateOfBirth,
    String? createdAt,
    List<BonusData>? bonus,
    List<BonusData>? compensation,
    String? updatedAt,
    bool? isArchived,
  }) = _ServiceManager;

  factory ServiceManager.fromJson(Map<String, dynamic> json) =>
      _$ServiceManagerFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'level') dynamic level,
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}

@freezed
class GroupData with _$GroupData {
  const factory GroupData({
    @JsonKey(name: 'group__name') String? groupName,
    @JsonKey(name: 'group__status') String? groupStatus,
    @JsonKey(name: 'group__started_at') String? groupStartedAt,
    @JsonKey(name: 'group__ended_at') String? groupEndedAt,
    @JsonKey(name: 'group__teacher__first_name') String? teacherFirstName,
    @JsonKey(name: 'group__teacher__last_name') String? teacherLastName,
    @JsonKey(name: 'group__course__name') String? groupCourseName,
    @JsonKey(name: 'group__course__level__name') String? groupCourseLevelName,
  }) = _GroupData;

  factory GroupData.fromJson(Map<String, dynamic> json) =>
      _$GroupDataFromJson(json);
}


