part of '../password_reset_part.dart';

class PasswordResetErrorModel {
  final bool isValid;

  final bool oldPassword;
  final bool newPassword;
  final bool confirmPassword;

  const PasswordResetErrorModel({
    this.isValid = false,
    this.oldPassword = true,
    this.newPassword = true,
    this.confirmPassword = true,
  });
}
