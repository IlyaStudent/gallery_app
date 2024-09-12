part of '../code_kit.dart';

class AccountSettingsModel {
  final String oldPassword;
  final String? plainPassword;
  final String? email;
  final String? userProfilePhoto;
  final String? birthday;
  final String? displayName;
  final String? phone;

  const AccountSettingsModel({
    required this.oldPassword,
    this.plainPassword,
    this.email,
    this.userProfilePhoto,
    this.birthday,
    this.displayName,
    this.phone,
  });
}
