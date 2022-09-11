import 'package:clean_archecterter/src/layers//domain/entitys/post_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade n seja nula', () {
    PostEntity entity = PostEntity(
        userIdPost: 2, idPost: 2, titlePost: 'Unita', bodyPost: 'Vencedor das Eleições 2022');
    expect(entity, isNotNull);
  });
  test('Espero que  o id seja 2 ', () {
    PostEntity entity = PostEntity(
        userIdPost: 2, idPost: 2, titlePost: 'Unita', bodyPost: 'Vencedor das Eleições 2022');
    expect(entity.idPost, 2);
  });
}
