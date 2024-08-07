part of '../code_kit.dart';

class UserModel {
  const UserModel({
    required this.email,
    required this.birthday,
    required this.displayName,
    required this.roles,
    required this.id,
    required this.dateCreate,
    required this.dateUpdate,
  });

  final String email;
  final String birthday;
  final String displayName;
  final List<String> roles;
  final int id;
  final String dateCreate;
  final String dateUpdate;
}
