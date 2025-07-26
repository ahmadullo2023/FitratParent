import 'package:fitrat_parent2/presentation/events/model/events_model.dart';
import 'package:fitrat_parent2/utils/models/pagination_model.dart';
import 'package:fitrat_parent2/utils/request_helper.dart';
import 'package:logger/logger.dart';


class EventsRepository {
  Future<PaginationModel<EventsModel>> getEvents(
      {String? status, required int page}) async {

    print("getEvents ishga tushdi <<<");

    String a = status ?? "";
    try {
      final response = await requestHelper.getWithAuth(
        "/event?status=$a&page=$page",
        log: true,
      );
      return PaginationModel.fromJson(
        response,
        (json) => EventsModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }

  Future<List<EventsModel>> getEventsNoPg() async {
    try {
      final response = await requestHelper.getWithAuth(
        "/event/?status=Soon&page=1",
        log: true,
      );

      final List list = response['results'];
      return list.map((e) => EventsModel.fromJson(e)).toList();
    } catch (e, s) {
      Logger().e(["ERROR", e, s]);
      rethrow;
    }
  }
}

final eventsRepository = EventsRepository();
