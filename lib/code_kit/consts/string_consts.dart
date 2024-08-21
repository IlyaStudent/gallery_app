part of "../code_kit.dart";

class StringConsts {
  static const String emptyString = "";
  static const String emptyDate = "01.01.2001";

  static const String regEmailValidate = r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$";
  static const String regDateValidate = r"\d{1,2}\.\d{1,2}\.\d{4}";
  static const String logoImage = "lib/ui_kit/assets/logo.png";
  static const String errorLogoImage = "lib/ui_kit/assets/error_logo.png";

  static const String bearer = "Bearer";
  static const String clientId = "123";
  static const String clientSecret = "123";
  static const int itemsPerPageInt = 20;

  static const String apiLink = "https://gallery.prod2.webant.ru";
  static const String refreshLink = "/token";
  static const String regLink = "/users";
  static const String loginLink = "/token";
  static const String currentUserLink = "/current";
  static const String photosLink = "/photos";
  static const String filesLink = "/files";
  static const String idPhotoLink = "/photos/{id}";
  static const String getFileLink = "/get_file/{path}";
  static const String acccessTokenKey = "access_token";
  static const String refreshTokenKey = "refresh_token";
  static const String applicationIdJson = "application/ld+json";
  static const String accept = "accept";
  static const String contentType = "Content-Type";
  static const String grantTypePassword = "password";
  static const String grantTypeRefresh = "refresh_token";
  static const String authotization = "Authorization";
  static const String atSignId = "@id";
  static const String atSignType = "@type";
  static const String hydraTitle = "hydra:title";
  static const String hydraDescription = "hydra:description";
  static const String hydraFirst = "hydra:first";
  static const String hydraLast = "hydra:last";
  static const String hydraPrevious = "hydra:previous";
  static const String hydraNext = "hydra:next";
  static const String hydraView = "hydra:view";
  static const String isNewString = "new";
  static const String isNew = "isNew";
  static const String totalItems = "hydra:totalItems";
  static const String member = "hydra:member";
  static const String page = "page";
  static const String itemsPerPage = "itemsPerPage";
  static const String name = "name";
  static const String id = "id";
  static const String path = "path";
  static const String originalName = "originalName";
  static const String file = "file";
  static const String user = "user";
  static const String description = "description";
  static const String popular = "popular";

  static const String noInternet = "No internet connection";
  static const String invalidLogin = "Incorrect login or password";
  static const String invalidReg = "This user already exists";
  static const String invalidPhoto = "Cannot load photos";
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

  static const String navBarPath = "/navBar";
  static const String regPath = "/reg";
  static const String authPath = "/auth";
  static const String onBoardingPath = "/";
  static const String logOrRegPath = "/logOrReg";
  static const String photoDataPath = "/photoData";
  static const String homePath = "home";
  static const String photosPath = "photos";
  static const String profilePath = "profile";
}
