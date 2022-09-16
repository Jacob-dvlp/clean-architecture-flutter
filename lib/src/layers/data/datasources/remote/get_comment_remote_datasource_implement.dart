import '../../../../core/domain/services/http_services.dart';
import '../../../domain/entitys/comments_entity.dart';
import '../../model/comments_model.dart';
import '../get_comments_datasource.dart';

class GetComentRemoteDatasourceImplement implements GetCommentsDatasource {
  List<ModelComents> data = [];
  final HttpServices httpServices;
  GetComentRemoteDatasourceImplement(this.httpServices);
  @override
  Future<List<CommentsEntity>> callComents(int id) async {
    final response = await httpServices.get("posts/$id/comments");
    if (response.statusCode == 200) {
      final modelComents = modelComentsFromJson(response.body);
      data = modelComents;
    }
    return data;
  }
}
