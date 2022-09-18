import 'dart:io';

import 'package:clean_archecterter/src/layers/data/model/comments_model.dart';
import 'package:clean_archecterter/src/layers/domain/usecases/comments/imports.dart';

class MockCommetsRepository implements GetCommentsRepository {
  @override
  Future<List<CommentsEntite>> callComents(int id) async {
    List<CommentsEntite> data = [];
    final file = File('test/mocks/json/mock_comments.json');
    final response = await file.readAsString();
    final model = modelComentsFromJson(response);
    data = model;
    return data;
  }
}
