part of '../code_kit.dart';

abstract class UserRepository {
  Future<UserModel> getCurrentUser();
}
