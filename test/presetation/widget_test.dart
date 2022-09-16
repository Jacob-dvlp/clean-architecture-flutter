import 'package:clean_archecterter/src/layers/core/dependecies/coments/imports.dart';
import 'package:clean_archecterter/src/layers/core/dependecies/posts/imports.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/repository/mock_commets_repository.dart';
import '../data/repository/mock_post_repository.dart';

void main() {
  group(
    'Test:',
    () {
      test(
        'Deve retorna  statusCode 200 Ok caso  a resposta for sucesso Posts ',
        () async {
          final response = GetPostUsecaseImplemente(MockPostRepository());
          final result = await response.callPost();
          expect(result.length, 3);
        },
      );
      test(
        ' Deve retorna  statusCode 200 Ok caso  a resposta for sucesso Comentarios',
        () async {
          int id = 5;
          final response = GetComentsUsecaseImplemente(MockCommetsRepository());
          final result = await response.callComents(id);
          expect(result.length, 5);
        },
      );
    },
  );
}
