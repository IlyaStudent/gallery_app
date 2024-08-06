part of '../on_boarding_part.dart';

abstract class OnBoardinRepository {
  Future<UserDTO> getCurrentUser();
}
