import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/models/file/file_model.dart';

part 'events_model.freezed.dart';

part 'events_model.g.dart';

@freezed
class EventsModel with _$EventsModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory EventsModel({
    String? id,
    List<FileModel>? file,
    FileModel? photo,
    String? link,
    String? linkPreview,
    String? title,
    String? comment,
    String? endDate,
    String? status,
  }) = _EventsModel;

  factory EventsModel.fromJson(Map<String, dynamic> json) =>
      _$EventsModelFromJson(json);
}

enum EventStatus {
  expired("Expired", "O’tib ketgan tadbirlar"),
  soon("Soon", "Aktiv tadbirlar");

  final String nameUI;
  final String nameAPI;


  const EventStatus(this.nameAPI, this.nameUI);
}
