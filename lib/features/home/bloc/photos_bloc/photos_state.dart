part of '../../home_part.dart';

@freezed
class PhotosState with _$PhotosState {
  const factory PhotosState.empty() = _PhotosEmpty;
  const factory PhotosState.loading(
    List<PhotoModel> oldPhotosList,
  ) = _PhotosLoading;
  const factory PhotosState.loaded({
    required PhotosListModel photosListModel,
    required int page,
    required String name,
  }) = _PhotosLoaded;
  const factory PhotosState.error({
    required String errorMessage,
  }) = _PhotosError;
}
