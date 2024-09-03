part of '../code_kit.dart';

abstract class PhotosRepository {
  Future<PhotosListModel> getPhotos({
    required int page,
    bool? isNew,
    bool? isPopular,
    String name = StringConsts.emptyString,
    int? userId,
  });

  Future<PhotoModel> getPhoto({required int id});

  Future<PhotoModel> postPhoto({required PostPhotoDTO postPhotoDTO});
}
