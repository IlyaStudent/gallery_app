part of '../code_kit.dart';

class ResetPasswordHelper {
  final PasswordResetDTO passwordResetDTO;
  final PasswordResetErrorDTO passwordResetErrorDTO;

  final String changedFieldName;
  final String changedFieldText;
  final String oldPassword;

  ResetPasswordHelper({
    required this.changedFieldName,
    required this.changedFieldText,
    required this.passwordResetDTO,
    required this.passwordResetErrorDTO,
    required this.oldPassword,
  });

  PasswordResetDTO changePasswordData() {
    final Map<String, dynamic> passwordData = passwordResetDTO.toJson();
    passwordData[changedFieldName] = changedFieldText;
    return PasswordResetDTO.fromJson(passwordData);
  }

  final Map<String, dynamic> validateFunctions = {
    StringConsts.oldPassword: _checkOldPassword,
    StringConsts.newPassword: _checkNewPassword,
    StringConsts.confirmPassword: _checkConfirmPassword,
  };

  PasswordResetErrorDTO changeErrorData() {
    final Map<String, dynamic> errorData = passwordResetErrorDTO.toJson();
    final PasswordResetDTO passwordResetDTO = changePasswordData();

    if (changedFieldName == StringConsts.oldPassword) {
      errorData[changedFieldName] = _checkOldPassword(
        oldPassword,
        passwordResetDTO.oldPassword ?? StringConsts.emptyString,
      );
    } else if (changedFieldName == StringConsts.newPassword) {
      errorData[changedFieldName] = _checkNewPassword(
        passwordResetDTO.newPassword ?? StringConsts.emptyString,
        oldPassword,
      );
      errorData[StringConsts.confirmPassword] = _checkConfirmPassword(
        passwordResetDTO.newPassword ?? StringConsts.emptyString,
        passwordResetDTO.confirmPassword ?? StringConsts.emptyString,
      );
    } else if (changedFieldName == StringConsts.confirmPassword) {
      errorData[changedFieldName] = _checkConfirmPassword(
        passwordResetDTO.newPassword ?? StringConsts.emptyString,
        passwordResetDTO.confirmPassword ?? StringConsts.emptyString,
      );
    }

    errorData[StringConsts.isValid] = errorData[StringConsts.newPassword] &&
        errorData[StringConsts.oldPassword] &&
        errorData[StringConsts.confirmPassword];

    return PasswordResetErrorDTO.fromJson(errorData);
  }

  static bool _checkOldPassword(String oldPassword, String checkPassword) {
    return oldPassword == checkPassword;
  }

  static bool _checkNewPassword(String newPassword, String oldPassword) {
    return (newPassword.length > 5 &&
        newPassword.length < 20 &&
        newPassword != oldPassword);
  }

  static bool _checkConfirmPassword(
      String newPassword, String confirmPassword) {
    return newPassword == confirmPassword;
  }
}
