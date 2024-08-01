part of '../autentithication_part.dart';

abstract class AuthentithicationRepository {
  Future<dartz.Either<ServerFailure, void>> registerUser(RegModel regModel);

  Future<dartz.Either<ServerFailure, TokenModel?>> loginUser(
      LoginModel loginModel);

  Future<dartz.Either<ServerFailure, TokenModel?>> refresh(
      RefreshModel refreshModel);
}

class AuthorizationRepositoryImpl implements AuthentithicationRepository {
  final NetworkInfo networkInfo;
  final ApiAutentithication apiAuthorization;

  AuthorizationRepositoryImpl({
    required this.networkInfo,
    required this.apiAuthorization,
  });

  @override
  Future<dartz.Either<ServerFailure, void>> registerUser(
          RegModel regModel) async =>
      _requestSever(
        () => apiAuthorization.registerUser(regModel),
      );

  @override
  Future<dartz.Either<ServerFailure, TokenModel?>> loginUser(
          LoginModel loginModel) async =>
      _requestSever(
        () => apiAuthorization.loginUser(loginModel),
      );

  @override
  Future<dartz.Either<ServerFailure, TokenModel?>> refresh(
          RefreshModel refreshModel) async =>
      _requestSever(
        () => apiAuthorization.refresh(refreshModel),
      );

  Future<dartz.Either<ServerFailure, TokenModel?>> _requestSever(
      Future<dynamic> Function() function) async {
    if (await networkInfo.isConnected) {
      try {
        final serverResponse = await function();
        return dartz.Right(serverResponse);
      } on DioException catch (error) {
        print(error.message);
        if (error.requestOptions.path == "/users") {
          final ErrorModel errorModel =
              ErrorModel.fromJson(error.response?.data);
          return dartz.Left(
              ServerFailure(errorMessage: errorModel.description));
        }
        return dartz.Left(
            ServerFailure(errorMessage: "Неверный логин или пароль"));
      }
    } else {
      return dartz.Left(ServerFailure(errorMessage: "No internet connection"));
    }
  }
}
