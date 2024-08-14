part of '../../home_part.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  PhotosBloc({
    required this.photosRepository,
  }) : super(
          const _PhotosEmpty(),
        ) {
    on<LoadPhotosEvent>(_onLoadPhotosEvent);
  }

  final PhotosRepository photosRepository;

  void _onLoadPhotosEvent(
    LoadPhotosEvent event,
    Emitter<PhotosState> emit,
  ) async {
    if ((state is _PhotosLoading ||
            (state is _PhotosLoaded &&
                (state as _PhotosLoaded).photosListModel.totalItems ==
                    (state as _PhotosLoaded).photosListModel.member.length)) &&
        !event.isSwitch) return;
    final currentState = state;
    int page = 1;
    String name = StringConsts.emptyString;

    List<PhotoModel> oldPhotoModels = [];

    if (currentState is _PhotosLoaded && !event.isSwitch) {
      oldPhotoModels = currentState.photosListModel.member;
      page = (event.name == null) ? currentState.page : 1;
      name = event.name ?? currentState.name;
    }
    emit(
      PhotosState.loading(
        oldPhotoModels,
      ),
    );
    try {
      PhotosListModel repositoryPhotosListModel =
          await photosRepository.getPhotos(
        page: page,
        isNew: event.isNew,
        name: name,
      );

      oldPhotoModels.addAll(repositoryPhotosListModel.member);

      final PhotosListModel photosListModel = PhotosListModel(
        totalItems: repositoryPhotosListModel.totalItems,
        member: oldPhotoModels,
        hydraView: repositoryPhotosListModel.hydraView,
      );
      page++;
      (photosListModel.totalItems > 0)
          ? {
              emit(
                PhotosState.loaded(
                  photosListModel: photosListModel,
                  page: page,
                  name: name,
                ),
              )
            }
          : emit(
              const PhotosState.empty(),
            );
    } on DioException {
      emit(
        const PhotosState.error(
          errorMessage: StringConsts.emptyString,
        ),
      );
    }
  }
}

extension PhotosBlocBuildContext on BuildContext {
  PhotosBloc get readPhotosBloc => read();
}
