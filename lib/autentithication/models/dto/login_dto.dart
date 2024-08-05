part of '../../autentithication_part.dart';

@freezed
class LoginDTO with _$LoginDTO {
  const factory LoginDTO({
    @Default(StringConsts.grantTypePassword) String grantType,
    required String username,
    required String password,
    @Default(StringConsts.clientId) String clientId,
    @Default(StringConsts.clientSecret) String clientSecret,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}
