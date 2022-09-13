import 'package:clean_archecterter/src/layers/core/dependecies/posts/imports.dart';
import 'package:clean_archecterter/src/presetation/ui/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/layers/core/dependecies/coments/inject_dependecie_coments.dart'
    as dependeciecoments;
import 'src/layers/core/dependecies/posts/inject_dependence_posts.dart'
    as dependecieposts;
import 'src/presetation/controllers/cubit_coment/cubit/get_coments_cubit.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => dependecieposts.getIt<GetPostCubit>()),
        BlocProvider(create: (_) => dependeciecoments.getIt<GetComentsCubit>())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
