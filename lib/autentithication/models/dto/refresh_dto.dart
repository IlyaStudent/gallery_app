part of '../../autentithication_part.dart';

@freezed
class RefreshDTO with _$RefreshDTO {
  const factory RefreshDTO({
    @Default(StringConsts.grantTypeRefresh) String grantType,
    required String refreshToken,
    @Default(StringConsts.clientId) String clientId,
    @Default(StringConsts.clientSecret) String clientSecret,
  }) = _RefreshDTO;

  factory RefreshDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshDTOFromJson(json);
}
