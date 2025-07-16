import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'filial') List<int>? filial,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) =>
      _$LoginModelFromJson(json);
}
