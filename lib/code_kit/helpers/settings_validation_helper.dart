part of '../code_kit.dart';

class SettingsValidationHelper {
  final AccountSettingsDTO accountSettingsDTO;
  final AccountSettingsErrorDTO accountSetttingsErrorDTO;

  final String changedFieldText;
  final String changedFieldName;

  SettingsValidationHelper({
    required this.accountSettingsDTO,
    required this.accountSetttingsErrorDTO,
    required this.changedFieldName,
    required this.changedFieldText,
  });

  final Map<String, Function(String?)> validateFunctions = {
    StringConsts.displayName: _checkdisplayName,
    StringConsts.birthday: _checkBirtday,
    StringConsts.email: _checkEmail,
    StringConsts.phone: _checkPhone,
  };

  AccountSettingsDTO changeSettingsData() {
    final Map<String, dynamic> settingsData = accountSettingsDTO.toJson();
    settingsData[changedFieldName] = changedFieldText;
    return AccountSettingsDTO.fromJson(settingsData);
  }

  AccountSettingsErrorDTO changeErrorData() {
    final Map<String, dynamic> errorData = accountSetttingsErrorDTO.toJson();
    final Map<String, dynamic> settingsData = changeSettingsData().toJson();
    final checkErrors = _validateFields(settingsData);
    errorData[changedFieldName] = checkErrors[changedFieldName];
    errorData.remove(StringConsts.isVerified);
    errorData[StringConsts.isVerified] =
        checkErrors.values.toList().every((element) => element == true);
    return AccountSettingsErrorDTO.fromJson(errorData);
  }

  Map<String, dynamic> _validateFields(
    Map<String, dynamic> userData,
  ) {
    final errors = <String, dynamic>{};
    errors[changedFieldName] =
        validateFunctions[changedFieldName]?.call(changedFieldText);

    return errors;
  }

  static bool _checkdisplayName(String? displayName) {
    return displayName != null
        ? displayName.length > 3 && displayName.length < 30
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

  static bool _checkPhone(String? phone) {
    return phone != null && phone != StringConsts.emptyString
        ? phone.length == 11 && phone[0] == "8" && phone[1] == "9"
        : true;
  }
}
