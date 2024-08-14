part of '../code_kit.dart';

class FileModel {
  final String path;
  final int id;
  final String? originalName;
  final String? fullPath;
  final String? mimeType;
  final String? dateCreate;
  final String? dateUpdate;

  FileModel({
    required this.path,
    required this.id,
    this.originalName,
    this.fullPath,
    this.mimeType,
    this.dateCreate,
    this.dateUpdate,
  });
}
