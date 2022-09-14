import 'dart:convert';

import '../../domain/entitys/comments_entity.dart';

List<ModelComents> modelComentsFromJson(String str) => List<ModelComents>.from(
    json.decode(str).map((e) => ModelComents.fromJson(e)));

class ModelComents extends CommentsEntity {
  const ModelComents(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body})
      : super(
            idpost: postId,
            idComents: id,
            nameUser: name,
            emailComents: email,
            bodycoments: body);
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  factory ModelComents.fromJson(Map<String, dynamic> json) => ModelComents(
        postId: json["postId"],
        id: json["id"],
        name: json["name"],
        email: json["email"],
        body: json["body"],
      );
}