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
                "order_id": "7c15d251-0e87-40b4-ac7b-3ad8540d5eb8"
                //cache.getString("orderId"),
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
          "/finance?creator=a668cce4-bc1b-46e5-a5fe-5d14ffc0ea19",
          log: true);

      return PaymentHistoryModel.fromJson(response);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }
}

final paymentRepository = PaymentRepository();

