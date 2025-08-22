import 'package:logger/logger.dart';
import '../../../data/db/cache.dart';
import '../../../utils/request_helper.dart';
import '../model/payment_history_model.dart';
import '../model/payment_model.dart';

class PaymentRepository {
  Future<PaymentModel> payment({
    required String? lid,
    required String? student,
    required String? amount,
    required String? type,
  }) async {
    try {
      final body = type == "Click"
          ? {"lid": null, "student": student, "amount": amount, "type": type}
          : {
              "params": {
                "amount": amount,
                "order_id": student,
              },
              "return_url": null
            };

      final response = await requestHelper.postWithAuth(
          type == "Click" ? "/clickuz/order/" : "/webhook/paycom", body,
          log: true);

      print("BU payment ===> ${response}");

      return PaymentModel.fromJson(response);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  Future<PaymentHistoryModel> paymentHistory() async {
    print("paymentHistory funksiya ishladi");

    try {
      final response = await requestHelper.getWithAuth(
          "/finance?creator=${cache.getString("studentIddddddd")}",
          log: true);

      return PaymentHistoryModel.fromJson(response);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }
}

final paymentRepository = PaymentRepository();
