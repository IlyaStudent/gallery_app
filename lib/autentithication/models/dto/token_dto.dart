part of '../../autentithication_part.dart';

@freezed
class TokenDTO with _$TokenDTO {
  const factory TokenDTO({
    required String accessToken,
    required String refreshToken,
  }) = _TokenDTO;

  factory TokenDTO.fromJson(Map<String, dynamic> json) =>
      _$TokenDTOFromJson(json);
}
