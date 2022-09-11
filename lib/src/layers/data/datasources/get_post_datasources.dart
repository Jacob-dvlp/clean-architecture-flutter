import '../../domain/entitys/post_entity.dart';

abstract class GetPostDatasources {
  Future<List<PostEntity>> callPost();
}
