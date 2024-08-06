part of '../../autentithication_part.dart';

@freezed
sealed class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.initial({
    String? erorMessage,
  }) = _AuthorizationInitialState;
  const factory AuthorizationState.loading() = _AuthorizationLoadingState;
  const factory AuthorizationState.authotized() = _AuthorizationAuthorizedState;
}
