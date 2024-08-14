part of '../code_kit.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosApi photosApi;

  PhotosRepositoryImpl({required this.photosApi});

  @override
  Future<PhotoModel> getPhoto({
    required int id,
  }) =>
      photosApi.getPhoto(
        id: id,
      );

  @override
  Future<PhotosListModel> getPhotos(
          {required int page,
          required bool isNew,
          String name = StringConsts.emptyString}) =>
      photosApi.getPhotos(
        page: page,
        isNew: isNew,
        name: name,
      );
}
