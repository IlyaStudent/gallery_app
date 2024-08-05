part of '../code_kit.dart';

class RefreshInterceptor extends dio.Interceptor {
  final RefreshApi refreshApi;

  final FlutterSecureStorage storage;

  RefreshInterceptor({required this.storage, required this.refreshApi});

  @override
  void onRequest(
      dio.RequestOptions options, dio.RequestInterceptorHandler handler) async {
    final accessToken = await storage.read(key: "accessToken");
    options.headers['Authorization'] = 'Bearer $accessToken';
    return handler.next(options);
  }

  @override
  void onResponse(
      dio.Response response, dio.ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  void onError(
      dio.DioException err, dio.ErrorInterceptorHandler handler) async {
    if (err.response != null) {
      switch (err.response?.statusCode) {
        case 401:
          if (await storage.containsKey(key: "refreshToken") &&
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
    final refreshToken = await storage.read(key: "refreshToken");
    RefreshDTO refreshDTO = RefreshDTO(
      refreshToken: refreshToken!,
    );

    try {
      final TokenDTO tokenModel = await refreshApi.refresh(refreshDTO);
      await storage.write(key: "accessToken", value: tokenModel.accessToken);
      await storage.write(key: "refreshToken", value: tokenModel.refreshToken);
    } catch (e) {
      await storage.deleteAll();
    }
  }
}
