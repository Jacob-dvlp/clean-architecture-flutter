import 'imports.dart';

class CommentPage extends StatelessWidget {
  final PostEntity postEntity;
  const CommentPage({Key? key, required this.postEntity}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: CircleAvatar(child: Text(postEntity.idPost.toString())),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: const CustomCommetPageBody());
  }
}
