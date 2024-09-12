part of '../code_kit.dart';

class UserRepositoryImpl implements UserRepository {
  final CurrentUserApi currentUserApi;
  final UsersApi usersApi;

  UserRepositoryImpl({
    required this.currentUserApi,
    required this.usersApi,
  });

  @override
  Future<UserModel> getCurrentUser() => currentUserApi.getUser();

  @override
  Future<UserUpdateModel> changeUser(
    int id,
    AccountSettingsDTO accountSettingsDTO,
  ) =>
      usersApi.changeUser(
        id: id,
        accountSettingsDTO: accountSettingsDTO,
      );

  @override
  Future<String> deleteUser(int id) => usersApi.deleteUser(id: id);
}
