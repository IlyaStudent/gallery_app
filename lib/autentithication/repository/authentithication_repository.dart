part of '../autentithication_part.dart';

abstract class AuthentithicationRepository {
  Future<void> registerUser(RegistrationDTO regModel);

  Future<TokenDTO> loginUser(LoginDTO loginModel);
}
