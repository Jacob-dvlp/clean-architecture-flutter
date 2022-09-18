import 'imports.dart';

abstract class GetCommentsUseCase {
  Future<List<CommentsEntite>> callComents(int id);
}
