part of '../code_kit.dart';

class _RefreshApi implements RefreshApi {
  _RefreshApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://gallery.prod2.webant.ru/';
  }

  final dio.Dio _dio;

  String? baseUrl;

  @override
  Future<TokenDTO> refresh(RefreshDTO refreshDTO) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(refreshDTO.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<TokenDTO>(dio.Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
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
