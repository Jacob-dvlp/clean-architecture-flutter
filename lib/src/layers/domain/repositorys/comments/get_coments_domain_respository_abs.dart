import '../../entitys/comments_entity.dart';

abstract class GetCommentsRepository {
  Future<List<CommentsEntity>> callComents(int id);
}
