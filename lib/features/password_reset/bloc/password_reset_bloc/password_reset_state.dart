part of '../../password_reset_part.dart';

@freezed
class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState.verifying({
    @Default(
      PasswordResetDTO(),
    )
    PasswordResetDTO passwordResetDTO,
    @Default(
      PasswordResetErrorDTO(),
    )
    PasswordResetErrorDTO passwordResetErorDTO,
  }) = _PasswordResetVerifying;
  const factory PasswordResetState.loading() = _PasswordResetLoading;
  const factory PasswordResetState.changed() = _PasswordResetChanged;
  const factory PasswordResetState.error() = _PasswordResetError;
}
