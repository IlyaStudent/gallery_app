// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reg_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegErrorModel _$RegErrorModelFromJson(Map<String, dynamic> json) =>
    RegErrorModel(
      dataValid: json['dataValid'] as bool? ?? false,
      regError: json['regError'] as String?,
      displayName: json['displayName'] as String?,
      birthday: json['birthday'] as String?,
      email: json['email'] as String?,
      plainPassword: json['plainPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$RegErrorModelToJson(RegErrorModel instance) =>
    <String, dynamic>{
      'dataValid': instance.dataValid,
      'regError': instance.regError,
      'displayName': instance.displayName,
      'birthday': instance.birthday,
      'email': instance.email,
      'plainPassword': instance.plainPassword,
      'confirmPassword': instance.confirmPassword,
    };
