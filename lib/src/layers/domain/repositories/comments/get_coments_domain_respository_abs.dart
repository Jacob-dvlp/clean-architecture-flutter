import 'package:clean_archecterter/src/layers/domain/usecases/comments/imports.dart';

abstract class GetCommentsRepository {
  Future<List<CommentsEntite>> callComents(int id);
}
