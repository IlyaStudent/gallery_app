part of '../code_kit.dart';

class InternetConnectionInterceptor extends dio.Interceptor {
  final NetworkInfo networkInfo;

  InternetConnectionInterceptor({
    required this.networkInfo,
  });

  @override
  void onRequest(
      dio.RequestOptions options, dio.RequestInterceptorHandler handler) async {
    if (await networkInfo.isConnected) {
      super.onRequest(options, handler);
    } else {
      handler.reject(
        dio.DioException(
          message: StringConsts.noInternet,
          requestOptions: options,
        ),
      );
    }
  }
}
