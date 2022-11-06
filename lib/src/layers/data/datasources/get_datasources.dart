import '../../domain/usecases/posts/imports.dart';

abstract class GetPostDatasources {
  Future<List<PostEntity>> callPost();
}
