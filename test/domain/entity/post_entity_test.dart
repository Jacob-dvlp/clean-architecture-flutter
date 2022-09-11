import 'package:clean_archecterter/src/layers//domain/entitys/post_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade n seja nula', () {
    PostEntity entity = PostEntity(
        userId: 2, id: 2, title: 'Unita', body: 'Vencedor das Eleições 2022');
    expect(entity, isNotNull);
  });
  test('Espero que  o id seja 2 ', () {
    PostEntity entity = PostEntity(
        userId: 2, id: 2, title: 'Unita', body: 'Vencedor das Eleições 2022');
    expect(entity.id, 2);
  });
}
