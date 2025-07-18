import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';

part 'payment_model.g.dart';


@freezed
class PaymentModel with _$PaymentModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory PaymentModel({
    int? order_id,
    String? payment_url,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, Object?> json) =>
      _$PaymentModelFromJson(json);
}
