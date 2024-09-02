part of '../code_kit.dart';

class UserProfilePhotoModel {
  final String userProfilePhoto;
  final int id;
  final String dateCreate;
  final String dateUpdate;
  final String? deleted;

  UserProfilePhotoModel({
    required this.userProfilePhoto,
    required this.id,
    required this.dateCreate,
    required this.dateUpdate,
    this.deleted,
  });
}
