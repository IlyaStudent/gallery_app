part of '../../settings_part.dart';

class UserDataCubit extends Cubit<UserDataState> {
  UserDataCubit({
    required this.filesRepository,
    required this.userRepository,
  }) : super(
          const UserDataState.loading(),
        );

  final UserRepository userRepository;
  final FilesRepository filesRepository;

  void loadUserData() async {
    emit(const UserDataState.loading());
    try {
      final UserModel userModel = await userRepository.getCurrentUser();
      if (userModel.userProfilePhoto == null) {
        emit(
          UserDataState.loaded(userModel: userModel),
        );
        return;
      }
      final FileModel fileModel =
          await filesRepository.getFileById(id: userModel.userProfilePhoto!.id);
      final Uint8List userPhoto =
          await filesRepository.getFileByPath(path: fileModel.path);
      emit(
        UserDataState.loaded(
          userModel: userModel,
          userPhoto: userPhoto,
        ),
      );
    } on DioException {
      emit(
        const UserDataState.error(),
      );
    }
  }
}
