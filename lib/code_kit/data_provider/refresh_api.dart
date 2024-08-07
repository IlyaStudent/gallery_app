part of '../code_kit.dart';

// import 'package:dio/dio.dart' as dio;
// import 'package:gallery_app/autentithication/autentithication_part.dart';
// import 'package:gallery_app/code_kit/code_kit.dart';
// import 'package:retrofit/http.dart';
// import 'package:retrofit/retrofit.dart';

// part 'refresh_api.g.dart';

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
