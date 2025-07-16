import 'package:freezed_annotation/freezed_annotation.dart';

part 'balance_model.freezed.dart';
part 'balance_model.g.dart';

@freezed
class BalanceModel with _$BalanceModel {

  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)

  const factory BalanceModel({
    String? id,
    String? casher,
    String? student,
    String? action,
    int? amount,
    String? kind,
    String? paymentMethod,
    String? creator,
    String? comment,
    String? createdAt,
    String? updatedAt,
}) = _BalanceModel;

  factory BalanceModel.fromJson(Map<String, dynamic> json) =>
      _$BalanceModelFromJson(json);
}
