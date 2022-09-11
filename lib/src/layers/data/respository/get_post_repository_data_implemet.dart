import '../../core/dependecies/posts/imports.dart';
import '../../domain/entitys/post_entity.dart';

class GetPostRepositoryDataImplemet implements GetPostDomainRepository {
  final GetPostDatasources getPostDatasources;

  GetPostRepositoryDataImplemet(this.getPostDatasources);
  @override
  Future<List<PostEntity>> callPost() async {
    return await getPostDatasources.callPost();
  }
}
