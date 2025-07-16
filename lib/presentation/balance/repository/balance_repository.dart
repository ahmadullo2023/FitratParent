import 'dart:async';
import 'package:fitrat_parent2/presentation/balance/model/balance_model.dart';
import '../../../data/hive/hive_helper.dart';
import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';


class BalanceRepository {
  Future<PaginationModel<BalanceModel>> getBalance({int page = 1}) async {
    final completer = Completer<PaginationModel<BalanceModel>>();
    try {
      final response = await requestHelper.getWithAuth(
          "/appsettings/finance/${HiveHelper.getUserId()}?page=$page",
          log: true);

      completer.complete(
        PaginationModel.fromJson(
          response,
          (json) => BalanceModel.fromJson(
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

final balanceRepository = BalanceRepository();
