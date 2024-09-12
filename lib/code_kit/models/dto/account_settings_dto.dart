part of '../../code_kit.dart';

@freezed
class AccountSettingsDTO extends AccountSettingsModel
    with _$AccountSettingsDTO {
  const factory AccountSettingsDTO({
    required String oldPassword,
    String? plainPassword,
    String? email,
    String? userProfilePhoto,
    String? birthday,
    String? displayName,
    String? phone,
  }) = _AccountSettingsDTO;

  factory AccountSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountSettingsDTOFromJson(json);
}
