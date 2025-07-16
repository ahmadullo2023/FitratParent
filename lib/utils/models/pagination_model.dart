import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginationModel<T> with _$PaginationModel<T> {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake, genericArgumentFactories: true)
  const factory PaginationModel({
    int? count,
    String? next,
    String? previous,
    List<T>? results,
  }) = _PaginationModel<T>;

  factory PaginationModel.fromJson(
      Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$PaginationModelFromJson(json, fromJsonT);
}



