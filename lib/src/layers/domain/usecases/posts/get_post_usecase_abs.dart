import 'imports.dart';

abstract class GetPostUsecase {
  Future<Either<ErrorCustomInterfaceFailure, List<PostEntity>>> callPost();
}
