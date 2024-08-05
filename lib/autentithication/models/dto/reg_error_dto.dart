part of '../../autentithication_part.dart';

@freezed
class RegErrorDTO with _$RegErrorDTO {
  const factory RegErrorDTO({
    @Default(false) bool dataValid,
    String? displayName,
    String? birthday,
    String? email,
    String? plainPassword,
    String? confirmPassword,
    String? regError,
  }) = _RegErrorDTO;

  factory RegErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$RegErrorDTOFromJson(json);
}
