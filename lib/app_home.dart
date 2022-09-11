import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/layers/core/dependecies/posts/inject_dependence_posts.dart'
    as dependecieposts;
import 'src/presetation/controllers/cubit_posts/get_post_cubit.dart';
import 'src/presetation/ui/home/home_page.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => dependecieposts.getIt<GetPostCubit>())
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
