import 'dart:async';
import 'package:logger/logger.dart';
import '../../../data/db/cache.dart';
import '../../../utils/request_helper.dart';
import '../../profile/model/profile_model.dart';
import '../model/story/story_model.dart';
import '../model/student_model.dart';

class HomeRepository {

  Future<ProfileModel> getStudent({
    required String id,
  }) async {
    final response = await requestHelper.getWithAuth(
      "/parents/retrive/$id",
      log: true,
    );

    return ProfileModel.fromJson(response as Map<String, dynamic>);
  }

  Future<List<StoryModel>> getStories() async {
   try {
      final response =
          await requestHelper.getWithAuth("/appsettings/story", log: true);

      // final List list = (response as Map<String, dynamic>)['results'];
      // return list.map((e) => StoryModel.fromJson(e)).toList();

      List list = response;
      return list.map((e) => StoryModel.fromJson(e)).toList();
    }catch (e,s) {
    Logger().e(["ERROR", e, s]);
    rethrow;
    }
  }


  Future<dynamic> setStorySeen({
    required String? id,
  }) async {

    try {
      final body = {
        "seen": true,
      };

      final response = await requestHelper
          .patchWithAuth("/appsettings/story/$id", body, log: true);

      return response;
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }


  Future<List<StudentModel>> getStudents () async {
   try {
      String studentId = cache.getString("studentIddddddd") ?? "";
      final response = await requestHelper
          .getWithAuth("/add-group/student-pg/$studentId", log: true);
      List list = response;
      return list.map((e) => StudentModel.fromJson(e)).toList();
    } catch (e,s) {
     Logger().e(["ERROR", e, s]);
     rethrow;
   }
  }

  // Future<LearningResponse> getLearning () async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/appsettings/learning/", log: true
  //     );
  //     return LearningResponse.fromJson(response);
  //   } catch (e,s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

}

final homeRepository = HomeRepository();
