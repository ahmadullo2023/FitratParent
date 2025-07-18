import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_model.freezed.dart';
part 'photo_model.g.dart';

@freezed
class PhotoModel with _$PhotoModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory PhotoModel({
    String? id,
    String? file,
  }) = _PhotoModel;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => _$PhotoModelFromJson(json);
}

@freezed
class FileData with _$FileData {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory FileData({
    String? id,
    String? file
  }) = _FileData;

  factory FileData.fromJson(Map<String, dynamic> json) =>
      _$FileDataFromJson(json);
}