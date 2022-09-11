import '../../entitys/post_entity.dart';
import '../../repositorys/get_post_domain_repository.dart';
import 'get_post_usecase_abs.dart';

class GetPostUsecaseImplemente implements GetPostUsecase {
  final GetPostDomainRepository getPostDomainRepository;

  GetPostUsecaseImplemente(this.getPostDomainRepository);
  @override
  Future<List<PostEntity>> callPost() async {
    return await getPostDomainRepository.callPost();
  }
}
