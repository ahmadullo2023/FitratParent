import 'package:fitrat_parent2/presentation/comments/models/me_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'creator') String? creator,
    @JsonKey(name: 'lid') dynamic lid,
    @JsonKey(name: 'student') String? student,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'first_name') dynamic firstName,
    @JsonKey(name: 'last_name') dynamic lastName,
    @JsonKey(name: 'photo') Photo? photo,
    @JsonKey(name: 'creature_photo') Photo? creatorPhoto,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, Object?> json) => _$CommentModelFromJson(json);
}


