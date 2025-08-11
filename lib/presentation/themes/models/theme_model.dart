import 'package:freezed_annotation/freezed_annotation.dart';

import '../../comments/models/me_model.dart';
import '../../profile/model/profile_model.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

@freezed
class ThemeNew with _$ThemeNew {
  const factory ThemeNew({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'subject') Subject? subject,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'theme') String? theme,
    @JsonKey(name: 'course') List<Course>? course,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'videos') List<Photo>? videos,
    @JsonKey(name: 'files') List<File>? files,
    @JsonKey(name: 'photos') List<Photo>? photos,
    @JsonKey(name: 'homework_files') List<Photo>? homeworkFiles,
    @JsonKey(name: 'course_work_files') List<Photo>? courseWorkFiles,
    @JsonKey(name: 'extra_work_files') List<Photo>? extraWorkFiles,
  }) = _ThemeNew;

  factory ThemeNew.fromJson(Map<String, Object?> json) => _$ThemeNewFromJson(json);
}

@freezed
class HomeworkModel with _$HomeworkModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory HomeworkModel({
    String? id,
    String? title,
    String? body,
    ThemeNew? theme,
    BallData? ball,
    bool? isActive,
    bool? testChecked,
    List<Photo>? video,
    List<Photo>? documents,
    List<Photo>? photo,
    String? createdAt,

  }) = _HomeworkModel;


  factory HomeworkModel.fromJson(Map<String, dynamic> json) =>
      _$HomeworkModelFromJson(json);
}


@freezed
class Subject with _$Subject {
  const factory Subject({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'course') int? course,
    @JsonKey(name: 'has_level') bool? hasLevel,
  @JsonKey(name: 'is_language') bool? isLanguage,
    @JsonKey(name: 'all_themes') int? allThemes,
    @JsonKey(name: 'label') String? label,
  }) = _Subject;

  factory Subject.fromJson(Map<String, Object?> json) => _$SubjectFromJson(json);
}

@freezed
class File with _$File {
  const factory File({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'file') String? file,
  }) = _File;

  factory File.fromJson(Map<String, Object?> json) => _$FileFromJson(json);
}


@freezed
class HomeworksModel with _$HomeworksModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory HomeworksModel({
    String? id,
    String? title,
    String? body,
    ThemeNew? theme,
    BallData? ball,
    int? studentBall,
    bool? isActive,
    List<Photo>? video,
    List<Photo>? documents,
    List<Photo>? photo,
    String? createdAt,

  }) = _HomeworksModel;


  factory HomeworksModel.fromJson(Map<String, dynamic> json) =>
      _$HomeworksModelFromJson(json);
}


@freezed
class BallData with _$BallData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory BallData({
    int? overallAvg,
    int? onlineAvg,
    int? offlineAvg,
    int? ball
  }
      ) = _BallData;

  factory BallData.fromJson(Map<String, dynamic> json) =>
      _$BallDataFromJson(json);
}

// @freezed
// class ShowResultsResponse with _$ShowResultsResponse {
//   const factory ShowResultsResponse({
//     required String id,
//     required int point,
//     @JsonKey(name: 'json_body') List<PostAnswersResponse>? jsonBody,
//     // Agar boshqa maydonlar kerak bo‘lsa ularni ham qo‘shing
//   }) = _ShowResultsResponse;
//
//   factory ShowResultsResponse.fromJson(Map<String, dynamic> json) =>
//       _$ShowResultsResponseFromJson(json);
// }



// @freezed
// class ShowResultsResponse with _$ShowResultsResponse {
//   const factory ShowResultsResponse({
//     required String id,
//     required int point,
//     @JsonKey(
//       name: 'json_body',
//       fromJson: _jsonBodyFromJson,
//     )
//     List<PostAnswersResponse>? jsonBody,
//   }) = _ShowResultsResponse;
//
//   factory ShowResultsResponse.fromJson(Map<String, dynamic> json) =>
//       _$ShowResultsResponseFromJson(json);
// }
//
// /// Converter function
// List<PostAnswersResponse>? _jsonBodyFromJson(dynamic data) {
//   if (data == null) return null;
//
//   if (data is List) {
//     return data
//         .map((e) => PostAnswersResponse.fromJson(e as Map<String, dynamic>))
//         .toList();
//   }
//
//   if (data is Map) {
//     return [PostAnswersResponse.fromJson(data as Map<String, dynamic>)];
//   }
//
//   throw Exception("json_body noto‘g‘ri format: $data");
// }




@freezed
class HomeworkData with _$HomeworkData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory HomeworkData({
    String? id,
    bool? testChecked,
    bool? isActive,
    String? homework,
    String? status
}) = _HomeworkData;

  factory HomeworkData.fromJson(Map<String, dynamic> json) =>
      _$HomeworkDataFromJson(json);
}