import 'package:freezed_annotation/freezed_annotation.dart';

part 'me_model.freezed.dart';
part 'me_model.g.dart';

@freezed
class MeModel with _$MeModel {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory MeModel({
    String? id,
    String? fullName,
    String? firstName,
    String? lastName,
    List<bool>? isLinked,
    bool? calculatePenalties,
    bool? calculateBonus,
    String? phone,
    String? role,
    dynamic penalty,
    List<dynamic>? pages,
    List<dynamic>? files,
    Photo? photo,
    List<int>? filial,
    String? balance,
    double? salary,
    String? extraNumber,
    bool? isCallCenter,
    String? secondUser,
    String? studentId,
    String? enter,
    String? leave,
    String? dateOfBirth,
    String? createdAt,
    List<dynamic>? bonus,
    List<dynamic>? compensation,
    double? monitoring,
    String? updatedAt,
    bool? isArchived,
  }) = _MeModel;

  factory MeModel.fromJson(Map<String, dynamic> json) =>
      _$MeModelFromJson(json);
}

@freezed
class Photo with _$Photo {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Photo({
    dynamic file,
    dynamic choice,
    String? url,
  }) = _Photo;

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}
