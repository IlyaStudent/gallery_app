part of '../../home_part.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  PhotosBloc({
    required this.photosRepository,
  }) : super(
          const _PhotosEmpty(),
        ) {
    on<LoadPhotosEvent>(_onLoadPhotosEvent);
  }

  int page = 1;
  String name = StringConsts.emptyString;
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
    page = (event.isSwitch || event.name != null) ? 1 : page;
    name = event.name ?? name;
    final currentState = state;
    List<PhotoModel> oldPhotoModels = [];

    if (currentState is _PhotosLoaded && !event.isSwitch) {
      oldPhotoModels = currentState.photosListModel.member;
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

      (photosListModel.totalItems > 0)
          ? emit(
              PhotosState.loaded(
                photosListModel: photosListModel,
              ),
            )
          : emit(
              const PhotosState.empty(),
            );

      page++;
    } on DioException {
      emit(
        const PhotosState.error(
          errorMessage: "",
        ),
      );
    }
  }
}

extension PhotosBlocBuildContext on BuildContext {
  PhotosBloc get readPhotosBloc => read();
}
