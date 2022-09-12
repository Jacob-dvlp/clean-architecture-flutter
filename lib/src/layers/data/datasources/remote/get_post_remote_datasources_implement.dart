import '../../../../core/domain/services/http_services.dart';
import '../../../domain/entitys/post_entity.dart';
import '../../model/post_model.dart';
import '../get_datasources.dart';

class GetPostRemoteDatasourcesImplement implements GetPostDatasources {
  final HttpServices httpServices;

  GetPostRemoteDatasourcesImplement(this.httpServices);
  @override
  Future<List<PostEntity>> callPost() async {
    List<PostEntity> data = [];
    final response = await httpServices.get('posts');
    List<ModelPost> model = modelPostFromJson(response.body);
    data = model;
    return data;
  }

 
}
