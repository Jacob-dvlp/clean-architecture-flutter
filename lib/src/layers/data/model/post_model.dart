import 'dart:convert';

import '../../domain/entites/post_entity.dart';

List<ModelPost> modelPostFromJson(String str) =>
    List<ModelPost>.from(json.decode(str).map((x) => ModelPost.fromJson(x)));

class ModelPost extends PostEntity {
  ModelPost({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  }) : super(bodyPost: body, idPost: id, titlePost: title, userIdPost: userId);

  int userId;
  int id;
  String title;
  String body;

  factory ModelPost.fromJson(Map<String, dynamic> json) => ModelPost(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
