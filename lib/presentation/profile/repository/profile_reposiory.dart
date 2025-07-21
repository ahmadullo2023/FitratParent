import 'dart:async';
import 'package:fitrat_parent2/utils/request_helper.dart';
import 'package:logger/logger.dart';

import '../model/me_model.dart';
import '../model/profile_model.dart';

class ProfileRepository {
  Future<dynamic> authUpdate(
      {required String? id,
      required String? full_name,
      required String? first_name,
      required String? last_name,
      required String? role,
      required double? salary,
      required int? password,
      required List? pages,
      required List? files,
      required bool is_archived,
      required List? filial,
      required List? bonus,
      required List? compensation}) async {
    try {
      print("full_name====> $full_name");

      final body = {
        "full_name": full_name,
        "first_name": first_name,
        "last_name": last_name,
        "role": role,
        "salary": salary,
        "password": password,
        "pages": pages,
        "files": files,
        "is_archived": is_archived,
        "filial": filial,
        "bonus": bonus,
        "compensation": compensation
      };

      final response = await requestHelper
          .patchWithAuth("/auth/update/$id/", body, log: true);

      return response;
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }



  Future<MeModel> getMe({
    required String id,
  }) async {
    print("getMe >> $id");

    final response = await requestHelper.getWithAuth(
      "/auth/me",
      log: true,
    );

    print("response ==>+> $response");

    return MeModel.fromJson(response as Map<String, dynamic>);
  }



}

final profileRepository = ProfileRepository();
