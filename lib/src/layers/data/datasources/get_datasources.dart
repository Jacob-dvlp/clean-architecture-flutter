import '../../domain/usecases/posts/imports.dart';

abstract class GetPostDatasources {
  Future<Either<ErrorCustomInterfaceFailure,List<PostEntity>>> callPost();
}
