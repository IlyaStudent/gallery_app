part of '../../home_part.dart';

@freezed
class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.loadPhotos({
    bool? isNew,
    bool? isPopular,
    int? userId,
    required bool isSwitch,
    String? name,
  }) = LoadPhotosEvent;
  const factory PhotosEvent.searchPhotos({
    required String searchQuery,
  }) = SearchPhotosEvent;
}
