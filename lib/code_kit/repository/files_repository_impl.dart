part of '../code_kit.dart';

class FilesRepositoryImpl extends FilesRepository {
  final FilesApi filesApi;

  FilesRepositoryImpl({
    required this.filesApi,
  });

  @override
  Future<Uint8List> getFileByPath({
    required String path,
  }) async {
    final response = await filesApi.getFileByPath(
      path: path,
    );
    return Uint8List.fromList(response.data);
  }

  @override
  Future<FileModel> postFile({required PostFileModel postFileModel}) {
    return filesApi.postFile(
      originalName: postFileModel.originalName!,
      file: postFileModel.file!,
    );
  }

  @override
  Future<FileModel> getFileById({required int id}) =>
      filesApi.getFileById(id: id);
}
