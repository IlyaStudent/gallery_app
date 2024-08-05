// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../autentithication_part.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegErrorDTOImpl _$$RegErrorDTOImplFromJson(Map<String, dynamic> json) =>
    _$RegErrorDTOImpl(
      dataValid: json['dataValid'] as bool? ?? false,
      displayName: json['displayName'] as String?,
      birthday: json['birthday'] as String?,
      email: json['email'] as String?,
      plainPassword: json['plainPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      regError: json['regError'] as String?,
    );

Map<String, dynamic> _$$RegErrorDTOImplToJson(_$RegErrorDTOImpl instance) =>
    <String, dynamic>{
      'dataValid': instance.dataValid,
      'displayName': instance.displayName,
      'birthday': instance.birthday,
      'email': instance.email,
      'plainPassword': instance.plainPassword,
      'confirmPassword': instance.confirmPassword,
      'regError': instance.regError,
    };
