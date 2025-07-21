import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../../../utils/request_helper.dart';
import '../../profile/model/me_model.dart';

class MeRepository {
  Future<MeModel> getMe() async {
    final response = await requestHelper.getWithAuth("/auth/me", log: true);

    return MeModel.fromJson(response);
  }

  Future<MeModel> updateMe({
    required MeModel model,
  }) async {
    final body = model.toJson();
    body.remove("phone");
    body["photo"] = model.photo?.url;

    try {
      final inputFormat = DateFormat('dd.MM.yyyy');
      final outputFormat = DateFormat('yyyy-MM-dd');
      final formattedDate = outputFormat.format(inputFormat.parse(model.dateOfBirth!));
      body["date_of_birth"] = formattedDate;
    } catch (e) {
      // Fallback if date is already in the correct format
      body["date_of_birth"] = model.dateOfBirth;
    }

    final response = await requestHelper.putWithAuth(
      "/auth/update/${model.id}/",
      body,
      log: true,
    );

    try {
      return MeModel.fromJson(response);
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }

  // Future<MeModel> updateMe({
  //   required MeModel model,
  // }) async {
  //   final body = model.toJson();
  //   body.remove("phone");
  //   body["photo"] = model.photo?.url;
  //   body["date_of_birth"] = model.dateOfBirth;
  //   final response = await requestHelper.putWithAuth(
  //     "/auth/update/${model.id}/",
  //     body,
  //     log: true,
  //   );
  //   try {
  //     return MeModel.fromJson(response);
  //   } catch (e, s) {
  //     Logger().e([e, s]);
  //     rethrow;
  //   }
  // }

  Future<String> uploadFile(String path, String name) async {
    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path, filename: name),
    });
    final response = await requestHelper.postWithF(
      '/upload/',
      formData,
    );
    return response["id"];
  }
}

String convertDateToApiFormat(String inputDate) {
  final inputFormat = DateFormat('dd.MM.yyyy');
  final outputFormat = DateFormat('yyyy-MM-dd');
  final dateTime = inputFormat.parse(inputDate);
  return outputFormat.format(dateTime);
}

final meRepository = MeRepository();
