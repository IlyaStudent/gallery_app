part of '../../autentithication_part.dart';

@freezed
class ErrorDTO with _$ErrorDTO {
  const factory ErrorDTO({
    required String title,
    required String description,
  }) = _ErrorDTO;

  factory ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDTOFromJson(json);
}
