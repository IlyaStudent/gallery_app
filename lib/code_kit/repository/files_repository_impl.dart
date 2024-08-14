part of '../code_kit.dart';

class FilesRepositoryImpl extends FilesRepository {
  final FilesApi filesApi;

  FilesRepositoryImpl({
    required this.filesApi,
  });

  @override
  Future<Uint8List> getPhotoByPath({
    required String path,
  }) async {
    final response = await filesApi.getPhotoByPath(
      path: path,
    );
    return Uint8List.fromList(response.data);
  }
}
