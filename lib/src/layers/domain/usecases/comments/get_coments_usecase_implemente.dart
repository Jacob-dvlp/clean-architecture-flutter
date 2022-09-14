import 'imports.dart';

class GetComentsUsecaseImplemente implements GetCommentsUseCase {
  GetCommentsRepository getComentsRepsioty;

  GetComentsUsecaseImplemente(this.getComentsRepsioty);
  @override
  Future<List<CommentsEntity>> callComents(int id) async {
    return await getComentsRepsioty.callComents(id);
  }
}
