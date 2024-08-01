part 'token_model_g.dart';

class TokenModel {
  TokenModel({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
  Map<String, dynamic> toJson() => _$TokenModelToJson(this);

  final String accessToken;
  final String refreshToken;
}
