part of '../code_kit.dart';

@RestApi()
abstract class CurrentUserApi {
  factory CurrentUserApi(dio.Dio dio, {String baseUrl}) = _CurrentUserApi;

  @GET(StringConsts.currentUserLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
  })
  Future<UserDTO> getUser();
}
