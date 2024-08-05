part of '../../autentithication_part.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:gallery_app/code_kit/code_kit.dart';
// part 'login_dto.g.dart';
// part 'login_dto.freezed.dart';

@freezed
class LoginDTO with _$LoginDTO {
  const factory LoginDTO({
    @Default(StringConsts.grantTypePassword) String grant_type,
    required String username,
    required String password,
    @Default(StringConsts.clientId) String client_id,
    @Default(StringConsts.clientSecret) String client_secret,
  }) = _LoginDTO;

  factory LoginDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginDTOFromJson(json);
}
