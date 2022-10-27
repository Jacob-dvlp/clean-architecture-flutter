import 'imports.dart';

class GetPostUsecaseImplemente implements GetPostUsecase {
  final GetPostDomainRepository getPostDomainRepository;

  GetPostUsecaseImplemente(this.getPostDomainRepository);
  @override
  Future<Either<ErrorCustomInterfaceFailure,List<PostEntity>>> callPost() async {
    return await getPostDomainRepository.callPost();
  }
}
