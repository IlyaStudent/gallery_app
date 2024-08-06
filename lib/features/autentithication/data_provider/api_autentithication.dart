part of '../autentithication_part.dart';

@RestApi(baseUrl: StringConsts.apiLink)
abstract class AutentithicationApi {
  factory AutentithicationApi(dio.Dio dio, {String baseUrl}) =
      _AutentithicationApi;

  @POST(StringConsts.regLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<void> registerUser(@Body() RegistrationDTO user);

  @POST(StringConsts.loginLink)
  Future<TokenDTO> loginUser(@Body() LoginDTO loginModel);
}
