import 'dart:io';

import 'package:clean_archecterter/src/layers/data/model/post_model.dart';
import 'package:clean_archecterter/src/layers/domain/usecases/posts/imports.dart';

class MockPostRepository implements GetPostDomainRepository {
  @override
  Future<List<PostEntity>> callPost() async {
    List<PostEntity> model = [];
    final file = File('test/mocks/json/mock_post.json');
    final response = await file.readAsString();
    final data = modelPostFromJson(response);
    return model = data;
  }
}
