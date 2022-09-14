import '../../domain/entitys/comments_entity.dart';

abstract class GetCommentsDatasource {
  Future<List<CommentsEntity>> callComents(int id);
}
