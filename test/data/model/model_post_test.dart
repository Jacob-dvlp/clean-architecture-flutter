import 'dart:convert';

import 'package:clean_archecterter/src/layers/data/model/post_model.dart';
import 'package:clean_archecterter/src/layers/domain/entites/post_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mocks/mock_posts.dart';

void main() {
  final model = ModelPost(
      userId: 2,
      id: 4,
      title:
          "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      body:
          "quia et suscipitsuscipit recusadae consequuntur expedita et cumreprehenderit molestiae ut ut quas totannostrum rerum est autem sunt rem eveniet architecto");

  group(
    'Test:',
    () {
      test(
        'Comparar  se  ModelPost é uma subClasse da entidade PostEntity',
        () {
          expect(model, isA<PostEntity>());
        },
      );
      test(
        'Retornar um model valido ',
        () {
          final Map<String, dynamic> map = json.decode(mockPost);
          final result = ModelPost.fromJson(map);
          expect(result, isA<ModelPost>());
        },
      );
    },
  );
}
