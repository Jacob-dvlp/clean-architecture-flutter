import '../../../../core/domain/services/http_services.dart';
import '../../../domain/entitys/comments_entity.dart';
import '../../model/comments_model.dart';
import '../get_comments_datasource.dart';

class GetComentRemoteDatasourceImplement implements GetCommentsDatasource {
  final HttpServices httpServices;
  GetComentRemoteDatasourceImplement(this.httpServices);
  @override
  Future<List<CommentsEntity>> callComents(int id) async {
    List<ModelComents> data = [];
    final response = await httpServices.get("posts/$id/comments");
    final modelComents = modelComentsFromJson(response.body);
    data = modelComents;
    return data;
  }
}
