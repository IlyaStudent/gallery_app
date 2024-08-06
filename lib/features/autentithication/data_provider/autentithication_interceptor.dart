part of '../autentithication_part.dart';

class AuthenticationInterceptor extends dio.Interceptor {
  AuthenticationInterceptor();

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
