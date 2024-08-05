part of '../../autentithication_part.dart';

@freezed
class RegDTO with _$RegDTO {
  const factory RegDTO({
    String? plainPassword,
    String? email,
    String? birthday,
    String? displayName,
    String? confirmPassword,
  }) = _RegDTO;

  factory RegDTO.fromJson(Map<String, dynamic> json) => _$RegDTOFromJson(json);
}
