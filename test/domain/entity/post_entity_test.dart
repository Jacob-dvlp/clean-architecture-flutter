import 'package:clean_archecterter/src/layers//domain/entites/post_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Test: Espero que a entidade n seja nula', () {
    PostEntity entity = PostEntity(
        userIdPost: 2,
        idPost: 2,
        titlePost: 'Unita',
        bodyPost: 'Vencedor das Eleições 2022');
    expect(entity, isNotNull);
  });
  test('Test: Espero que  o id seja 2 ', () {
    PostEntity entity = PostEntity(
        userIdPost: 2,
        idPost: 2,
        titlePost: 'Unita',
        bodyPost: 'Vencedor das Eleições 2022');
    expect(entity.idPost, 2);
  });
}
