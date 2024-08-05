part of '../code_kit.dart';

class RefreshInterceptor extends dio.Interceptor {
  final RefreshApi refreshApi;
  final TokenSecureStorage tokenSecureStorage;

  final FlutterSecureStorage storage;

  RefreshInterceptor({
    required this.storage,
    required this.refreshApi,
    required this.tokenSecureStorage,
  });

  @override
  void onRequest(
    dio.RequestOptions options,
    dio.RequestInterceptorHandler handler,
  ) async {
    final TokenDTO tokenDTO = await tokenSecureStorage.getToken();
    options.headers[StringConsts.authotization] =
        '${StringConsts.bearer} ${tokenDTO.access_token}';
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
    final refreshToken = await storage.read(
      key: StringConsts.refreshTokenKey,
    );
    RefreshDTO refreshDTO = RefreshDTO(
      refresh_token: refreshToken!,
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
