part of '../code_kit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC & Cubit

  sl.registerFactory(
    () => RegistrationBloc(
      authentithicationRepository: sl<AuthentithicationRepository>(),
    ),
  );
  sl.registerFactory(
    () => AuthorizationBloc(
      authentithicationRepository: sl<AuthentithicationRepository>(),
    ),
  );

  // Repository
  sl.registerLazySingleton<AuthentithicationRepository>(
    () => AuthorizationRepositoryImpl(
      networkInfo: sl(),
      apiAuthorization: sl(),
    ),
  );
  sl.registerLazySingleton<ApiAutentithication>(
    () => ApiAutentithication(
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
}
