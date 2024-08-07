part of '../../autentithication_part.dart';

@freezed
class RegistrationErrorDTO with _$RegErrorDTO {
  const factory RegistrationErrorDTO({
    @Default(false) bool dataValid,
    String? displayName,
    String? birthday,
    String? email,
    String? plainPassword,
    String? confirmPassword,
    String? regError,
  }) = _RegErrorDTO;

  factory RegistrationErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$RegErrorDTOFromJson(json);
}
