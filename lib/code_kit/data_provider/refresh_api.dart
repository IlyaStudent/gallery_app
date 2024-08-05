part of '../code_kit.dart';

@RestApi(baseUrl: StringConsts.apiLink)
abstract class RefreshApi {
  factory RefreshApi(dio.Dio dio, {String baseUrl}) = _RefreshApi;

  @GET(StringConsts.refreshLink)
  Future<TokenDTO> refresh(@Body() RefreshDTO refreshDTO);
}
