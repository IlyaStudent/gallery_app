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
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(
        currentUserApi: instance(),
        usersApi: instance(),
      ),
    )
    ..registerLazySingleton<SecureStorage>(
      () => SecureStorageImpl(
        storage: instance(),
      ),
    )
    ..registerLazySingleton<PhotosRepository>(
      () => PhotosRepositoryImpl(
        photosApi: instance(),
      ),
    )
    ..registerLazySingleton<FilesRepository>(
      () => FilesRepositoryImpl(
        filesApi: instance(),
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
    ..registerLazySingleton<PhotosApi>(
      () => PhotosApi(
        instance(),
      ),
    )
    ..registerLazySingleton<FilesApi>(
      () => FilesApi(
        instance(),
      ),
    )
    ..registerLazySingleton<UsersApi>(
      () => UsersApi(
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
      () => dio.Dio(
        dio.BaseOptions(
          baseUrl: StringConsts.apiLink,
        ),
      ),
    )
    ..registerLazySingleton(
      () => InternetConnectionChecker(),
    )
    ..registerLazySingleton(
      () => _storage,
    )
    ..registerLazySingleton<dio.Interceptor>(
      () => RefreshInterceptor(
        storage: instance(),
        refreshApi: instance(),
        tokenSecureStorage: instance(),
        networkInfo: instance(),
      ),
    );

  instance<dio.Dio>().interceptors.add(instance());
}
