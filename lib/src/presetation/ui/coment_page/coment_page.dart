import 'package:clean_archecterter/src/layers/domain/entitys/coments_entity.dart';
import 'package:clean_archecterter/src/layers/domain/entitys/post_entity.dart';
import 'package:clean_archecterter/src/presetation/controllers/cubit_coment/cubit/get_coments_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComentPage extends StatelessWidget {
  final PostEntity postEntity;
  const ComentPage({Key? key, required this.postEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postEntity.idPost.toString()),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SizedBox(
        child: BlocBuilder<GetComentsCubit, GetComentsState>(
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
                        final ComentsEntity modelComents = coments[index];
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
      ),
    );
  }
}
