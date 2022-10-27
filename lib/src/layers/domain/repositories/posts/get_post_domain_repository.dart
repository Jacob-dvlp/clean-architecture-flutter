import '../../usecases/posts/imports.dart';

abstract class GetPostDomainRepository {
  Future<Either<ErrorCustomInterfaceFailure, List<PostEntity>>> callPost();
}
