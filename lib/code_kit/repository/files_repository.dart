part of '../code_kit.dart';

abstract class FilesRepository {
  // Future<HttpResponse<List<int>>>
  Future<Uint8List> getPhotoByPath({required String path});

  Future<FileModel> postFile({
    required PostFileModel postFileModel,
  });
}
