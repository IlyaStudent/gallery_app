part of '../../settings_part.dart';

class AccountSettingsBloc
    extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  AccountSettingsBloc({
    required this.tokenSecureStorage,
    required this.filesRepository,
    required this.userRepository,
  }) : super(
          const AccountSettingsState.verifying(),
        ) {
    on<_AccountSettingsChangePhoto>(_onChangePhotoEvent);
    on<_AccountSettingsChangeData>(_onChangeDataEvent);
    on<_AccountSettingsSave>(_onSaveEvent);
    on<_AccountSettingsDelete>(_onDeleteEvent);
    on<_AccountSettingsExit>(_onExitEvent);
    on<_AccountSettingsShowConfirm>(_onShowConifrmEvent);
    on<_AccountSettingsCloseConfirm>(_onCloseConfirmEvent);
  }

  final FilesRepository filesRepository;
  final UserRepository userRepository;
  final SecureStorage tokenSecureStorage;

  Future<void> _onChangePhotoEvent(
    _AccountSettingsChangePhoto event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentState = state;
    final Map<String, File>? photoData =
        await ImagePickerHelper.pickImageFromGallery();
    if (currentState is! _AccountSettingsVerifying || photoData == null) {
      return;
    }
    final String originalName = photoData.keys.first;
    final PostFileModel postFileModel = PostFileModel(
      originalName: originalName,
      file: photoData[originalName],
    );
    emit(
      _AccountSettingsVerifying(
        postFileModel: postFileModel,
      ),
    );
  }

  Future<void> _onChangeDataEvent(
    _AccountSettingsChangeData event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentsState = state;
    if (currentsState is! _AccountSettingsVerifying) return;
    final SettingsValidationHelper settingsValidationHelper =
        SettingsValidationHelper(
      accountSettingsDTO: currentsState.accountSettingsDTO,
      accountSetttingsErrorDTO: currentsState.accountSetttingsErrorDTO,
      changedFieldName: event.changedFieldName,
      changedFieldText: event.changedFieldText,
    );
    final AccountSettingsDTO accountSettingsDTO =
        settingsValidationHelper.changeSettingsData();
    final AccountSettingsErrorDTO accountSettingsErrorDTO =
        settingsValidationHelper.changeErrorData();
    emit(
      AccountSettingsState.verifying(
        accountSettingsDTO: accountSettingsDTO,
        accountSetttingsErrorDTO: accountSettingsErrorDTO,
        postFileModel: currentsState.postFileModel,
      ),
    );
  }

  Future<void> _onSaveEvent(
    _AccountSettingsSave event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _AccountSettingsVerifying) return;

    emit(const AccountSettingsState.loading());

    FileModel? fileModel;
    try {
      if (currentState.postFileModel.file != null) {
        fileModel = await filesRepository.postFile(
          postFileModel: currentState.postFileModel,
        );
      }
      final UserModel userModel = await userRepository.getCurrentUser();
      final AccountSettingsDTO accountSettingsDTO = AccountSettingsDTO(
        oldPassword:
            await tokenSecureStorage.getPassword() ?? StringConsts.emptyString,
        email: currentState.accountSettingsDTO.email,
        birthday: currentState.accountSettingsDTO.birthday,
        displayName: currentState.accountSettingsDTO.displayName,
        phone: currentState.accountSettingsDTO.phone,
        userProfilePhoto: (fileModel != null)
            ? "${StringConsts.filesLink}/${fileModel.id}"
            : null,
      );
      userRepository.changeUser(
        userModel.id!,
        accountSettingsDTO,
      );
      emit(
        const AccountSettingsState.loaded(),
      );
      emit(
        AccountSettingsState.verifying(
          accountSettingsDTO: currentState.accountSettingsDTO,
          accountSetttingsErrorDTO: currentState.accountSetttingsErrorDTO,
        ),
      );
    } catch (e) {
      emit(
        const AccountSettingsState.verifying(),
      );
    }
  }

  Future<void> _onDeleteEvent(
    _AccountSettingsDelete event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _AccountSettingsVerifying) return;
    try {
      final UserModel userModel = await userRepository.getCurrentUser();
      userRepository.deleteUser(userModel.id!);
      emit(
        const AccountSettingsState.verifying(),
      );
      event.context.router.replaceAll(
        [
          const OnBoardingRoute(),
        ],
      );
    } catch (e) {
      emit(
        AccountSettingsState.verifying(
          accountSettingsDTO: currentState.accountSettingsDTO,
          accountSetttingsErrorDTO: currentState.accountSetttingsErrorDTO,
          postFileModel: currentState.postFileModel,
        ),
      );
    }
  }

  Future<void> _onExitEvent(
    _AccountSettingsExit event,
    Emitter<AccountSettingsState> emit,
  ) async {
    instance<FlutterSecureStorage>().deleteAll();
    emit(
      const AccountSettingsState.verifying(),
    );
    event.context.router.replaceAll(
      [
        const OnBoardingRoute(),
      ],
    );
  }

  Future<void> _onShowConifrmEvent(
    _AccountSettingsShowConfirm event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _AccountSettingsVerifying) return;
    emit(
      AccountSettingsState.verifying(
        accountSettingsDTO: currentState.accountSettingsDTO,
        accountSetttingsErrorDTO: currentState.accountSetttingsErrorDTO,
        postFileModel: currentState.postFileModel,
        deleteConfirm: event.isDelete,
      ),
    );
  }

  Future<void> _onCloseConfirmEvent(
    _AccountSettingsCloseConfirm event,
    Emitter<AccountSettingsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _AccountSettingsVerifying) return;
    emit(
      AccountSettingsState.verifying(
        accountSettingsDTO: currentState.accountSettingsDTO,
        accountSetttingsErrorDTO: currentState.accountSetttingsErrorDTO,
        postFileModel: currentState.postFileModel,
      ),
    );
    event.context.router.maybePop();
  }
}

extension AccountSettingsBlocBuildContext on BuildContext {
  AccountSettingsBloc get readAccountSettingsBloc => read();
}
