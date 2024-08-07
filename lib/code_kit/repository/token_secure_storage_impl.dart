part of '../code_kit.dart';

class TokenSecureStorageImpl implements TokenSecureStorage {
  final FlutterSecureStorage storage;

  TokenSecureStorageImpl({required this.storage});

  @override
  Future<TokenModel> getToken() async {
    final Map<String, dynamic> tokenData = {
      StringConsts.acccessTokenKey: await storage.read(
        key: StringConsts.acccessTokenKey,
      ),
      StringConsts.refreshTokenKey: await storage.read(
        key: StringConsts.refreshTokenKey,
      ),
    };
    return TokenDTO.fromJson(tokenData);
  }

  @override
  Future<void> writeToken(String accessToken, String refreshToken) async {
    await storage.write(
      key: StringConsts.acccessTokenKey,
      value: accessToken,
    );
    await storage.write(
      key: StringConsts.refreshTokenKey,
      value: refreshToken,
    );
  }
}
