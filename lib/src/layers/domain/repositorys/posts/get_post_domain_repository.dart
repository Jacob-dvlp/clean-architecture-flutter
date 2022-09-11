import '../../entitys/post_entity.dart';

abstract class GetPostDomainRepository {
  Future<List<PostEntity>> callPost();
}
