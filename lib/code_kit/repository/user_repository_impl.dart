part of '../code_kit.dart';

class UserRepositoryImpl implements UserRepository {
  final CurrentUserApi currentUserApi;

  UserRepositoryImpl({required this.currentUserApi});

  @override
  Future<UserModel> getCurrentUser() => currentUserApi.getUser();
}
