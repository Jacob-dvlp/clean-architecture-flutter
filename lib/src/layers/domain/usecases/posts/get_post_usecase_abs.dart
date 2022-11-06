import 'imports.dart';

abstract class GetPostUsecase {
  Future<List<PostEntity>> callPost();
}
