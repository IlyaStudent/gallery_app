part of '../../autentithication_part.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({required this.authentithicationRepository})
      : super(const AuthorizationInitial()) {
    on<AuthorizeEvent>(_onEvent);
  }

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  final AuthentithicationRepository authentithicationRepository;

  void _onEvent(
    AuthorizationEvent event,
    Emitter<AuthorizationState> emit,
  ) async {
    if (event is AuthorizeEvent) {
      emit(AuthLoadingState());
      final dartz.Either<ServerFailure, TokenModel?> failureOrToken =
          await authentithicationRepository.loginUser(event.loginModel);
      failureOrToken.fold(
        (error) => emit(AuthorizationInitial(erorMessage: error.errorMessage)),
        (token) async {
          emit(AuthorizedState());
          await _storage.write(key: "accessToken", value: token?.accessToken);
          await _storage.write(key: "refreshToken", value: token?.refreshToken);
        },
      );
    }
  }
}
