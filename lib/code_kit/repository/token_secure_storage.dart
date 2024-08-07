part of '../code_kit.dart';

abstract class TokenSecureStorage {
  Future<TokenModel> getToken();

  Future<void> writeToken(
    String accessToken,
    String refreshToken,
  );
}
