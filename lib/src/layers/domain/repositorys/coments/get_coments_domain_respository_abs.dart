import '../../entitys/coments_entity.dart';

abstract class GetComentsRepository {
  Future<List<ComentsEntity>> callComents(int id);
}
