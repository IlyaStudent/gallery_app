part of '../autentithication_part.dart';

abstract class AuthentithicationRepository {
  Future<void> registerUser(RegDTO regModel);

  Future<TokenDTO> loginUser(LoginDTO loginModel);
}
