part of '../autentithication_part.dart';

class AuthenticationInterceptor extends dio.Interceptor {
  final NetworkInfo networkInfo;

  AuthenticationInterceptor({required this.networkInfo});

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

  @override
  void onError(dio.DioException err, dio.ErrorInterceptorHandler handler) {
    if (err.requestOptions.path == StringConsts.regLink) {
      final ErrorDTO errorDTO = ErrorDTO.fromJson(err.response?.data);
      handler.reject(
        dio.DioException(
          requestOptions: err.requestOptions,
          message: errorDTO.description,
        ),
      );
      return;
    }
    handler.reject(
      dio.DioException(
        requestOptions: err.requestOptions,
        message: StringConsts.invalidLogin,
      ),
    );
  }
}
