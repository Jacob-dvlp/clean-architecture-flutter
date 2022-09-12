import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layers/domain/entitys/post_entity.dart';
import '../../../controllers/cubit_posts/get_post_cubit.dart';

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
                      return ListTile(
                        leading: CircleAvatar(
                            child: Text(postEntity.idPost!.toString())),
                        title: Text(
                          postEntity.titlePost!.toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(postEntity.bodyPost!),
                      );
                    });
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
