part of '../password_reset_part.dart';

class PasswordResetModel {
  final String? oldPassword;
  final String? newPassword;
  final String? confirmPassword;

  PasswordResetModel({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });
}
