part of '../../code_kit.dart';

@freezed
class FileDTO extends FileModel with _$FileDTO {
  const factory FileDTO({
    required String path,
    required int id,
    String? originalName,
    String? fullPath,
    String? mimeType,
    String? dateCreate,
    String? dateUpdate,
  }) = _FileDTO;

  factory FileDTO.fromJson(Map<String, dynamic> json) =>
      _$FileDTOFromJson(json);
}
