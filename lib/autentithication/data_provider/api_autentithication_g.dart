// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_autentithication.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiAutentithication implements ApiAutentithication {
  _ApiAutentithication(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://gallery.prod2.webant.ru/';
  }

  final dio.Dio _dio;

  String? baseUrl;

  @override
  Future<void> registerUser(RegModel user) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'accept': 'application/ld+json',
      r'Content-Type': 'application/ld+json',
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(user.toJson());
    _data.remove("confirmPassword");
    _data["birthday"] = "${DateTime(
      int.parse(_data["birthday"].split(".")[2]),
      int.parse(_data["birthday"].split(".")[1]),
      int.parse(_data["birthday"].split(".")[0]),
    ).toIso8601String()}Z";
    await _dio.fetch<void>(_setStreamType<void>(dio.Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/ld+json',
    )
        .compose(
          _dio.options,
          '/users',
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
  Future<TokenModel> loginUser(LoginModel loginModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(loginModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenModel>(dio.Options(
      method: 'POST',
      // headers: _headers,
      extra: _extra,
      // contentType: 'application/ld+json',
    )
            .compose(
              _dio.options,
              '/token',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = TokenModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<TokenModel> refresh(RefreshModel refreshModel) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(refreshModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenModel>(dio.Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/ld+json',
    )
            .compose(
              _dio.options,
              '/token',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = TokenModel.fromJson(_result.data!);
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
