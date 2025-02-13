part of '../autentithication_part.dart';

class AuthentithicationRepositoryImpl implements AuthentithicationRepository {
  final NetworkInfo networkInfo;
  final AutentithicationApi apiAuthorization;

  AuthentithicationRepositoryImpl({
    required this.networkInfo,
    required this.apiAuthorization,
  });

  @override
  Future<void> registerUser(RegistrationDTO regModel) async =>
      apiAuthorization.registerUser(regModel);

  @override
  Future<TokenModel> loginUser(LoginDTO loginModel) async =>
      apiAuthorization.loginUser(loginModel);
}
