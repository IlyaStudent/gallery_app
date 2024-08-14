part of '../code_kit.dart';

abstract class PhotosRepository {
  Future<PhotosListModel> getPhotos({
    required int page,
    required bool isNew,
    String name = StringConsts.emptyString,
  });

  Future<PhotoModel> getPhoto({required int id});
}
