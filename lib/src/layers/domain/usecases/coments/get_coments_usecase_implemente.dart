import '../../entitys/coments_entity.dart';
import '../../repositorys/coments/get_coments_domain_respository_abs.dart';
import 'get_coments_usecase_abs.dart';

class GetComentsUsecaseImplemente implements GetComentsUseCase {
  GetComentsRepository getComentsRepsioty;

  GetComentsUsecaseImplemente(this.getComentsRepsioty);
  @override
  Future<List<ComentsEntity>> callComents() async =>
      await getComentsRepsioty.callComents();
}
