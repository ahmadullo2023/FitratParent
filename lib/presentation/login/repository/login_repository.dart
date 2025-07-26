import 'dart:developer';
import 'package:logger/logger.dart';
import '../../../data/db/cache.dart';
import '../../../data/hive/hive_helper.dart';
import '../../../utils/request_helper.dart';
import '../model/login_model.dart';

class AuthRepository {


  Future<LoginModel?> login({
    required String phoneNumber,
    required String password,
  }) async {
    final body = {
      "password": password,
      "phone": "+$phoneNumber",
    };

    final response = await requestHelper.post(
      "/auth/token",
      body,
      log: true,
    );

    try {
      final loginModel = LoginModel.fromJson(response);

      if (loginModel.role != "Parents") {
        throw Exception("Faqat ota-onalar (Parents) tizimga kira oladi.");
      }

      await cache.setString("access_token", loginModel.accessToken ?? "");
      await cache.setString("refresh_token", loginModel.refreshToken ?? "");
      await cache.setString("role", loginModel.role ?? "");
      await cache.setString("id", loginModel.userId ?? "");
      await cache.setString("studentIddddddd", loginModel.studentId ?? "");
      await cache.setString("phone", loginModel.phone ?? "");
      await HiveHelper.setUserId(loginModel.userId ?? "");

      return loginModel;
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }




  Future<dynamic> setPassword(
      {required String phoneNumber,
      required confirmationCode,
      required String newPassword}) async {
    try {
      final body = {
        "phone": phoneNumber,
        "confirmation_code": confirmationCode,
        "new_password": newPassword,
      };

      final response = await requestHelper.post(
        "/auth/password-reset/done/",
        body,
        log: true,
      );

      return response;
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }

  Future<dynamic> sendCode({required String phone}) async {
    try {
      final body = {
        "phone": phone,
      };

      final response = await requestHelper.post(
        "/auth/password-reset/",
        body,
        log: true,
      );

      return response;
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }

  Future<dynamic> confirmCode(
      {required String phone, required String code}) async {
    try {
      final body = {
        "phone": phone,
        "confirmation_code": code,
      };

      final response = await requestHelper.post(
        "/auth/password-reset/confirm/",
        body,
        log: true,
      );

      return response;
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }

  Future<bool> refreshToken() async {
    try {
      final body = {"refresh_token": cache.getString("refresh_token")};

      final response = await requestHelper.post(
        "/auth/refresh/",
        body,
        log: true,
      );

      final loginModel = LoginModel.fromJson(response);
      await cache.setString("access_token", loginModel.accessToken ?? "");
      await cache.setString("refresh_token", loginModel.refreshToken ?? "");

      return true;
    } catch (e, s) {
      Logger().e([e, s]);

      return false;
    }
  }
}

final authRepository = AuthRepository();
