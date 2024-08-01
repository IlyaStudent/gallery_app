part of 'login_model.dart';

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
