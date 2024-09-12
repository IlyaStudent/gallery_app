part of '../../password_reset_part.dart';

@freezed
class PasswordResetDTO extends PasswordResetModel with _$PasswordResetDTO {
  const factory PasswordResetDTO({
    String? oldPassword,
    String? newPassword,
    String? confirmPassword,
  }) = _PasswordResetDTO;

  factory PasswordResetDTO.fromJson(Map<String, dynamic> json) =>
      _$PasswordResetDTOFromJson(json);
}
