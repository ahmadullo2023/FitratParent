import 'package:freezed_annotation/freezed_annotation.dart';

import '../student_model.dart';

part 'story_model.freezed.dart';
part 'story_model.g.dart';


@freezed
class StoryModel with _$StoryModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory StoryModel({
    String? id,
    Photo? photo,
    List<Photo>? video,
    String? text,
    bool? seen,
    String? createdAt

}) = _StoryModel;


  factory StoryModel.fromJson(Map<String, dynamic> json) =>
      _$StoryModelFromJson(json);
}