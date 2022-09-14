import 'imports.dart';

abstract class GetCommentsUseCase {
  Future<List<CommentsEntity>> callComents(int id);
}
