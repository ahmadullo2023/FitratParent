import 'package:logger/logger.dart';
import '../../../data/db/cache.dart';
import '../../../utils/models/pagination_model.dart';
import '../../../utils/request_helper.dart';
import '../models/comment_model.dart';

class CommentRepository {
  Future<PaginationModel<CommentModel>> getComments(
      {required String userId, required int page}) async {
    final response = await requestHelper.getWithAuth(
      "/comments/app/14b13cca-1910-404f-8013-a8e552c8d127/?page=1",
      log: true,
    );
    return PaginationModel.fromJson(
      response,
      (json) => CommentModel.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<void> addComment({
    String? student,
    String? lid,
    String? createdAt,
    String? imgId,
    required String comment,
  }) async {
    final body = {
      "comment": comment,
      "student": "14b13cca-1910-404f-8013-a8e552c8d127",
      "lid": null,
      "file": imgId,
      "creator": cache.getString("id"),
    };
    Logger().t(["BODY", body]);
    return await requestHelper.postWithAuth(
      "/comments/",
      body,
      log: true,
    );
  }
}

final commentRepository = CommentRepository();
