part of '../../autentithication_part.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'reg_dto.g.dart';
// part 'reg_dto.freezed.dart';

@freezed
class RegistrationDTO with _$RegDTO {
  const factory RegistrationDTO({
    String? plainPassword,
    String? email,
    String? birthday,
    String? displayName,
    String? confirmPassword,
  }) = _RegDTO;

  factory RegistrationDTO.fromJson(Map<String, dynamic> json) =>
      _$RegDTOFromJson(json);
}
