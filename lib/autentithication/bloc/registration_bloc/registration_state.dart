part of '../../autentithication_part.dart';

@freezed
sealed class RegistrationState with _$RegistrationState {
  const factory RegistrationState.checking({
    required RegErrorDTO regErrorDTO,
    required RegDTO regDTO,
  }) = _RegDataChecking;
  const factory RegistrationState.regLoading() = _RegLoadingState;
  const factory RegistrationState.regisetered() = _RegisteredState;
}
