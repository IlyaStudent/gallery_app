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
      handler.reject(
        dio.DioException(
          message: StringConsts.noInternet,
          requestOptions: options,
        ),
      );
    }

    if (await storage.containsKey(key: StringConsts.refreshTokenKey)) {
      final TokenModel tokenModel = await tokenSecureStorage.getToken();
      options.headers[StringConsts.authotization] =
          '${StringConsts.bearer} ${tokenModel.access_token}';
    }

    return handler.next(options);
  }

  @override
  void onResponse(
    dio.Response response,
    dio.ResponseInterceptorHandler handler,
  ) {
    return handler.next(response);
  }

  @override
  void onError(
    dio.DioException err,
    dio.ErrorInterceptorHandler handler,
  ) async {
    if (err.requestOptions.path == StringConsts.regLink) {
      final ErrorDTO errorDTO = ErrorDTO.fromJson(err.response?.data);
      handler.reject(
        dio.DioException(
          requestOptions: err.requestOptions,
          message: errorDTO.description,
        ),
      );
      return;
    } else if (err.requestOptions.path == StringConsts.loginLink) {
      handler.reject(
        dio.DioException(
          requestOptions: err.requestOptions,
          message: StringConsts.invalidLogin,
        ),
      );
    }

    if (err.response != null) {
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
