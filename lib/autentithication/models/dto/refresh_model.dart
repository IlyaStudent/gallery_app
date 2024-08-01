part 'refresh_model_g.dart';

class RefreshModel {
  RefreshModel({
    required this.refreshToken,
  });

  factory RefreshModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshModelFromJson(json);
  Map<String, dynamic> toJson() => _$RefreshModelToJson(this);

  final String grantType = "refresh_token";
  final String refreshToken;
  final String clientId = "123";
  final String clientSecret = "123";
}
