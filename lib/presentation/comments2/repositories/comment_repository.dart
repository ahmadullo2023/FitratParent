// import 'package:logger/logger.dart';
// import '../../../utils/models/pagination_model.dart';
// import '../../../utils/request_helper.dart';
// import '../models/comment_model.dart';
//
// class CommentRepository {
//   Future<PaginationModel<CommentModel>> getComments(
//       {required String userId, required int page}) async {
//     final response = await requestHelper.getWithAuth(
//       "/comments/app/$userId/?page=$page",
//       log: true,
//     );
//     return PaginationModel.fromJson(
//       response,
//       (json) => CommentModel.fromJson(json as Map<String, dynamic>),
//     );
//   }
//
//   Future<void> addComment({
//     String? student,
//     String? lid,
//     String? createdAt,
//     required String comment,
//   }) async {
//     final body = {
//       "comment": comment,
//       "student": "92b0b156-a097-46c6-92d9-d92aaeda099b",
//       "lid": lid,
//       "creator": "92b0b156-a097-46c6-92d9-d92aaeda099b",
//     };
//     Logger().t(["BODY", body]);
//     return await requestHelper.postWithAuth(
//       "comments/",
//       body,
//       log: true,
//     );
//   }
// }
//
// final commentRepository = CommentRepository();
