part of '../../home_part.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.initial() = _PhotoInitial;
  const factory PhotoState.loading(
    Map<String, dynamic> oldPhotos,
  ) = _PhotoLoading;
  const factory PhotoState.loaded({
    required Map<String, dynamic> loadedPhotos,
  }) = _PhotoLoaded;
  const factory PhotoState.error() = _PhotoError;
}
