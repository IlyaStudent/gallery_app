part of '../code_kit.dart';

class SecureStorageImpl implements SecureStorage {
  final FlutterSecureStorage storage;

  SecureStorageImpl({required this.storage});

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
  Future<void> writeToken({
    String? accessToken,
    String? refreshToken,
    String? plainPassword,
  }) async {
    await storage.write(
      key: StringConsts.acccessTokenKey,
      value: accessToken,
    );
    await storage.write(
      key: StringConsts.refreshTokenKey,
      value: refreshToken,
    );
    await storage.write(
      key: StringConsts.plainPassword,
      value: plainPassword,
    );
  }

  @override
  Future<String?> getPassword() =>
      storage.read(key: StringConsts.plainPassword);

  @override
  Future<void> writePassword(String plainPassword) async => await storage.write(
      key: StringConsts.plainPassword, value: plainPassword);
}
