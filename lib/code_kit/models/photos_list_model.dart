part of '../code_kit.dart';

class PhotosListModel {
  final int totalItems;
  final List<PhotoModel> member;
  final HydraViewModel? hydraView;

  PhotosListModel({
    required this.totalItems,
    required this.member,
    this.hydraView,
  });
}
