part of '../../autentithication_part.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'reg_error_dto.g.dart';
// part 'reg_error_dto.freezed.dart';

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
