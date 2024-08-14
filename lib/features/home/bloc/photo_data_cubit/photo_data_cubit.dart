part of '../../home_part.dart';

class PhotoDataCubit extends Cubit<PhotoDataState> {
  PhotoDataCubit({
    required this.photosRepository,
  }) : super(
          const PhotoDataState.initial(),
        );
  final PhotosRepository photosRepository;

  void loadData(int id) async {
    emit(PhotoDataState.loading());
    try {
      final PhotoModel photoModel = await photosRepository.getPhoto(
        id: id,
      );
      emit(
        PhotoDataState.loaded(
          photoModel: photoModel,
        ),
      );
    } catch (e) {
      emit(PhotoDataState.loading());
    }
  }
}

extension PhotoDataBuildContext on BuildContext {
  PhotoDataCubit get readPhotoDataCubit => read();
}
