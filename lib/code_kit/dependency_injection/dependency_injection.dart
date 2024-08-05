part of '../code_kit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Repository
  sl.registerLazySingleton<AuthentithicationRepository>(
    () => AuthentithicationRepositoryImpl(
      networkInfo: sl(),
      apiAuthorization: sl(),
    ),
  );
  sl.registerLazySingleton<ApiAutentithication>(
    () => ApiAutentithication(
      sl(),
    ),
  );
  sl.registerLazySingleton<RefreshApi>(
    () => RefreshApi(
      sl(),
    ),
  );

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(
    () => dio.Dio(),
  );
  sl.registerLazySingleton(
    () => InternetConnectionChecker(),
  );
  sl.registerLazySingleton(
    () => const FlutterSecureStorage(),
  );
}
