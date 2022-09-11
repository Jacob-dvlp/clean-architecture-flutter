import 'imports.dart';



final getIt = GetIt.instance;

initInjectComets() {
  //http
  getIt.registerLazySingleton<HttpServices>(
    () => HttpServicesImplement(),
  );
  getIt.resetLazySingleton<GetComentsDatasource>(
    instance: GetComentRemoteDatasourceImplement(
      httpServices: getIt.call(),
    ),
  );
  getIt.registerLazySingleton<GetComentesRepository>(
    () => GetComentsRepositoryDataImplement(
      getComentsDatasource: getIt.call(),
    ),
  );
  getIt.registerLazySingleton<GetComentsUseCase>(
    () => GetComentsUsecaseImplemente(
      getComentsRepsioty: getIt.call(),
    ),
  );
}
