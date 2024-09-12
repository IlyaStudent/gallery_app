part of '../../settings_part.dart';

@freezed
class AccountSettingsErrorDTO extends AccountSettingsErrorModel
    with _$AccountSettingsErrorDTO {
  const factory AccountSettingsErrorDTO({
    @Default(true) bool isVerified,
    @Default(true) bool displayName,
    @Default(true) bool birthday,
    @Default(true) bool email,
    @Default(true) bool phone,
  }) = _AccountSettingsErrorDTO;

  factory AccountSettingsErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$AccountSettingsErrorDTOFromJson(json);
}
