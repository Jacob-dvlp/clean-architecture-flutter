import '../../domain/entitys/coments_entity.dart';
import '../../domain/repositorys/coments/get_coments_domain_respository_abs.dart';
import '../datasources/get_comments_datasource.dart';

class GetComentsRepositoryDataImplement implements GetComentsRepository {
  GetComentsDatasource getComentsDatasource;

  GetComentsRepositoryDataImplement(this.getComentsDatasource);

  @override
  Future<List<ComentsEntity>> callComents(int id) async {
    return await getComentsDatasource.callComents(id);
  }
}
