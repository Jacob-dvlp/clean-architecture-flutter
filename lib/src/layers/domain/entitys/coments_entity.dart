import 'package:equatable/equatable.dart';

class ComentsEntity extends Equatable {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String bodycoments;

  const ComentsEntity(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.bodycoments});

  @override
  List<Object?> get props => [props];
}
