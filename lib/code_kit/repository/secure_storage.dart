part of '../code_kit.dart';

abstract class SecureStorage {
  Future<TokenModel> getToken();

  Future<String?> getPassword();

  Future<void> writePassword(String plainPassword);

  Future<void> writeToken({
    String? accessToken,
    String? refreshToken,
    String? plainPassword,
  });
}
