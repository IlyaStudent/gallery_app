part of '../../settings_part.dart';

@freezed
class AccountSettingsEvent with _$AccountSettingsEvent {
  const factory AccountSettingsEvent.save() = _AccountSettingsSave;
  const factory AccountSettingsEvent.changePhoto() =
      _AccountSettingsChangePhoto;
  const factory AccountSettingsEvent.changeData({
    required String changedFieldName,
    required String changedFieldText,
  }) = _AccountSettingsChangeData;
  const factory AccountSettingsEvent.exit({required BuildContext context}) =
      _AccountSettingsExit;
  const factory AccountSettingsEvent.delete({required BuildContext context}) =
      _AccountSettingsDelete;
  const factory AccountSettingsEvent.showConfirm({required bool isDelete}) =
      _AccountSettingsShowConfirm;

  const factory AccountSettingsEvent.closeConfirm(
      {required BuildContext context}) = _AccountSettingsCloseConfirm;
}
