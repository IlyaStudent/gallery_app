part of '../../photos_part.dart';

class PhotoPostBloc extends Bloc<PhotoPostEvent, PhotoPostState> {
  PhotoPostBloc({
    required this.userRepository,
    required this.photosRepository,
    required this.filesRepository,
  }) : super(const PhotoPostState.verifying()) {
    on<_PhotoPostChange>(_onPhotoPostChange);
    on<_PhotoPostPost>(_onPhotoPostPost);
    on<_PhotoPostChoosePhoto>(_onPhotoPostChoosePhoto);
  }

  final PhotosRepository photosRepository;
  final FilesRepository filesRepository;
  final UserRepository userRepository;

  Future<void> _onPhotoPostChange(
    _PhotoPostChange event,
    Emitter<PhotoPostState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _PhotoPostStateVerifying) return;
    PostPhotoValidHelper postPhotoValidHelper = PostPhotoValidHelper(
      postPhotoDTO: currentState.postPhotoDTO,
    );
    final PostPhotoDTO postPhotoDTO = postPhotoValidHelper.changeData(
      changedField: event.chnagedField,
      changedValue: event.changedValue,
    );
    bool? nameCorrect = currentState.postPhotoErrorDTO.nameCorrect;
    if (event.chnagedField == StringConsts.name) {
      nameCorrect = (postPhotoDTO.name != null &&
          postPhotoDTO.name!.length > 3 &&
          postPhotoDTO.name!.length < 30);
    }
    final PostPhotoErrorDTO postPhotoErrorDTO = PostPhotoErrorDTO(
      isValid: (nameCorrect ?? false) &&
          currentState.postPhotoErrorDTO.isPhotoLoaded,
      isPhotoLoaded: currentState.postPhotoErrorDTO.isPhotoLoaded,
      nameCorrect: nameCorrect,
    );
    emit(
      _PhotoPostStateVerifying(
        postPhotoDTO: postPhotoDTO,
        postPhotoErrorDTO: postPhotoErrorDTO,
        postFileModel: currentState.postFileModel,
      ),
    );
  }

  Future<void> _onPhotoPostPost(
    _PhotoPostPost event,
    Emitter<PhotoPostState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _PhotoPostStateVerifying) return;
    emit(const PhotoPostState.loading());
    try {
      final UserModel currentUser = await userRepository.getCurrentUser();
      final FileModel fileModel = await filesRepository.postFile(
        postFileModel: currentState.postFileModel,
      );

      PostPhotoDTO postPhotoDTO = PostPhotoDTO(
        file: "${StringConsts.filesLink}/${fileModel.id}",
        user: "${StringConsts.regLink}/${currentUser.id}",
        description: currentState.postPhotoDTO.description,
        name: currentState.postPhotoDTO.name,
        isNew: currentState.postPhotoDTO.isNew,
      );
      await photosRepository.postPhoto(postPhotoDTO: postPhotoDTO);
      emit(PhotoPostState.loaded());
    } catch (e) {
      emit(
        PhotoPostState.verifying(
          postFileModel: currentState.postFileModel,
          postPhotoDTO: currentState.postPhotoDTO,
        ),
      );
    }
  }

  Future<void> _onPhotoPostChoosePhoto(
    _PhotoPostChoosePhoto event,
    Emitter<PhotoPostState> emit,
  ) async {
    final currentState = state;
    final Map<String, File>? photoData =
        await ImagePickerHelper().pickImageFromGallery();
    if (currentState is! _PhotoPostStateVerifying || photoData == null) {
      return;
    }

    final String originalName = photoData.keys.first;
    final PostPhotoErrorDTO postPhotoErrorDTO = PostPhotoErrorDTO(
      isPhotoLoaded: true,
      isValid: currentState.postPhotoErrorDTO.nameCorrect ?? false,
    );
    emit(
      _PhotoPostStateVerifying(
        postFileModel: PostFileModel(
          originalName: originalName,
          file: photoData[originalName],
        ),
        postPhotoDTO: currentState.postPhotoDTO,
        postPhotoErrorDTO: postPhotoErrorDTO,
      ),
    );
  }
}

extension PhotoPostBlocBuildContext on BuildContext {
  PhotoPostBloc get readPostPhotoBloc => read();
}
