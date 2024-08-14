part of '../code_kit.dart';

class RefreshInterceptor extends dio.Interceptor {
  final RefreshApi refreshApi;
  final TokenSecureStorage tokenSecureStorage;
  final NetworkInfo networkInfo;
  final FlutterSecureStorage storage;

  RefreshInterceptor({
    required this.networkInfo,
    required this.storage,
    required this.refreshApi,
    required this.tokenSecureStorage,
  });

  @override
  void onRequest(
    dio.RequestOptions options,
    dio.RequestInterceptorHandler handler,
  ) async {
    if (!await networkInfo.isConnected) {
      return handler.reject(
        dio.DioException(
          message: StringConsts.noInternet,
          requestOptions: options,
        ),
      );
    }

    if (await storage.containsKey(key: StringConsts.acccessTokenKey)) {
      final TokenModel tokenModel = await tokenSecureStorage.getToken();
      options.headers[StringConsts.authotization] =
          '${StringConsts.bearer} ${tokenModel.access_token}';
    }

    return handler.next(options);
  }

  @override
  void onError(
    dio.DioException err,
    dio.ErrorInterceptorHandler handler,
  ) async {
    switch (err.response?.statusCode) {
      case 401:
        if (await storage.containsKey(key: StringConsts.refreshTokenKey) &&
            err.response != null) {
          await _refreshToken();

          return handler.resolve(err.response!);
        }
        break;
      default:
    }

    return handler.next(err);
  }

  Future<void> _refreshToken() async {
    final TokenModel tokenModel = await tokenSecureStorage.getToken();
    RefreshDTO refreshDTO = RefreshDTO(
      refresh_token: tokenModel.refresh_token,
    );

    try {
      final TokenDTO tokenModel = await refreshApi.refresh(refreshDTO);
      tokenSecureStorage.writeToken(
        tokenModel.access_token,
        tokenModel.refresh_token,
      );
    } catch (e) {
      await storage.deleteAll();
    }
  }
}
