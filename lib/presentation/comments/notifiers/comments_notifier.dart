import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../utils/models/pagination_model.dart';
import '../models/comment_model.dart';
import '../repositories/comment_repository.dart';

part 'comments_notifier.g.dart';

@riverpod
class CommentsNotifier extends _$CommentsNotifier {
  @override
  FutureOr<PaginationModel<CommentModel>> build(
      {required String userId, required int page}) async {
    return commentRepository.getComments(userId: userId, page: page);
  }

  Future<void> addComment(
      {String? student, String? lid, required String comment}) async {
    return commentRepository.addComment(
        student: student, lid: lid, comment: comment);
  }
}
