part of '../../home_part.dart';

@freezed
class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.loadPhotos({
    required bool isNew,
    required bool isSwitch,
    String? name,
  }) = LoadPhotosEvent;
  const factory PhotosEvent.searchPhotos({
    required String searchQuery,
  }) = SearchPhotosEvent;
}
