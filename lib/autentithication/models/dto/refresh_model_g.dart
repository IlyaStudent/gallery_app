part of 'refresh_model.dart';

RefreshModel _$RefreshModelFromJson(Map<String, dynamic> json) => RefreshModel(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$RefreshModelToJson(RefreshModel instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'refreshToken': instance.refreshToken,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
