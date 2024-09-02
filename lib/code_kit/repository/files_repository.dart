part of '../code_kit.dart';

abstract class FilesRepository {
  Future<Uint8List> getFileByPath({required String path});

  Future<FileModel> postFile({
    required PostFileModel postFileModel,
  });

  Future<FileModel> getFileById({
    required int id,
  });
}
