import 'dart:async';
import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';
import '../model/points_model.dart';


class PointsRepository {

  Future<PaginationModel<PointsModel>> getPointsHistory ({required String studentId, required int page}) async {
    final completer = Completer<PaginationModel<PointsModel>>();
    try {
      final response = await requestHelper.getWithAuth(
          "/shop/coins/?page=$page&student=$studentId",
          log: true);

      completer.complete(
        PaginationModel.fromJson(
          response,
              (json) => PointsModel.fromJson(
            json as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e, s) {
      completer.completeError(e);
    }
    return completer.future;
  }

}

final pointsRepository = PointsRepository();