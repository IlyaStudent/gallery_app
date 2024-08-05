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
    ..registerLazySingleton<ApiAutentithication>(
      () => ApiAutentithication(
        instance(),
      ),
    )
    ..registerLazySingleton<RefreshApi>(
      () => RefreshApi(
        instance(),
      ),
    )
    ..registerLazySingleton<TokenSecureStorage>(
      () => TokenSecureStorageImpl(
        storage: instance(),
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
    );
}
