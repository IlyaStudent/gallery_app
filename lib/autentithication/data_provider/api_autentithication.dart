part of '../autentithication_part.dart';

@RestApi(baseUrl: StringConsts.apiLink)
abstract class ApiAutentithication {
  factory ApiAutentithication(dio.Dio dio, {String baseUrl}) =
      _ApiAutentithication;

  @POST(StringConsts.regLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<void> registerUser(@Body() RegistrationDTO user);

  @POST(StringConsts.loginLink)
  Future<TokenDTO> loginUser(@Body() LoginDTO loginModel);
}
