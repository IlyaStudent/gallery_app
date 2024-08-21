part of '../photos_part.dart';

class PostPhotoErrorModel {
  final bool isValid;
  final bool isPhotoLoaded;
  final bool? nameCorrect;

  const PostPhotoErrorModel({
    this.nameCorrect,
    this.isPhotoLoaded = false,
    this.isValid = false,
  });
}
