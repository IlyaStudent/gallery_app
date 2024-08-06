part of '../code_kit.dart';

final instance = GetIt.instance;
const FlutterSecureStorage _storage = FlutterSecureStorage();

Future<void> init() async {
  // Repository
  instance
    ..registerLazySingleton<AuthentithicationRepository>(
      () => AuthentithicationRepositoryImpl(
        networkInfo: instance(),
        apiAuthorization: instance(),
      ),
    )
    ..registerLazySingleton<OnBoardinRepository>(
      () => OnBoardingRepositoryImpl(
        currentUserApi: instance(),
      ),
    )
    ..registerLazySingleton<TokenSecureStorage>(
      () => TokenSecureStorageImpl(
        storage: instance(),
      ),
    )

    // api
    ..registerLazySingleton<AutentithicationApi>(
      () => AutentithicationApi(
        instance(),
      ),
    )
    ..registerLazySingleton<RefreshApi>(
      () => RefreshApi(
        instance(),
      ),
    )
    ..registerLazySingleton<CurrentUserApi>(
      () => CurrentUserApi(
        instance(),
      ),
    )

    // Core
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        instance(),
      ),
    )

    // External
    ..registerLazySingleton(
      () => dio.Dio(),
    )
    ..registerLazySingleton(
      () => InternetConnectionChecker(),
    )
    ..registerLazySingleton(
      () => _storage,
    )
    ..registerLazySingleton(
      () => RefreshInterceptor(
        storage: instance(),
        refreshApi: instance(),
        tokenSecureStorage: instance(),
      ),
    );
}
