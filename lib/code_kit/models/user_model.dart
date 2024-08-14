part of '../code_kit.dart';

class UserModel {
  const UserModel({
    this.email,
    this.birthday,
    this.displayName,
    this.roles,
    this.id,
    this.dateCreate,
    this.dateUpdate,
  });

  final String? email;
  final String? birthday;
  final String? displayName;
  final List<String>? roles;
  final int? id;
  final String? dateCreate;
  final String? dateUpdate;
}
