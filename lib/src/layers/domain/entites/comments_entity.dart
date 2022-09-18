class CommentsEntite {
  final int idpost;
  final int idComents;
  final String nameUser;
  final String emailComents;
  final String bodycoments;

  const CommentsEntite(
      {required this.idpost,
      required this.idComents,
      required this.nameUser,
      required this.emailComents,
      required this.bodycoments});
}
