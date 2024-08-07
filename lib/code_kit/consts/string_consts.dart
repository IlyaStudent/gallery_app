part of "../code_kit.dart";

class StringConsts {
  static const String emptyString = "";

  static const String regEmailValidate = r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
  static const String regDateValidate = r"\d{1,2}\.\d{1,2}\.\d{4}";
  static const String logoImage = "lib/ui_kit/assets/logo.png";
  static const String errorLogoImage = "lib/ui_kit/assets/error_logo.png";

  static const String grantTypePassword = "password";
  static const String grantTypeRefresh = "refresh_token";
  static const String authotization = "Authorization";

  static const String bearer = "Bearer";
  static const String clientId = "123";
  static const String clientSecret = "123";

  static const String apiLink = "https://gallery.prod2.webant.ru/";
  static const String refreshLink = "/token";
  static const String regLink = "/users";
  static const String loginLink = "/token";
  static const String currentUserLink = "/current";

  static const String noInternet = "No internet connection";
  static const String invalidLogin = "Incorrect login or password";
  static const String displayName = "displayName";
  static const String birthday = "birthday";
  static const String email = "email";
  static const String plainPassword = "plainPassword";
  static const String confirmPassword = "confirmPassword";
  static const String dataValid = "dataValid";
  static const String displayNameError =
      "Имя пользователя должно быть от 4 до 30 символов";
  static const String birthdayError = "Неверный формат даты";
  static const String emailError = "Неверный email";
  static const String plainPasswordError =
      "Пароль должен быть от 6 до 20 символов";
  static const String confirmPasswordError = "Пароли не совпадают";
  static const String acccessTokenKey = "access_token";
  static const String refreshTokenKey = "refresh_token";
  static const String applicationIdJson = "application/ld+json";
  static const String accept = "accept";
  static const String contentType = "Content-Type";

  static const String regPath = "/reg";
  static const String authPath = "/auth";
  static const String onBoardingPath = "/onBoarding";
  static const String logOrRegPath = "/logOrReg";
  static const String homePath = "/home";
}
