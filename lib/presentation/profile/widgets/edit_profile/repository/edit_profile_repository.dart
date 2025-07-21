import '../../../../../data/db/cache.dart';
import '../../../../../utils/request_helper.dart';
import '../../../model/profile_model.dart';

class EditProfileRepository {

  Future<ProfileModel> editProfile({
    required String firstName,
    required String lastName,
    required String phone,
    String? imageUrl,
  }) async {
    final body = {
      "first_name": firstName,
      "last_name": lastName,
      // "phone": "+998${phone.replaceAll(RegExp(r'\D'), '')}",
      "photo": imageUrl,
    };

    final response = await requestHelper.patchWithAuth(
        "/auth/update/${cache.getString("id")}/", body);
    return ProfileModel.fromJson(response);
  }
}

final editProfileRepository = EditProfileRepository();
