import '../../../../core/domain/services/http_services.dart';
import '../../../domain/usecases/posts/imports.dart';
import '../../model/post_model.dart';
import '../get_datasources.dart';

class GetPostRemoteDatasourcesImplement implements GetPostDatasources {
  final HttpServices httpServices;
  List<PostEntity> data = [];

  GetPostRemoteDatasourcesImplement(this.httpServices);
  @override
  Future<Either<ErrorCustomInterfaceFailure, List<PostEntity>>>
      callPost() async {
    final response = await httpServices.get('posts');
    if (response.statusCode == 200) {
      List<ModelPost> model = modelPostFromJson(response.body);
      data = model;
    }
    return data;
  }
}
