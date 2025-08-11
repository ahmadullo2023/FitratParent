import 'package:logger/logger.dart';

import '../../../data/db/cache.dart';
import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';
import '../../home/model/student_model.dart';
import '../models/theme_model.dart';

class ThemesRepository {
  // Future<PaginationModel<ThemeNew>> getThemesOfLesson(
  //     {required String courseId, required int page, required String levelId}) async {
  //   final response = await requestHelper.getWithAuth(
  //     "/subjects/theme/?course=$courseId&level=$levelId&page=$page",
  //     log: true,
  //   );
  //
  //   return PaginationModel.fromJson(
  //     response,
  //         (json) => ThemeNew.fromJson(json as Map<String, dynamic>),
  //   );
  // }

  Future<PaginationModel<HomeworkModel>> getThemesOfLessons(
      {required String courseId,
      required int page,
      required String levelId}) async {
    final response = await requestHelper.getWithAuth(
      "/homework/?course=$courseId&page=$page&student=&user=${cache.getString("id")}&level=$levelId",
      log: true,
    );

    return PaginationModel.fromJson(
      response,
      (json) => HomeworkModel.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<StudentModel> getTestType({required String courseId}) async {
    final response = await requestHelper.getWithAuth(
      "/add-group/student/${cache.getString("id")}/?course=$courseId",
      log: true,
    );
    return StudentModel.fromJson(response);
  }

  Future<ThemeNew> getRecourses({
    required String subjectId,
  }) async {
    final response = await requestHelper.getWithAuth(
      "/subjects/theme/$subjectId/",
      log: true,
    );
    return ThemeNew.fromJson(response);
  }

  Future<List<HomeworkModel>> getHomework({required String themeId}) async {
    try {
      final response = await requestHelper.getWithAuth(
        "/homework/no-pg?theme=$themeId",
        log: true,
      );
      List list = response;
      return list.map((e) => HomeworkModel.fromJson(e)).toList();
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  Future<PaginationModel<HomeworkModel>> getHomeworks(
      {required String courseId,
      required int page,
      required String levelId}) async {
    final response = await requestHelper.getWithAuth(
      "/homework/?course=$courseId&level=$levelId&page=$page",
      log: true,
    );

    return PaginationModel.fromJson(
      response,
      (json) => HomeworkModel.fromJson(json as Map<String, dynamic>),
    );
  }

  // Future<List<ShowResultsResponse>> getTestResult(
  //     {required String quizId}) async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/quiz-results/?user=${cache.getString("id")}&quiz=$quizId",
  //       log: true,
  //     );
  //
  //     Logger().d("API response: $response");
  //
  //     if (response is List) {
  //       return response
  //           .map((e) => ShowResultsResponse.fromJson(e as Map<String, dynamic>))
  //           .toList();
  //     } else {
  //       throw Exception("Unexpected response format: $response");
  //     }
  //   } catch (e, s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

  // Future<List<ShowResultsResponse>> getTestResult({required String quizId}) async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/quiz-results/?user=${cache.getString("id")}&quiz=$quizId",
  //       log: true,
  //     );
  //
  //     if (response is List) {
  //       return response
  //           .map((e) => ShowResultsResponse.fromJson(e as Map<String, dynamic>))
  //           .toList();
  //     } else if (response is Map && response.containsKey('results')) {
  //       final list = response['results'] as List;
  //       return list
  //           .map((e) => ShowResultsResponse.fromJson(e as Map<String, dynamic>))
  //           .toList();
  //     } else {
  //       throw Exception("Noto'g'ri response format: $response");
  //     }
  //   } catch (e, s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

  // Future<List<ShowResultsResponse>> getTestResult(
  //     {required String quizId}) async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/quiz-results/?user=${cache.getString("id")}&quiz=$quizId",
  //       log: true,
  //     );
  //
  //     final List<dynamic> list = (response as Map<String, dynamic>)['results'];
  //     return list
  //         .map((e) => ShowResultsResponse.fromJson(e as Map<String, dynamic>))
  //         .toList();
  //   } catch (e, s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

  Future<HomeworkData> getHomeworkData({required String homeworkId}) async {
    try {
      final response = await requestHelper.getWithAuth(
        "/homework/history/?homework=$homeworkId&student=${cache.getString("studentIddddddd")}",
        log: true,
      );

      if (response.isEmpty) {
        throw Exception(
            "No homework history found for homeworkId: $homeworkId");
      }

      final a = response.first;
      return HomeworkData.fromJson(a);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }
}

final themesRepository = ThemesRepository();
