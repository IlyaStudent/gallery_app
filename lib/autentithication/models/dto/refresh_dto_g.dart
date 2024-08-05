// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../autentithication_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshDTOImpl _$$RefreshDTOImplFromJson(Map<String, dynamic> json) =>
    _$RefreshDTOImpl(
      grantType: json['grantType'] as String? ?? StringConsts.grantTypeRefresh,
      refreshToken: json['refreshToken'] as String,
      clientId: json['clien_id'] as String? ?? StringConsts.clientId,
      clientSecret:
          json['client_secret'] as String? ?? StringConsts.clientSecret,
    );

Map<String, dynamic> _$$RefreshDTOImplToJson(_$RefreshDTOImpl instance) =>
    <String, dynamic>{
      'grantType': instance.grantType,
      'refreshToken': instance.refreshToken,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
