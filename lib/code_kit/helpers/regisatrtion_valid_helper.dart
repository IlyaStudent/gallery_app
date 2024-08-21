part of '../code_kit.dart';

class RegistrationValidHelper {
  final RegistrationDTO regDTO;
  final RegistrationErrorDTO regErrorDTO;

  final String changedFieldText;
  final String changedFieldName;

  RegistrationValidHelper({
    required this.regDTO,
    required this.regErrorDTO,
    required this.changedFieldName,
    required this.changedFieldText,
  });

  final Map<String, Function(String?)> validateFunctions = {
    StringConsts.displayName: _checkdisplayName,
    StringConsts.birthday: _checkBirtday,
    StringConsts.email: _checkEmail,
    StringConsts.plainPassword: _checkPassword,
    StringConsts.confirmPassword: _checkPassword,
  };

  static const Map<String, dynamic> errorTexts = {
    StringConsts.displayName: StringConsts.displayNameError,
    StringConsts.birthday: StringConsts.birthdayError,
    StringConsts.email: StringConsts.emailError,
    StringConsts.plainPassword: StringConsts.plainPasswordError,
    StringConsts.confirmPassword: StringConsts.confirmPasswordError,
  };

  RegistrationDTO changeUserData() {
    final Map<String, dynamic> userData = regDTO.toJson();
    userData[changedFieldName] = changedFieldText;
    return RegistrationDTO.fromJson(userData);
  }

  RegistrationErrorDTO changeErrorData() {
    final Map<String, dynamic> errorData = regErrorDTO.toJson();
    final Map<String, dynamic> userData = changeUserData().toJson();
    final checkErrors = _validateFields(userData);
    checkErrors.keys.forEach((e) => errorData[e] = checkErrors[e]);
    errorData[changedFieldName] = checkErrors[changedFieldName];
    errorData[StringConsts.dataValid] = checkErrors[StringConsts.dataValid];

    return RegistrationErrorDTO.fromJson(errorData);
  }

  Map<String, dynamic> _validateFields(
    Map<String, dynamic> userData,
  ) {
    final errors = <String, dynamic>{};
    if (changedFieldName == StringConsts.confirmPassword ||
        changedFieldName == StringConsts.plainPassword) {
      errors[StringConsts.confirmPassword] = _checkConfirmPassword(
        userData[StringConsts.confirmPassword],
        userData[StringConsts.plainPassword],
      )
          ? null
          : errorTexts[StringConsts.confirmPassword];

      errors[StringConsts.plainPassword] =
          _checkPassword(userData[StringConsts.plainPassword])
              ? null
              : errorTexts[StringConsts.plainPassword];
    } else {
      errors[changedFieldName] =
          validateFunctions[changedFieldName]?.call(changedFieldText)
              ? null
              : errorTexts[changedFieldName];
    }
    errors[StringConsts.dataValid] = _checkAllData(userData);

    return errors;
  }

  bool _checkAllData(Map<String, dynamic> userData) {
    return userData.keys
        .map((e) => validateFunctions[e]?.call(userData[e]))
        .toList()
        .every((element) => element == true);
  }

  static bool _checkdisplayName(String? displayName) {
    return displayName != null
        ? displayName.length > 4 && displayName.length < 30
        : false;
  }

  static bool _checkBirtday(String? birthday) {
    return birthday != null
        ? RegExp(StringConsts.regDateValidate).hasMatch(birthday)
        : false;
  }

  static bool _checkEmail(String? email) {
    return email != null
        ? RegExp(StringConsts.regEmailValidate).hasMatch(email)
        : false;
  }

  static bool _checkPassword(String? plainPassword) {
    return plainPassword != null
        ? plainPassword.length > 5 && plainPassword.length < 20
        : false;
  }

  static bool _checkConfirmPassword(
      String? confirmPassword, String? plainPassword) {
    return (confirmPassword != null && plainPassword != null)
        ? confirmPassword == plainPassword
        : false;
  }
}
