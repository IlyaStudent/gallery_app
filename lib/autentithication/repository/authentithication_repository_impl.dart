part of '../autentithication_part.dart';

class AuthentithicationRepositoryImpl implements AuthentithicationRepository {
  final NetworkInfo networkInfo;
  final ApiAutentithication apiAuthorization;

  AuthentithicationRepositoryImpl({
    required this.networkInfo,
    required this.apiAuthorization,
  });

  @override
  Future<void> registerUser(RegistrationDTO regModel) async =>
      apiAuthorization.registerUser(regModel);

  @override
  Future<TokenDTO> loginUser(LoginDTO loginModel) async =>
      apiAuthorization.loginUser(loginModel);
}
