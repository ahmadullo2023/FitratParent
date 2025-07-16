import 'dart:async';
import 'package:logger/web.dart';
import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';
import '../model/notification_model.dart';

class NotificationRepository {
  Future<PaginationModel<NotificationModel>> getNotifications(
      {required int page}) async {
    final completer = Completer<PaginationModel<NotificationModel>>();
    try {
      final response = await requestHelper
          .getWithAuth("/notifications/?page=$page", log: true);

      completer.complete(
        PaginationModel.fromJson(
          response,
              (json) => NotificationModel.fromJson(
            json as Map<String, dynamic>,
          ),
        ),
      );
    } catch (e) {
      completer.completeError(e);
    }
    return completer.future;
  }

  Future<dynamic> updateNotification(
      {required String? notificationId, required bool? isRead}) async {

    final body = {
      "is_read" : isRead
    };

    try {
      final response = await requestHelper
          .patchWithAuth("/notifications/$notificationId", body, log: true);

      return response;
    } catch (e, s) {
      Logger().e([e, s]);
      rethrow;
    }
  }



}

final notificationRepository = NotificationRepository();
