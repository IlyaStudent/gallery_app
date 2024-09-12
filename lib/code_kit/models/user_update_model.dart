part of '../code_kit.dart';

class UserUpdateModel {
  const UserUpdateModel({
    this.email,
    this.birthday,
    this.displayName,
    this.roles,
    this.id,
    this.userProfilePhoto,
    this.dateCreate,
    this.dateUpdate,
    this.phone,
    this.deleted,
  });

  final String? email;
  final String? birthday;
  final String? displayName;
  final List<String>? roles;
  final int? id;
  final String? userProfilePhoto;
  final String? dateCreate;
  final String? dateUpdate;
  final String? phone;
  final String? deleted;
}
