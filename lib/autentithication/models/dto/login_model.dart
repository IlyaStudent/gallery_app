part 'login_model_g.dart';

class LoginModel {
  LoginModel({
    required this.username,
    required this.password,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginModelToJson(this);

  final String grantType = "password";
  final String username;
  final String password;
  final String clientId = "123";
  final String clientSecret = "123";
}
