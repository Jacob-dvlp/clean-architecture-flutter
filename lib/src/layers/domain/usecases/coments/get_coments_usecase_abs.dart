import '../../entitys/coments_entity.dart';

abstract class GetComentsUseCase {
  Future<List<ComentsEntity>> callComents(int id);
}
