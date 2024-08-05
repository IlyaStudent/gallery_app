part of '../../autentithication_part.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({
    required this.authentithicationRepository,
    required this.storage,
  }) : super(const AuthorizationState.initial()) {
    on<AuthorizeEvent>(_onAuthorizeEvent);
  }

  final FlutterSecureStorage storage;

  final AuthentithicationRepository authentithicationRepository;

  void _onAuthorizeEvent(
    AuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    if (event is AuthorizeEvent) {
      emit(const AuthorizationState.loading());
      try {
        final TokenDTO tokenDTO =
            await authentithicationRepository.loginUser(event.loginDTO);
        emit(const AuthorizationState.authotized());
        await storage.write(
          key: StringConsts.acccessTokenKey,
          value: tokenDTO.accessToken,
        );
        await storage.write(
          key: StringConsts.refreshTokenKey,
          value: tokenDTO.refreshToken,
        );
      } on dio.DioException catch (error) {
        emit(
          AuthorizationState.initial(
            erorMessage: error.message,
          ),
        );
      }
    }
  }
}
