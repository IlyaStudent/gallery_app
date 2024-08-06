part of '../autentithication_part.dart';

class _AutentithicationApi implements AutentithicationApi {
  _AutentithicationApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= StringConsts.apiLink;
  }

  final dio.Dio _dio;

  String? baseUrl;

  @override
  Future<void> registerUser(RegistrationDTO user) async {
    _dio.interceptors.addAll(
      [
        InternetConnectionInterceptor(
          networkInfo: instance(),
        ),
        AuthenticationInterceptor(),
      ],
    );
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      StringConsts.accept: StringConsts.applicationIdJson,
      StringConsts.contentType: StringConsts.applicationIdJson,
    };

    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(user.toJson());
    _data.remove(StringConsts.confirmPassword);
    _data[StringConsts.birthday] = "${DateTime(
      int.parse(_data[StringConsts.birthday].split(".")[2]),
      int.parse(_data[StringConsts.birthday].split(".")[1]),
      int.parse(_data[StringConsts.birthday].split(".")[0]),
    ).toIso8601String()}Z";
    await _dio.fetch<void>(_setStreamType<void>(dio.Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: StringConsts.applicationIdJson,
    )
        .compose(
          _dio.options,
          StringConsts.regLink,
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<TokenDTO> loginUser(LoginDTO loginModel) async {
    _dio.interceptors.addAll(
      [
        InternetConnectionInterceptor(
          networkInfo: instance(),
        ),
        AuthenticationInterceptor(),
      ],
    );
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(loginModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenDTO>(dio.Options(
      method: 'POST',
      extra: _extra,
    )
            .compose(
              _dio.options,
              StringConsts.loginLink,
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = TokenDTO.fromJson(_result.data!);
    return value;
  }

  dio.RequestOptions _setStreamType<T>(dio.RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == dio.ResponseType.bytes ||
            requestOptions.responseType == dio.ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = dio.ResponseType.plain;
      } else {
        requestOptions.responseType = dio.ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
