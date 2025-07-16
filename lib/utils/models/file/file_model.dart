import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_model.freezed.dart';
part 'file_model.g.dart';

@freezed
class FileModel with _$FileModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory FileModel({
    String? id,
    String? file, // video: mp4, mov, audio: mp3, rasm:  png, jpeg(jpg),
    String? choiceUrl,
    String? url,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);

}


