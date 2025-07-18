import 'package:freezed_annotation/freezed_annotation.dart';
import '../../home/model/student_model.dart';

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
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, Object?> json) => _$CommentModelFromJson(json);
}


