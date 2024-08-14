part of '../code_kit.dart';

@RestApi()
abstract class RefreshApi {
  factory RefreshApi(dio.Dio dio, {String baseUrl}) = _RefreshApi;

  @POST(StringConsts.refreshLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<TokenDTO> refresh(@Body() RefreshDTO refreshDTO);
}
