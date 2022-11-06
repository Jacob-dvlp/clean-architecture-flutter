import 'package:clean_archecterter/src/layers/error/error_status.dart';

import '../../../../core/domain/services/http_services.dart';
import '../../../domain/usecases/posts/imports.dart';
import '../../model/post_model.dart';
import '../get_datasources.dart';

class GetPostRemoteDatasourcesImplement implements GetPostDatasources {
  final HttpServices httpServices;
  List<PostEntity> data = [];

  GetPostRemoteDatasourcesImplement(this.httpServices);
  @override
  Future<List<PostEntity>>
      callPost() async {
    final response = await httpServices.get('posts');
   
      List<ModelPost> model = modelPostFromJson(response.body);
      data = model;
    
    return data;
  }
}
