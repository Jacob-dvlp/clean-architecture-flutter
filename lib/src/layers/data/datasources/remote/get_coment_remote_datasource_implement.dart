import '../../../../app/constants/api/constants_parames.dart';
import '../../../../core/domain/services/http_services.dart';
import '../../../domain/entitys/coments_entity.dart';
import '../../model/coments_model.dart';
import '../get_comments_datasource.dart';

class GetComentRemoteDatasourceImplement implements GetComentsDatasource {
  final HttpServices httpServices;
  GetComentRemoteDatasourceImplement(this.httpServices);
  @override
  Future<List<ComentsEntity>> callComents() async {
    List<ModelComents> data = [];
    final response = await httpServices.get(coments);
    print(response.body);
    List<ModelComents> modelComents = modelComentsFromJson(response.body);
    data = modelComents;
    return data;
  }
}
