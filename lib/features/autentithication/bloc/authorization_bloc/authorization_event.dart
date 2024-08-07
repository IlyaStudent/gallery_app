part of '../../autentithication_part.dart';

@freezed
sealed class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.authorize({
    required LoginDTO loginDTO,
  }) = AuthorizeEvent;
}
