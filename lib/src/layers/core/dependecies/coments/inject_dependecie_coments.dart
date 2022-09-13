import '../../../../presetation/controllers/cubit_coment/cubit/get_coments_cubit.dart';
import 'imports.dart';

final getIt = GetIt.instance;

void initInjectComets() {
  //http
  getIt.get<HttpServices>();

  getIt.registerFactory(() => GetComentsCubit(getComentsUseCase: getIt.call()));

  getIt.registerLazySingleton<GetComentsDatasource>(
    () => GetComentRemoteDatasourceImplement(getIt()),
  );


  getIt.registerLazySingleton<GetComentsRepository>(
    () => GetComentsRepositoryDataImplement(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<GetComentsUseCase>(
    () => GetComentsUsecaseImplemente(
      getIt(),
    ),
  );
}
