import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../layers/domain/entitys/coments_entity.dart';
import '../../../controllers/cubit_coment/cubit/get_coments_cubit.dart';

class CustomHomePageBody extends StatelessWidget {
  const CustomHomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<GetComentsCubit, GetComentsState>(
        builder: (context, state) {
          if (state is GetComentsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GetComentsError) {
            return const Text("Erro na api");
          }
          if (state is GetComentsSuccess) {
            final post = state.coments;
            return post.isEmpty
                ? const Text("Lista está vazio")
                : ListView.builder(
                    itemCount: post.length,
                    itemBuilder: (context, index) {
                      final ComentsEntity postEntity = post[index];
                      return ListTile(
                        leading: CircleAvatar(
                            child: Text(postEntity.idComents.toString())),
                        title: Text(
                          postEntity.bodycoments.toUpperCase(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(postEntity.emailComents),
                      );
                    });
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
