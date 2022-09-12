import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/layers/core/dependecies/coments/inject_dependecie_coments.dart'
    as dependeciecoments;
import 'src/presetation/controllers/cubit_coment/cubit/get_coments_cubit.dart';
import 'src/presetation/ui/home/home_page.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      //  BlocProvider(create: (_) => dependecieposts.getIt<GetPostCubit>()),
        BlocProvider(create: (_) => dependeciecoments.getIt<GetComentsCubit>()..getComentsUseCase)
      ],
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
