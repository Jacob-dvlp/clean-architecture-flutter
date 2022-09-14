
import 'imports.dart';

final getIt = GetIt.instance;

void initInjectComets() {
  //http
  getIt.get<HttpServices>();

  getIt.registerFactory(() => GetCommentsCubit(getComentsUseCase: getIt.call()));

  getIt.registerLazySingleton<GetCommentsDatasource>(
    () => GetComentRemoteDatasourceImplement(getIt()),
  );


  getIt.registerLazySingleton<GetCommentsRepository>(
    () => GetComentsRepositoryDataImplement(
      getIt(),
    ),
  );

  getIt.registerLazySingleton<GetCommentsUseCase>(
    () => GetComentsUsecaseImplemente(
      getIt(),
    ),
  );
}
