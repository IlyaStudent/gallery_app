part of '../../password_reset_part.dart';

class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  PasswordResetBloc({
    required this.tokenSecureStorage,
    required this.userRepository,
  }) : super(
          const _PasswordResetVerifying(),
        ) {
    on<_PasswordResetChangeData>(_onChangeData);
    on<_PasswordResetConfirm>(_onConfirm);
  }

  final UserRepository userRepository;
  final SecureStorage tokenSecureStorage;

  Future<void> _onChangeData(
    _PasswordResetChangeData event,
    Emitter<PasswordResetState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _PasswordResetVerifying) return;
    final String? oldPassword = await tokenSecureStorage.getPassword();
    final ResetPasswordHelper resetPasswordHelper = ResetPasswordHelper(
      changedFieldName: event.changedFieldName,
      changedFieldText: event.changedFieldText,
      passwordResetDTO: currentState.passwordResetDTO,
      passwordResetErrorDTO: currentState.passwordResetErorDTO,
      oldPassword: oldPassword ?? StringConsts.emptyString,
    );
    final PasswordResetDTO passwordResetDTO =
        resetPasswordHelper.changePasswordData();
    final PasswordResetErrorDTO passwordResetErrorDTO =
        resetPasswordHelper.changeErrorData();
    emit(
      PasswordResetState.verifying(
        passwordResetDTO: passwordResetDTO,
        passwordResetErorDTO: passwordResetErrorDTO,
      ),
    );
  }

  Future<void> _onConfirm(
    _PasswordResetConfirm event,
    Emitter<PasswordResetState> emit,
  ) async {
    final currentState = state;
    if (currentState is! _PasswordResetVerifying) return;

    try {
      emit(
        const PasswordResetState.loading(),
      );
      final UserModel userModel = await userRepository.getCurrentUser();
      final AccountSettingsDTO accountSettingsDTO = AccountSettingsDTO(
        oldPassword: currentState.passwordResetDTO.oldPassword!,
        plainPassword: currentState.passwordResetDTO.newPassword,
      );
      await userRepository.changeUser(
        userModel.id!,
        accountSettingsDTO,
      );
      await tokenSecureStorage.writePassword(
        accountSettingsDTO.plainPassword!,
      );
      emit(
        const PasswordResetState.changed(),
      );
    } catch (e) {
      emit(
        PasswordResetState.verifying(
          passwordResetDTO: currentState.passwordResetDTO,
          passwordResetErorDTO: currentState.passwordResetErorDTO,
        ),
      );
    }
  }
}

extension PasswordResetBlocBuildContext on BuildContext {
  PasswordResetBloc get readPasswordResetBloc => read();
}
