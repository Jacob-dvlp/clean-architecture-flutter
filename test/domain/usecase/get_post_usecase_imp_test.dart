import 'package:clean_archecterter/src/layers/core/dependecies/posts/imports.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Deve retornar a classe onde implementa ',
    () async {
      GetPostDatasources getPostDatasources =
          GetPostRemoteDatasourcesImplement(HttpSerivicos());
      GetPostUsecase usecase = GetPostUsecaseImplemente(
          GetPostRepositoryDataImplemet(getPostDatasources));
      final result = await usecase.callPost();
      expect(result, result);
    },
  );
}

class HttpSerivicos implements HttpServices {
  @override
  Future<Response<T>> get<T>(String path) {
    throw UnimplementedError();
  }
}
