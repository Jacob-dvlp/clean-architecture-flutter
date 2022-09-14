import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/layers/core/dependecies/coments/inject_dependecie_comments.dart'
    as dependeciecoments;
import 'src/layers/core/dependecies/posts/imports.dart';
import 'src/layers/core/dependecies/posts/inject_dependence_posts.dart'
    as dependecieposts;
import 'src/presetation/controllers/cubit_comment/cubit/get_comments_cubit.dart';
import 'src/presetation/ui/home_page/home_page.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => dependecieposts.getIt<GetPostCubit>()),
        BlocProvider(create: (_) => dependeciecoments.getIt<GetCommentsCubit>())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
