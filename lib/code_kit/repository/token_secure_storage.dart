part of '../code_kit.dart';

abstract class TokenSecureStorage {
  Future<TokenDTO> getToken();

  Future<void> writeToken(
    String accessToken,
    String refreshToken,
  );
}
