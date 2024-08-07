part of '../../autentithication_part.dart';

@freezed
class TokenDTO extends TokenModel with _$TokenDTO {
  const factory TokenDTO({
    required String access_token,
    required String refresh_token,
  }) = _TokenDTO;

  factory TokenDTO.fromJson(Map<String, dynamic> json) =>
      _$TokenDTOFromJson(json);
}
