// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../autentithication_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDTOImpl _$$LoginDTOImplFromJson(Map<String, dynamic> json) =>
    _$LoginDTOImpl(
      grantType:
          json['grant_type'] as String? ?? StringConsts.grantTypePassword,
      username: json['username'] as String,
      password: json['password'] as String,
      clientId: json['client_id'] as String? ?? StringConsts.clientId,
      clientSecret:
          json['client_secret'] as String? ?? StringConsts.clientSecret,
    );

Map<String, dynamic> _$$LoginDTOImplToJson(_$LoginDTOImpl instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
