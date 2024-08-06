part of '../on_boarding_part.dart';

class OnBoardingRepositoryImpl implements OnBoardinRepository {
  final CurrentUserApi currentUserApi;

  OnBoardingRepositoryImpl({required this.currentUserApi});

  @override
  Future<UserDTO> getCurrentUser() => currentUserApi.getUser();
}
