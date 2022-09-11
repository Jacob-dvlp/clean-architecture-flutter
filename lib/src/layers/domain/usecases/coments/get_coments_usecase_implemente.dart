import '../../entitys/coments_entity.dart';
import '../../repositorys/coments/get_coments_domain_respository_abs.dart';
import 'get_coments_usecase_abs.dart';

class GetComentsUsecaseImplemente implements GetComentsUseCase {
  final GetComentesRepository getComentsRepsioty;

  GetComentsUsecaseImplemente({required this.getComentsRepsioty});
  @override
  Future<List<ComentsEntity>> call() async =>
      await getComentsRepsioty.callComents();
}
