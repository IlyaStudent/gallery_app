part of '../../autentithication_part.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({
    required this.tokenSecureStorage,
    required this.authentithicationRepository,
    required this.storage,
  }) : super(const AuthorizationState.initial()) {
    on<AuthorizeEvent>(_onAuthorizeEvent);
  }

  final FlutterSecureStorage storage;

  final AuthentithicationRepository authentithicationRepository;
  final TokenSecureStorage tokenSecureStorage;

  void _onAuthorizeEvent(
    AuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(
      const AuthorizationState.loading(),
    );
    try {
      final TokenModel tokenModel = await authentithicationRepository.loginUser(
        event.loginDTO,
      );
      emit(
        const AuthorizationState.authotized(),
      );
      tokenSecureStorage.writeToken(
        tokenModel.access_token,
        tokenModel.refresh_token,
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

extension AuthorizationBlocBuildContext on BuildContext {
  AuthorizationBloc get readAuthorizationBloc => read();
}
