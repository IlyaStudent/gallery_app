part of '../code_kit.dart';

abstract class UserRepository {
  Future<UserModel> getCurrentUser();

  Future<UserUpdateModel> changeUser(
    int id,
    AccountSettingsDTO accountSettingsDTO,
  );

  Future<String> deleteUser(int id);
}
