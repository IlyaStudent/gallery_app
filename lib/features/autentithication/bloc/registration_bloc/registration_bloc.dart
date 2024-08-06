part of '../../autentithication_part.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthentithicationRepository authentithicationRepository;
  final TokenSecureStorage tokenSecureStorage;

  RegistrationBloc({
    required this.authentithicationRepository,
    required this.tokenSecureStorage,
  }) : super(
          const RegistrationState.checking(
            regDTO: RegistrationDTO(),
            regErrorDTO: RegistrationErrorDTO(),
          ),
        ) {
    on<RegisterEvent>(_onRegistrationEvent);
    on<ChangeDataEvent>(_onChangeRegDataEvent);
  }

  Future<void> _onRegistrationEvent(
    RegistrationEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    final currentState = state;
    if (currentState is _RegDataChecking) {
      emit(const RegistrationState.regLoading());
      try {
        await authentithicationRepository.registerUser(currentState.regDTO);
        final LoginDTO loginDTO = LoginDTO(
          username: currentState.regDTO.email!,
          password: currentState.regDTO.plainPassword!,
        );
        final TokenDTO tokenDTO = await authentithicationRepository.loginUser(
          loginDTO,
        );
        await tokenSecureStorage.writeToken(
          tokenDTO.access_token,
          tokenDTO.refresh_token,
        );
        emit(const RegistrationState.regisetered());
      } on dio.DioException catch (error) {
        emit(
          RegistrationState.checking(
            regErrorDTO: RegistrationErrorDTO(regError: error.message),
            regDTO: currentState.regDTO,
          ),
        );
      }
    }
  }

  Future<void> _onChangeRegDataEvent(
    ChangeDataEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    final currentState = state;
    if (currentState is _RegDataChecking) {
      final ValidationHelper validationHelper = ValidationHelper(
        regDTO: currentState.regDTO,
        regErrorDTO: currentState.regErrorDTO,
        changedFieldName: event.changedFieldName,
        changedFieldText: event.changedFieldText,
      );
      final RegistrationDTO regDTO = validationHelper.changeUserData();
      final RegistrationErrorDTO regErrorDTO =
          validationHelper.changeErrorData();

      emit(
        RegistrationState.checking(
          regDTO: regDTO,
          regErrorDTO: regErrorDTO,
        ),
      );
    }
  }
}
