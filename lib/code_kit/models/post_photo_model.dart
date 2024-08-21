part of '../code_kit.dart';

class PostPhotoModel {
  final String? file;
  final String? user;
  final String? description;
  final String? name;
  final bool isNew;
  final bool isPopular;

  PostPhotoModel({
    this.file,
    this.user,
    this.description,
    this.name,
    this.isNew = true,
    this.isPopular = false,
  });
}
