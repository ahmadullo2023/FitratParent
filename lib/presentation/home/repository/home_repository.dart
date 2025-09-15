import 'dart:async';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import '../../../data/db/cache.dart';
import '../../../utils/models/file/file_model.dart';
import '../../../utils/request_helper.dart';
import '../../comments/models/me_model.dart';
import '../../profile/model/profile_model.dart';
import '../model/story/story_model.dart';
import '../model/student_model.dart';

class HomeRepository {
  Future<ProfileModel> getStudent({
    required String id,
  }) async {
    print("retriveId >> $id");

    final response = await requestHelper.getWithAuth(
      "/parents/retrive/$id",
      log: true,
    );

    print("response ==> > $response");

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
    } catch (e, s) {
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

  Future<List<StudentModel>> getStudents() async {
    try {
      String studentId = cache.getString("studentIddddddd") ?? "";
      final response = await requestHelper
          .getWithAuth("/add-group/student-pg/$studentId", log: true);
      List list = response;
      return list.map((e) => StudentModel.fromJson(e)).toList();
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  Future<List<LearningResponse>> getLearning() async {
    try {
      final response =
          await requestHelper.getWithAuth("/parents/children/", log: true);
      List list = response;
      return list.map((e) => LearningResponse.fromJson(e)).toList();
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  Future<FileModel> uploadFile(String path, String name) async {
    final FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path, filename: name),
    });
    final response = await requestHelper.postWithF(
      '/upload/',
      formData,
    );
    return FileModel.fromJson(response);
  }

  Future<MeModel> getMe() async {
    final response = await requestHelper.getWithAuth(
      "/auth/me/",
      log: true,
    );

    return MeModel.fromJson(response as Map<String, dynamic>);
  }
}

final homeRepository = HomeRepository();
