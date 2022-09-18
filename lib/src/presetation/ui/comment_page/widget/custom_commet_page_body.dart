
import '../imports.dart';

class CustomCommetPageBody extends StatelessWidget {
  const CustomCommetPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocBuilder<GetCommentsCubit, GetCommentsState>(
        builder: (context, state) {
          if (state is GetComentsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is GetComentsError) {
            return const Center(
              child: Text('Erro na API'),
            );
          }
          if (state is GetComentsSuccess) {
            final coments = state.coments;
            return coments.isEmpty
                ? const Center(
                    child: Text("Sem comentarios"),
                  )
                : ListView.builder(
                    itemCount: coments.length,
                    itemBuilder: (context, index) {
                      final CommentsEntite modelComents = coments[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(modelComents.idComents.toString()),
                        ),
                        title: Text(
                          modelComents.nameUser,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(modelComents.emailComents),
                      );
                    },
                  );
          }
          return Container();
        },
      ),
    );
  }
}
