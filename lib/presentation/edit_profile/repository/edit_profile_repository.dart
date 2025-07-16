

import 'package:fitrat_parent2/presentation/profile/model/profile_model.dart';
import 'package:fitrat_parent2/utils/request_helper.dart';

class EditProfileRepository {
  /*
  Future<MeModel> updateMe({
    required MeModel model,
  }) async {
    final body = model.toJson();
    body.remove("phone");
    body["photo"] = model.photo?.url;
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
   */

  Future<ProfileModel> editProfile({
    required String firstName,
    required String lastName,
    required String phone,
    String? imageUrl,
  }) async {
    final body = {
      "first_name": firstName,
      "last_name": lastName,
      "phone": "+998${phone.replaceAll(RegExp(r'\D'), '')}",
      "photo": imageUrl,
    };

    final response = await requestHelper.putWithAuth("/appsettings/student/", body);
    return ProfileModel.fromJson(response);
  }

}

final editProfileRepository = EditProfileRepository();
