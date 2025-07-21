import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_history_model.freezed.dart';
part 'payment_history_model.g.dart';

@freezed
class PaymentHistoryModel with _$PaymentHistoryModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory PaymentHistoryModel({
    int? count,
    String? next,
    String? previous,
    List<ResultsModel>? results,
  }) = _PaymentHistoryModel;

  factory PaymentHistoryModel.fromJson(Map<String, Object?> json) =>
      _$PaymentHistoryModelFromJson(json);
}

@freezed
class ResultsModel with _$ResultsModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory ResultsModel(
      {String? id,
      String? action,
      String? casher,
      double? amount,
      KindModel? kind,
      String? payment_method,
      String? lid,
      String? attendance,
      String? stuff,
      String? comment,
      String? created_at,
      String? updated_at,
      double? total,
      double? balance}) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}

@freezed
class KindModel with _$KindModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory KindModel({
    String? id,
    String? name,
    String? action,
    String? color,
    String? created_at,
  }) = _KindModel;

  factory KindModel.fromJson(Map<String, dynamic> json) =>
      _$KindModelFromJson(json);
}
