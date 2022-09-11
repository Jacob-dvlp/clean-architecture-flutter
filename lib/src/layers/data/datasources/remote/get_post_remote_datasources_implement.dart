import 'package:http/http.dart';

import '../../../../core/domain/services/http_services.dart';
import '../../../domain/entitys/post_entity.dart';
import '../../model/post_dto.dart';
import '../get_post_datasources.dart';

class GetPostRemoteDatasourcesImplement implements GetPostDatasources {
  final HttpServices httpServices;

  GetPostRemoteDatasourcesImplement(this.httpServices);
  @override
  Future<List<PostEntity>> callPost() async {
    List<PostEntity> data = [];
    Response response = await httpServices.get('posts');
    List<ModelPostDto> model = modelPostDtoFromJson(response.body);
    data = model;
    return data;
  }
}
