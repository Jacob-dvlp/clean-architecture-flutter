import '../../domain/entitys/comments_entity.dart';
import '../../domain/repositorys/comments/get_coments_domain_respository_abs.dart';
import '../datasources/get_comments_datasource.dart';

class GetComentsRepositoryDataImplement implements GetCommentsRepository {
  GetCommentsDatasource getComentsDatasource;

  GetComentsRepositoryDataImplement(this.getComentsDatasource);

  @override
  Future<List<CommentsEntity>> callComents(int id) async {
    return await getComentsDatasource.callComents(id);
  }
}
