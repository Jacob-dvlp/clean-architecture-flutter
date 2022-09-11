
import '../../entitys/coments_entity.dart';

abstract class GetComentesRepository{
  Future<List<ComentsEntity>> callComents();
}