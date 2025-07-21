import 'package:logger/logger.dart';
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
      final body = {
        "lid": null,
        "student": student,
        "amount": amount,
        "type": type
      };
      final response = await requestHelper.postWithAuth("/clickuz/order/", body, log: true);

      print("BU payment ===> ${response}");

      return PaymentModel.fromJson(response);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }



  Future<PaymentHistoryModel> paymentHistory() async {
    try {

      final response = await requestHelper.getWithAuth("/finance/", log: true);

      print("BU payment history ===> ${response}");

      return PaymentHistoryModel.fromJson(response);
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

}

final paymentRepository = PaymentRepository();
