import '../../domain/entitys/post_entity.dart';
import '../../domain/repositorys/get_post_domain_repository.dart';
import '../datasources/get_post_datasources.dart';

class GetPostRepositoryDataImplemet implements GetPostDomainRepository {
  final GetPostDatasources getPostDatasources;

  GetPostRepositoryDataImplemet(this.getPostDatasources);
  @override
  Future<List<PostEntity>> callPost() async {
    return await getPostDatasources.callPost();
  }
}
