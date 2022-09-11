
import 'dart:convert';

import 'package:clean_archecterter/src/layers/domain/entitys/post_entity.dart';

List<ModelPostDto> modelPostDtoFromJson(String str) => List<ModelPostDto>.from(
    json.decode(str).map((x) => ModelPostDto.fromJson(x)));

String modelPostDtoToJson(List<ModelPostDto> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelPostDto extends PostEntity {
  ModelPostDto({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  }) : super(bodyPost: body, idPost: id, titlePost: title, userIdPost: userId);

  final int userId;
  final int id;
  final String title;
  final String body;

  factory ModelPostDto.fromJson(Map<String, dynamic> json) => ModelPostDto(
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
