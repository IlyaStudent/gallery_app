part of '../code_kit.dart';

@RestApi()
abstract class FilesApi {
  factory FilesApi(dio.Dio dio, {String baseUrl}) = _FilesApi;

  @GET(StringConsts.getFileLink)
  @DioResponseType(dio.ResponseType.bytes)
  Future<HttpResponse<List<int>>> getPhotoByPath({
    @Path(StringConsts.path) required String path,
  });

  @POST(StringConsts.filesLink)
  @MultiPart()
  Future<FileDTO> postFile({
    @Part(name: StringConsts.originalName) required String originalName,
    @Part(name: StringConsts.file) required File file,
  });
}
