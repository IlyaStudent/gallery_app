part of '../../password_reset_part.dart';

@freezed
class PasswordResetErrorDTO extends PasswordResetErrorModel
    with _$PasswordResetErrorDTO {
  const factory PasswordResetErrorDTO({
    @Default(false) bool isValid,
    @Default(true) bool oldPassword,
    @Default(true) bool newPassword,
    @Default(true) bool confirmPassword,
  }) = _PasswordResetErrorDTO;

  factory PasswordResetErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetErrorDTOFromJson(json);
}
