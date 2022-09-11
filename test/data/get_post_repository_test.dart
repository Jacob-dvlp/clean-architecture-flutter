import 'dart:developer';

import 'package:clean_archecterter/src/layers/core/inject/imports.dart';
import 'package:clean_archecterter/src/layers/domain/entitys/post_entity.dart';
import 'package:dio/src/response.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetPostDatasources getPostDatasources =
      GetPostRemoteDatasourcesImplement(HttpSerivicos());
  GetPostDomainRepository repository =
      GetPostRepositoryDataImplemet(getPostDatasources);
  test("Devolva um post independente do id", () async {
    final result = await repository.callPost();
    late PostEntity postEntity;
    result.fold((l) => log("Erro"), (r) => postEntity = postEntity);
    expect(result, postEntity);
  });
}

class HttpSerivicos implements HttpServices {
  @override
  Future<Response<T>> get<T>(String path) {
    throw UnimplementedError();
  }
}
