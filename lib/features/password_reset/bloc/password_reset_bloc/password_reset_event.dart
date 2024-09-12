part of '../../password_reset_part.dart';

@freezed
class PasswordResetEvent with _$PasswordResetEvent {
  const factory PasswordResetEvent.changeData({
    required String changedFieldName,
    required String changedFieldText,
  }) = _PasswordResetChangeData;
  const factory PasswordResetEvent.confirm() = _PasswordResetConfirm;
}
