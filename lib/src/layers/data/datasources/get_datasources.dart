import '../../domain/entites/post_entity.dart';

abstract class GetPostDatasources {
  Future<List<PostEntity>> callPost();
}
