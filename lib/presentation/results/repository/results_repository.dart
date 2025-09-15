import 'package:logger/logger.dart';

import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';
import '../model/results_model.dart';

class ResultsRepository {
  Future<PaginationModel<ResultsModel>> getResults(
      {String? fkId, required int page}) async {
    String a = fkId ?? "";
    try {
      final response = await requestHelper.getWithAuth(
        "/quiz-results/student-results/?fk_name=$a&page=$page&status=Accepted",
        log: true,
      );

      return PaginationModel.fromJson(
        response,
        (json) => ResultsModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  // Future<List<ResultsModel>> getResultsNoPg({String? studentId, String? status}) async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/quiz-results/student-results/?page=1&student=${studentId ?? ""}&status=${status ?? ""}",
  //       log: true,
  //     );
  //
  //     final List list = response['results'];
  //
  //         print("+++++++++++++++++++");
  //         print(response);
  //         print("+++++++++++++++++++");
  //         print(list.map((e) => ResultsModel.fromJson(e)).toList());
  //         print("+++++++++++++++++++");
  //
  //
  //     return  response; //list.map((e) => ResultsModel.fromJson(e)).toList();
  //   } catch (e, s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

  Future<List<ResultsModel>> getResultsNoPg(
      {String? studentId, String? status}) async {
    try {
      final response = await requestHelper.getWithAuth(
        "/quiz-results/student-results/?page=1&status=Accepted",
        log: true,
      );

      final List resultsJson = response['results'] ?? [];

      final List<ResultsModel> results = resultsJson
          .map((e) => ResultsModel.fromJson(e as Map<String, dynamic>))
          .toList();

      print("+++++++++++++++");
      print(results);
      print("+++++++++++++++");

      return results;
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  // Future<List<ResultsModel>> getResultsNoPg() async {
  //   try {
  //     final response = await requestHelper.getWithAuth(
  //       "/quiz-results/student-results/?page=1&status=Accepted",
  //       log: true,
  //     );
  //
  //     final List list = response['results'];
  //
  //     return list.map((e) => ResultsModel.fromJson(e)).toList();
  //   } catch (e, s) {
  //     Logger().e(["ERROR", e, s]);
  //     rethrow;
  //   }
  // }

  Future<List<FKNameModel>> getResultTypes() async {
    try {
      final response =
          await requestHelper.getWithAuth("/compensation/points-name/");
      List list = response;
      return list.map((e) => FKNameModel.fromJson(e)).toList();
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }
}

final resultsRepository = ResultsRepository();
