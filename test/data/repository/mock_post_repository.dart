import 'dart:io';

import 'package:clean_archecterter/src/layers/core/dependecies/posts/imports.dart';
import 'package:clean_archecterter/src/layers/data/model/post_model.dart';
import 'package:clean_archecterter/src/layers/domain/entitys/post_entity.dart';

class MockPostRepository implements GetPostDomainRepository {
  @override
  Future<List<PostEntity>> callPost() async {
    List<PostEntity> model = [];
    final file = File('test/mocks/json/mock_post.json');
    final response = await file.readAsString();
    final data = modelPostFromJson(response);
    model = data;
    return model;
  }
}
