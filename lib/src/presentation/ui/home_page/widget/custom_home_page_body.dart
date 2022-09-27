import '../imports.dart';
class CustomHomePageBody extends StatelessWidget {
  const CustomHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<GetPostCubit, GetPostState>(
        builder: (context, state) {
          if (state is GetPostLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GetPostErros) {
            return const Text("Erro na api");
          }
          if (state is GetPostSuccess) {
            final post = state.postEntity;
            return post.isEmpty
                ? const Text("Lista está vazio")
                : ListView.builder(
                    itemCount: post.length,
                    itemBuilder: (context, index) {
                      final PostEntity postEntity = post[index];
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<GetCommentsCubit>()
                              .getComents(value: postEntity.idPost);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CommentPage(
                                        postEntity: postEntity,
                                      )));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                              child: Text(postEntity.idPost!.toString())),
                          title: Text(
                            postEntity.titlePost!.toUpperCase(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(postEntity.bodyPost!),
                        ),
                      );
                    });
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
