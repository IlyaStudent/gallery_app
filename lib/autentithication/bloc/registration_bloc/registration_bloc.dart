part of '../../autentithication_part.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final AuthentithicationRepository authentithicationRepository;

  RegistrationBloc({required this.authentithicationRepository})
      : super(RegDataChecking(
          regModel: const RegModel(),
          regErrorModel: RegErrorModel(),
        )) {
    on<RegistrationEvent>(_onEvent);
  }

  Future<void> _onEvent(
    RegistrationEvent event,
    Emitter<RegistrationState> emit,
  ) async {
    final currentState = state;
    if (event is RegisterEvent && currentState is RegDataChecking) {
      emit(RegLoadingState());
      final dartz.Either<ServerFailure, void> failureOrToken =
          await authentithicationRepository.registerUser(currentState.regModel);
      emit(
        failureOrToken.fold(
          (failure) => RegDataChecking(
            regErrorModel: RegErrorModel(regError: failure.errorMessage),
            regModel: currentState.regModel,
          ),
          (token) => RegisteredState(),
        ),
      );
    } else if (event is ChangeRegDataEvent && currentState is RegDataChecking) {
      final Map<String, dynamic> userData = currentState.regModel.toJson();
      userData[event.changedFieldName] = event.changedFieldText;
      final RegModel regModel = RegModel.fromJson(userData);

      final Map<String, dynamic> errorData =
          currentState.regErrorModel.toJson();
      final checkErrors = _validateFields(
        event.changedFieldName,
        userData,
      );

      errorData[event.changedFieldName] = checkErrors[event.changedFieldName];
      errorData["dataValid"] = checkErrors["dataValid"];
      final RegErrorModel regErrorModel = RegErrorModel.fromJson(errorData);

      emit(RegDataChecking(
        regModel: regModel,
        regErrorModel: regErrorModel,
      ));
    }
  }

  Map<String, dynamic> _validateFields(
    String changedField,
    Map<String, dynamic> userData,
  ) {
    final errors = <String, dynamic>{};

    if (changedField == "displayName") {
      errors["displayName"] = _checkdisplayName(userData["displayName"])
          ? null
          : "Имя пользователя должно быть от 4 до 30 символов";
    } else if (changedField == "birthday") {
      errors["birthday"] =
          _checkBirtday(userData["birthday"]) ? null : "Неверный формат даты";
    } else if (changedField == "email") {
      errors["email"] =
          _checkEmail(userData["email"]) ? null : "Неверный email";
    } else if (changedField == "plainPassword" ||
        changedField == "confirmPassword") {
      errors["plainPassword"] = _checkPassword(userData["plainPassword"])
          ? null
          : "Пароль должен быть от 6 до 20 символов";
      errors["confirmPassword"] = _checkConfirmPassword(
              userData["plainPassword"], userData["confirmPassword"])
          ? null
          : "Пароли не совпадают";
    }
    errors["dataValid"] = _checkAllData(
        userData["displayName"],
        userData["birthday"],
        userData["email"],
        userData["plainPassword"],
        userData["confirmPassword"]);

    return errors;
  }

  bool _checkAllData(String? displayName, String? birthday, String? email,
      String? plainPassword, String? confirmPassword) {
    print("_checkdisplayName${_checkdisplayName(displayName)}");
    print("_checkBirtday${_checkBirtday(birthday)}");
    print("_checkEmail${_checkEmail(email)}");
    print("_checkPassword${_checkPassword(plainPassword)}");
    print(
        "_checkConfirmPassword${_checkConfirmPassword(confirmPassword, plainPassword)}");
    return (_checkdisplayName(displayName) &&
        _checkBirtday(birthday) &&
        _checkEmail(email) &&
        _checkPassword(plainPassword) &&
        _checkConfirmPassword(confirmPassword, plainPassword));
  }

  bool _checkdisplayName(String? displayName) {
    return displayName != null
        ? displayName.length > 4 && displayName.length < 30
        : false;
  }

  bool _checkBirtday(String? birthday) {
    print(birthday);
    return birthday != null
        ? RegExp(r"\d{1,2}\.\d{1,2}\.\d{4}").hasMatch(birthday)
        : false;
  }

  bool _checkEmail(String? email) {
    return email != null
        ? RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)
        : false;
  }

  bool _checkPassword(String? plainPassword) {
    return plainPassword != null
        ? plainPassword.length > 5 && plainPassword.length < 20
        : false;
  }

  bool _checkConfirmPassword(String? confirmPassword, String? plainPassword) {
    return (confirmPassword != null && plainPassword != null)
        ? confirmPassword == plainPassword
        : false;
  }
}
