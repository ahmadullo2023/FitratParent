import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory NotificationModel({

    String? id,
    String? user,
    String? comment,
    String? comeFrom,
    String? choice,
    bool? hasRead,
    bool? isRead,
    String? createdAt,
    String? updatedAt,

  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}