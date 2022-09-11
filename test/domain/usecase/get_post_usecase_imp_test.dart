import 'dart:developer';

import 'package:clean_archecterter/src/core/domain/services/http_services.dart';
import 'package:clean_archecterter/src/layers//domain/entitys/post_entity.dart';
import 'package:clean_archecterter/src/layers/core/imports.dart';
import 'package:clean_archecterter/src/layers/data/datasources/remote/get_post_remote_datasources_implement.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Deve retornar a classe onde implementa ',
    () async {
      GetPostDatasources getPostDatasources = GetPostDataLocalSourceImplemente(
          GetPostRemoteDatasourcesImplement(HttpSerivicos()));
      GetPostUsecase usecase = GetPostUsecaseImplemente(
          GetPostRepositoryDataImplemet(getPostDatasources));
      final result = await usecase.callPost();
      late PostEntity postEntity;
      result.fold((l) => log("Erro"), (r) => postEntity = postEntity);
      expect(postEntity, postEntity);
    },
  );
}

class HttpSerivicos implements HttpServices {
  @override
  Future<Response<T>> get<T>(String path) {
    throw UnimplementedError();
  }
}
