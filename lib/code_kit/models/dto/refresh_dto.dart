part of '../../code_kit.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:gallery_app/code_kit/code_kit.dart';
// part 'refresh_dto_g.dart';
// part 'refresh_dto_freezed.dart';

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
