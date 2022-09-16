import 'imports.dart';


final getIt = GetIt.instance;

void initInjectPost() {
  getIt.registerLazySingleton<HttpServices>(
    () => HttpServicesImplement(),
  );
  getIt.registerFactory(() => GetPostCubit(
        getPostUsecase: getIt.call(),
      ));

  getIt.registerLazySingleton<GetPostDatasources>(
    () => GetPostRemoteDatasourcesImplement(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<GetPostDomainRepository>(
    () => GetPostRepositoryDataImplemet(
      getIt(),
    ),
  );
  getIt.registerLazySingleton<GetPostUsecase>(
    () => GetPostUsecaseImplemente(
      getIt(),
    ),
  );
}
