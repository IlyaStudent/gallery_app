part of '../code_kit.dart';

@RestApi()
abstract class UsersApi {
  factory UsersApi(dio.Dio dio, {String baseUrl}) = _UsersApi;

  @PATCH(StringConsts.idUsersLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<UserUpdateDTO> changeUser({
    @Path(StringConsts.id) required int id,
    @Body() required AccountSettingsDTO accountSettingsDTO,
  });

  @DELETE(StringConsts.idUsersLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<String> deleteUser({
    @Path(StringConsts.id) required int id,
  });
}
