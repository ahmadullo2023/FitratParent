import 'package:freezed_annotation/freezed_annotation.dart';

part 'me_model.freezed.dart';
part 'me_model.g.dart';

@freezed
class MeModel with _$MeModel {
  const factory MeModel({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'photo') Photo? photo,
    @JsonKey(name: 'filial') List<int>? filial,
    @JsonKey(name: 'balance') String? balance,
    @JsonKey(name: 'monitoring') double? monitoring,
    @JsonKey(name: 'enter') dynamic enter,
    @JsonKey(name: 'leave') dynamic leave,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'penalty') double? penalty,
  }) = _MeModel;

  factory MeModel.fromJson(Map<String, Object?> json) =>
      _$MeModelFromJson(json);
}

@freezed
class Photo with _$Photo {
  const factory Photo({
    @JsonKey(name: 'file') String? file,
    @JsonKey(name: 'choice') String? choice,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'id') String? id,
  }) = _Photo;

  factory Photo.fromJson(Map<String, Object?> json) => _$PhotoFromJson(json);
}

// enum Role {
//   TEACHER,
//   ADMINISTRATOR,
//   ASSISTANT;
// }
