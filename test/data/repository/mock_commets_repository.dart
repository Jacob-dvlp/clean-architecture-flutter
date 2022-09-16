import 'dart:io';

import 'package:clean_archecterter/src/layers/core/dependecies/coments/imports.dart';
import 'package:clean_archecterter/src/layers/data/model/comments_model.dart';
import 'package:clean_archecterter/src/layers/domain/entitys/comments_entity.dart';

class MockCommetsRepository implements GetCommentsRepository {
  @override
  Future<List<CommentsEntity>> callComents(int id) async {
    List<CommentsEntity> data = [];
    final file = File('test/mocks/json/mock_comments.json');
    final response = await file.readAsString();
    final model = modelComentsFromJson(response);
    data = model;
    return data;
  }
}
