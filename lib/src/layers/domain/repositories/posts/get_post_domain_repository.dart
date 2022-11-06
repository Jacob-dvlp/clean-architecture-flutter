import '../../usecases/posts/imports.dart';

abstract class GetPostDomainRepository {
  Future<List<PostEntity>> callPost();
}
