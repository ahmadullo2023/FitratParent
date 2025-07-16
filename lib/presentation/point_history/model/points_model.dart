import 'package:freezed_annotation/freezed_annotation.dart';

part 'points_model.freezed.dart';
part 'points_model.g.dart';

@freezed
class PointsModel with _$PointsModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory PointsModel({
    String? id,
    String? student,
    String? coin,
    String? comment,
    String? status,
    String? createdAt,
}) = _PointsModel;

  factory PointsModel.fromJson(Map<String, dynamic> json) =>
      _$PointsModelFromJson(json);
}