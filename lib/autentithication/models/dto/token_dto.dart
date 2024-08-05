part of '../../autentithication_part.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'token_dto.g.dart';
// part 'token_dto.freezed.dart';

@freezed
class TokenDTO with _$TokenDTO {
  const factory TokenDTO({
    required String access_token,
    required String refresh_token,
  }) = _TokenDTO;

  factory TokenDTO.fromJson(Map<String, dynamic> json) =>
      _$TokenDTOFromJson(json);
}
