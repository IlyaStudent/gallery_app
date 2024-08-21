part of '../code_kit.dart';

@RestApi()
abstract class PhotosApi {
  factory PhotosApi(dio.Dio dio) = _PhotosApi;

  @GET(StringConsts.photosLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<PhotoListDTO> getPhotos({
    @Query(StringConsts.page) required int page,
    @Query(StringConsts.itemsPerPage)
    int itemsPerPage = StringConsts.itemsPerPageInt,
    @Query(StringConsts.isNewString) required bool isNew,
    @Query(StringConsts.name) String name = StringConsts.emptyString,
  });

  @GET(StringConsts.idPhotoLink)
  Future<PhotoDTO> getPhoto({
    @Path(StringConsts.id) required int id,
  });

  @POST(StringConsts.photosLink)
  @Headers(<String, dynamic>{
    StringConsts.accept: StringConsts.applicationIdJson,
    StringConsts.contentType: StringConsts.applicationIdJson,
  })
  Future<PhotoDTO> postPhoto({@Body() required PostPhotoDTO postPhotoDTO});
}
