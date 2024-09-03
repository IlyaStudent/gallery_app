part of '../code_kit.dart';

class PhotosRepositoryImpl implements PhotosRepository {
  final PhotosApi photosApi;

  PhotosRepositoryImpl({required this.photosApi});

  @override
  Future<PhotoModel> getPhoto({required int id}) => photosApi.getPhoto(id: id);

  @override
  Future<PhotosListModel> getPhotos({
    required int page,
    bool? isNew,
    bool? isPopular,
    int? userId,
    String name = StringConsts.emptyString,
  }) =>
      photosApi.getPhotos(
        page: page,
        isNew: isNew,
        isPopular: isPopular,
        userId: userId,
        name: name,
      );

  @override
  Future<PhotoModel> postPhoto({required PostPhotoDTO postPhotoDTO}) =>
      photosApi.postPhoto(postPhotoDTO: postPhotoDTO);
}
