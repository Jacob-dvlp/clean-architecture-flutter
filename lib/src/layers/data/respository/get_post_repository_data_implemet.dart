import '../../core/dependecies/posts/imports.dart';
import '../../domain/entites/post_entity.dart';
import '../../domain/usecases/posts/imports.dart';

class GetPostRepositoryDataImplemet implements GetPostDomainRepository {
  final GetPostDatasources getPostDatasources;

  GetPostRepositoryDataImplemet(this.getPostDatasources);
  @override
  Future<Either<ErrorCustomInterfaceFailure,List<PostEntity>>> callPost() async {
    return await getPostDatasources.callPost();
  }
}
