import '../../domain/entitys/coments_entity.dart';

abstract class GetComentsDatasource {
  Future<List<ComentsEntity>> callComents();
}
