import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_model.freezed.dart';

part 'student_model.g.dart';

@freezed
class StudentModel with _$StudentModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory StudentModel({
    String? id,
    GroupMinModel? group,
    Lid? lid,
    Student? student,
    String? homeworkType,
  }) = _StudentModel;

  factory StudentModel.fromJson(Map<String, Object?> json) =>
      _$StudentModelFromJson(json);
}

@freezed
class Student with _$Student {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Student({
    String? id,
    Photo? photo,
    String? firstName,
    String? lastName,
    String? middleName,
    // IsAttendance? isAttendance,
    bool? isAttendance,
    String? phone,
    Learning? learning,
    DateTime? dateOfBirth,
    String? educationLang,
    String? studentType,
    String? eduClass,
    String? subject,
    List<SalesData>? sales,
    List<VoucherData?>? voucher,
    int? ball,
    Filial? filial,
    MarketingChannel? marketingChannel,
    String? studentStageType,
    String? balanceStatus,
    String? balance,
    ServiceManager? serviceManager,
    List<CourseData>? course,
    // String? course,
    List<GroupData>? group,
    // String? group,
    Teacher? teacher,
    String? callOperator,
    SalesManager? salesManager,
    bool? isArchived,
    bool? isFrozen,
    int? attendanceCount,
    List<RelativesData>? relatives,
    List<FileData>? file,
    SecondaryGroupMin? secondaryGroup,
    SecondaryTeacherMin? secondaryTeacher,
    String? newStudentStages,
    DateTime? newStudentDate,
    String? activeDate,
    DateTime? createdAt,
    DateTime? updatedAt,
    // String? id,
    // Photo? photo,
    // String? firstName,
    // String? lastName,
    // String? middleName,
    // String? phone,
    // Learning? learning,
    // String? password,
    // String? dateOfBirth,
    // String? educationLang,
    // String? studentType,
    // String? eduClass,
    // String? eduLevel,
    // String? subject,
    // List<SalesData>? sales,
    // VoucherData? voucher,
    // double? ball,
    // Filial? filial,
    // MarketingChannel? marketingChannel,
    // String? studentStageType,
    // String? balanceStatus,
    // String? balance,
    // ServiceManager? serviceManager,
    // List<List<String>>? course,
    // List<List<String>>? group,
    // String? teacher,
    // CallOperator? callOperator,
    // SalesManager? salesManager,
    // bool? isArchived,
    // bool? isFrozen,
    // String? attendanceCount,
    // RelativesData? relatives,
    // List<String>? file,
    // String? strike,
    // String? secondaryGroup,
    // String? secondaryTeacher,
    // String? newStudentStages,
    // String? newStudentDate,
    // String? activeDate,
    // String? createdAt,
    // String? updatedAt,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

@freezed
class Lid with _$Lid {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Lid({
    String? id, //
    String? senderId, //
    String? messageText, //
    Photo? photo,
    String? firstName, //
    String? lastName, //
    String? middleName, //
    String? phoneNumber, //
    String? dateOfBirth, //
    String? educationLang, //
    String? studentType, //
    List<SalesData>? sales, //
    List<VoucherData>? voucher,
    String? orderedDate, //
    String? eduClass, //
    String? eduLevel, //
    String? subject, //
    int? ball, //
    Filial? filial, //
    bool? isFrozen,
    IsAttendance? isAttendance, //
    MarketingChannel? marketingChannel, //
    String? lidStageType, //
    String? orderedStages, //
    String? extraNumber, //
    String? student, //
    String? balance, //
    String? lidStages, //
    bool? isArchived, //
    List<List<String>>? course, //
    List<List<String>>? group, //
    String? serviceManager, //
    // ServiceManager? serviceManager,
    bool? isStudent, //
    CallOperator? callOperator, //
    List<RelativesData>? relatives, //
    int? lessonsCount, //
    String? createdAt, //
    // SalesManager? salesManager,
    String? salesManager, //
    bool? isExpired, //
    List<FileData>? file, //
  }) = _Lid;

  factory Lid.fromJson(Map<String, dynamic> json) => _$LidFromJson(json);
}

@freezed
class GroupMinModel with _$GroupMinModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory GroupMinModel({
    String? roomNumber,
    String? groupName,
    // Teacher? teacher,
    String? levelId,
    String? teacher,
    String? course,
    SubjectData? subject,
    String? courseId,
  }) = _GroupMinModel;

  factory GroupMinModel.fromJson(Map<String, Object?> json) =>
      _$GroupMinModelFromJson(json);
}

@freezed
class Photo with _$Photo {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Photo({
    String? id,
    String? file, // video: mp4, mov, audio: mp3, rasm:  png, jpeg(jpg),
    String? choice,
    String? url,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
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
class SalesData with _$SalesData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SalesData({
    String? id,
    double? amount,
    String? saleStatus,
    String? date,
  }) = _SalesData;

  factory SalesData.fromJson(Map<String, dynamic> json) =>
      _$SalesDataFromJson(json);
}

@freezed
class SalesManager with _$SalesManager {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SalesManager({
    String? id,
    String? fullName,
    String? firstName,
    String? lastName,
    List<bool>? isLinked,
    String? phone,
    String? role,
    Photo? photo,
    dynamic penalty,
    List<int>? filial,
    String? balance,
    double? ball,
    List<PagesData>? pages,
    List<FileData>? files,
    double? salary,
    String? extraNumber,
    bool? isCallCenter,
    String? enter,
    String? leave,
    String? dateOfBirth,
    String? createdAt,
    List<BonusData>? bonus,
    List<dynamic>? compensation,
    String? updatedAt,
    bool? isArchived,
  }) = _SalesManager;

  factory SalesManager.fromJson(Map<String, Object?> json) =>
      _$SalesManagerFromJson(json);
}

@freezed
class RelativesData with _$RelativesData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory RelativesData({
    String? name,
    String? phone,
    String? who,
  }) = _RelativesData;

  factory RelativesData.fromJson(Map<String, dynamic> json) =>
      _$RelativesDataFromJson(json);
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
class IsAttendance with _$IsAttendance {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory IsAttendance({
    String?
        date, //attendance qilinmagan bolsa is attendance bosh keladi, agar attendance bolgan bolsa sana keladi
    String? time,
  }) = _IsAttendance;

  factory IsAttendance.fromJson(Map<String, dynamic> json) =>
      _$IsAttendanceFromJson(json);
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
class CallOperator with _$CallOperator {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory CallOperator({
    String? id,
    String? fullName,
    dynamic firstName,
    dynamic lastName,
    String? phone,
    String? role,
    dynamic photo,
    List<int>? filial,
    String? balance,
    double? ball,
    double? salary,
    String? enter,
    String? leave,
    dynamic dateOfBirth,
    String? createdAt,
    String? updatedAt,
    List<Compensation>? compensation,
    List<BonusData>? bonus,
  }) = _CallOperator;

  factory CallOperator.fromJson(Map<String, Object?> json) =>
      _$CallOperatorFromJson(json);
}

@freezed
class Compensation with _$Compensation {
  const factory Compensation({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'user') String? user,
    @JsonKey(name: 'amount') String? amount,
  }) = _Compensation;

  factory Compensation.fromJson(Map<String, Object?> json) =>
      _$CompensationFromJson(json);
}

@freezed
class BonusData with _$BonusData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory BonusData({
    String? id,
    String? name,
    double? amount,
  }) = _BonusData;

  factory BonusData.fromJson(Map<String, dynamic> json) =>
      _$BonusDataFromJson(json);
}

@freezed
class FileData with _$FileData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory FileData({String? id, String? file}) = _FileData;

  factory FileData.fromJson(Map<String, dynamic> json) =>
      _$FileDataFromJson(json);
}

@freezed
class CourseData with _$CourseData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory CourseData(
      {String? id,
      String? name,
      dynamic level,
      int? filial,
      int? lessonsNumber,
      List<dynamic>? theme,
      SubjectData? subject,
      String? status}) = _CourseData;

  factory CourseData.fromJson(Map<String, dynamic> json) =>
      _$CourseDataFromJson(json);
}

@freezed
class SubjectData with _$SubjectData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SubjectData({
    String? id,
    String? name,
    Photo? image,
    int? course,
    bool? hasLevel,

    // List<int>? allThemes,
    int? allThemes,
    String? label
  }) = _SubjectData;

  factory SubjectData.fromJson(Map<String, dynamic> json) =>
      _$SubjectDataFromJson(json);
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

@freezed
class Teacher with _$Teacher {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Teacher({
    String? id,
    String? fullName,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, Object?> json) =>
      _$TeacherFromJson(json);
}

@freezed
class PagesData with _$PagesData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory PagesData({
    String? id,
    String? name,
    String? user,
    bool? isEditable,
    bool? isReadable,
    bool? isParent,
  }) = _PagesData;

  factory PagesData.fromJson(Map<String, dynamic> json) =>
      _$PagesDataFromJson(json);
}

@freezed
class SecondaryGroupMin with _$SecondaryGroupMin {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SecondaryGroupMin({
    String? id,
    String? name,
  }) = _SecondaryGroupMin;

  factory SecondaryGroupMin.fromJson(Map<String, Object?> json) =>
      _$SecondaryGroupMinFromJson(json);
}

@freezed
class SecondaryTeacherMin with _$SecondaryTeacherMin {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SecondaryTeacherMin({
    String? id,
    String? firstName,
    String? lastName,
  }) = _SecondaryTeacherMin;

  factory SecondaryTeacherMin.fromJson(Map<String, Object?> json) =>
      _$SecondaryTeacherMinFromJson(json);
}

@freezed
class LearningResponse with _$LearningResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory LearningResponse({
    String? studentId,
    String? fullName,
    String? phone,

    double? balance,
    double? overallLearning,
    List<dynamic>? courseScores

}) = _LearningResponse;

  factory LearningResponse.fromJson(Map<String, dynamic> json) =>
      _$LearningResponseFromJson(json);
}