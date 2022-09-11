import '../../entitys/coments_entity.dart';
import 'get_coments_usecase_abs.dart';

class GetComentsUsecaseImplemente implements GetComentsUseCase {
  final GetComentsRepsioty _getComentsRepsioty;
  @override
  Future<List<ComentsEntity>> call() async => await _getComentsRepsioty.call();
}
