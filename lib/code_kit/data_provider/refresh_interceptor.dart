part of '../code_kit.dart';

class RefreshInterceptor extends dio.Interceptor {
  dio.Dio api =
      dio.Dio(dio.BaseOptions(baseUrl: "https://gallery.prod2.webant.ru"));

  final _storage = const FlutterSecureStorage();

  @override
  void onRequest(
      dio.RequestOptions options, dio.RequestInterceptorHandler handler) async {
    final accessToken = await _storage.read(key: "accessToken");
    options.headers['Authorization'] = 'Bearer ${accessToken}';
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
          if (await _storage.containsKey(key: "refreshToken")) {
            await _refreshToken();
            return handler.resolve(await _retry(err.requestOptions));
          }
          break;
        default:
      }
    }
    return handler.next(err);
  }

  Future<void> _refreshToken() async {
    final refreshToken = await _storage.read(key: "refreshToken");
    RefreshModel refreshModel = RefreshModel(
      refreshToken: refreshToken!,
    );

    final response = await api.post(
      "/refresh",
      data: refreshModel,
    );

    if (response.statusCode == 201) {
      final TokenModel tokenModel = response.data;
      await _storage.write(key: "accessToken", value: tokenModel.accessToken);
      await _storage.write(key: "refreshToken", value: tokenModel.refreshToken);
    } else {
      await _storage.deleteAll();
    }
  }

  Future<dio.Response<dynamic>> _retry(dio.RequestOptions requestOptions) {
    final options = dio.Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return api.request<dynamic>(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options,
    );
  }
}
