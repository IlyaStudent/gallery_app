part of 'error_model.dart';

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      title: json['hydra:title'] as String,
      description: json['hydra:description'] as String,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'hydra:title': instance.title,
      'hydra:description': instance.description,
    };
