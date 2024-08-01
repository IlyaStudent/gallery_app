part of 'reg_model.dart';

RegModel _$RegModelFromJson(Map<String, dynamic> json) => RegModel(
      email: json['email'] as String?,
      birthday: json['birthday'] as String?,
      displayName: json['displayName'] as String?,
      plainPassword: json['plainPassword'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$RegModelToJson(RegModel instance) => <String, dynamic>{
      'email': instance.email,
      'birthday': instance.birthday,
      'displayName': instance.displayName,
      'plainPassword': instance.plainPassword,
      'confirmPassword': instance.confirmPassword,
    };
