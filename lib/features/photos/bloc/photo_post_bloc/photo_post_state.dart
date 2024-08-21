part of '../../photos_part.dart';

@freezed
class PhotoPostState with _$PhotoPostState {
  const factory PhotoPostState.verifying({
    @Default(PostFileModel()) PostFileModel postFileModel,
    @Default(PostPhotoDTO()) PostPhotoDTO postPhotoDTO,
    @Default(PostPhotoErrorDTO()) PostPhotoErrorDTO postPhotoErrorDTO,
  }) = _PhotoPostStateVerifying;
  const factory PhotoPostState.loading() = _PhotoPostStateLoading;
  const factory PhotoPostState.loaded() = _PhotoPostStateLoaded;
}
