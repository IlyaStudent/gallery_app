import 'package:dio/dio.dart' as dio;
import 'package:gallery_app/autentithication/models/dto/login_model.dart';
import 'package:gallery_app/autentithication/models/dto/refresh_model.dart';
import 'package:gallery_app/autentithication/models/dto/reg_model.dart';
import 'package:gallery_app/autentithication/models/dto/token_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_autentithication_g.dart';

abstract class ApiAutentithication {
  factory ApiAutentithication(dio.Dio dio, {String baseUrl}) =
      _ApiAutentithication;

  Future<void> registerUser(@Body() RegModel user);

  Future<TokenModel> loginUser(@Body() LoginModel loginModel);

  Future<TokenModel> refresh(@Body() RefreshModel refreshModel);
}
