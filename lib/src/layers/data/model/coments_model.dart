import 'dart:convert';

import '../../domain/entitys/coments_entity.dart';

List<ModelComents> modelComentsFromJson(String str) => List<ModelComents>.from(
      json.decode(str).map(
            (e) => ModelComents.fromJson(e),
          ),
    );

class ModelComents extends ComentsEntity {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

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

  factory ModelComents.fromJson(Map<String, dynamic> json) => ModelComents(
      postId: json["postId"],
      id: json["id"],
      name: json["id"],
      email: json["id"],
      body: json["id"]);
}
