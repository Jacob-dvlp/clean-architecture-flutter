import 'package:clean_archecterter/src/layers/domain/entites/comments_entity.dart';

abstract class GetCommentsDatasource {
  Future<List<CommentsEntite>> callComents(int id);
}
