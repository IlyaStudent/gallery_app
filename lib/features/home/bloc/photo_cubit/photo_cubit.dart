part of '../../home_part.dart';

class PhotoCubit extends Cubit<PhotoState> {
  final FilesRepository filesRepository;
  PhotoCubit({
    required this.filesRepository,
  }) : super(
          const PhotoState.initial(),
        );

  void loadPhoto(
    String path,
  ) async {
    if (state is _PhotoLoading ||
        state is _PhotoLoaded &&
            (state as _PhotoLoaded).loadedPhotos.containsKey(path) ||
        super.isClosed) return;
    final currentState = state;

    Map<String, dynamic> loadedPhotos = {};
    if (currentState is _PhotoLoaded) {
      loadedPhotos = Map.from(currentState.loadedPhotos);
    }
    emit(
      PhotoState.loading(
        loadedPhotos,
      ),
    );
    try {
      final Uint8List photoData = await filesRepository.getFileByPath(
        path: path,
      );
      loadedPhotos[path] = photoData;
      emit(
        PhotoState.loaded(
          loadedPhotos: loadedPhotos,
        ),
      );
    } catch (e) {
      try {
        emit(
          const PhotoState.error(),
        );
      } catch (e) {
        super.close();
      }
    }
  }
}

extension PhotoCubitBuildContext on BuildContext {
  PhotoCubit get readPhotoCubit => read();
}
