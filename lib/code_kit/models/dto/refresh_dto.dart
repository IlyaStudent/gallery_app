part of '../../code_kit.dart';

@freezed
class RefreshDTO with _$RefreshDTO {
  const factory RefreshDTO({
    @Default(StringConsts.grantTypeRefresh) String grant_type,
    required String refresh_token,
    @Default(StringConsts.clientId) String client_id,
    @Default(StringConsts.clientSecret) String client_secret,
  }) = _RefreshDTO;

  factory RefreshDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshDTOFromJson(json);
}
