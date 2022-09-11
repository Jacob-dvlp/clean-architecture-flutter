import '../../entitys/post_entity.dart';

abstract class GetPostUsecase {
  Future<List<PostEntity>> callPost();
}
