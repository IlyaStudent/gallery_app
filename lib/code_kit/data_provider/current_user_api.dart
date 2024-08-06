part of '../code_kit.dart';

// import 'package:dio/dio.dart' as dio;
// import 'package:gallery_app/code_kit/code_kit.dart';
// import 'package:retrofit/http.dart';
// import 'package:retrofit/retrofit.dart';

// part 'current_user_api_g.dart';

@RestApi(baseUrl: StringConsts.apiLink)
abstract class CurrentUserApi {
  factory CurrentUserApi(dio.Dio dio, {String baseUrl}) = _CurrentUserApi;

  @GET(StringConsts.currentUserLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
  })
  Future<UserDTO> getUser();
}
