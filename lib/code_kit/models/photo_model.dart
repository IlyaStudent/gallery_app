part of '../code_kit.dart';

class PhotoModel {
  final FileModel file;
  final UserModel? user;
  final String? description;
  final String? name;

  final bool isNew;
  final bool popular;
  final int id;

  PhotoModel({
    required this.file,
    required this.isNew,
    required this.popular,
    required this.id,
    this.name,
    this.user,
    this.description,
  });
}
