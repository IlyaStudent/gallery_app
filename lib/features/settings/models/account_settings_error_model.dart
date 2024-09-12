part of '../settings_part.dart';

class AccountSettingsErrorModel {
  final bool isVerified;
  final bool displayName;
  final bool birthday;
  final bool email;
  final bool phone;

  const AccountSettingsErrorModel({
    this.isVerified = true,
    this.displayName = true,
    this.birthday = true,
    this.email = true,
    this.phone = true,
  });
}
