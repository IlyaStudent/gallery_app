part of '../../settings_part.dart';

@freezed
class AccountSettingsState with _$AccountSettingsState {
  const factory AccountSettingsState.verifying({
    @Default(
      AccountSettingsErrorDTO(),
    )
    AccountSettingsErrorDTO accountSetttingsErrorDTO,
    @Default(
      AccountSettingsDTO(oldPassword: StringConsts.emptyString),
    )
    AccountSettingsDTO accountSettingsDTO,
    @Default(
      PostFileModel(),
    )
    PostFileModel postFileModel,
    bool? deleteConfirm,
  }) = _AccountSettingsVerifying;
  const factory AccountSettingsState.loading() = _AccountSettingsLoading;
  const factory AccountSettingsState.loaded() = _AccountSettingsLoaded;
  const factory AccountSettingsState.exited() = _AccountSettingsExited;
}
