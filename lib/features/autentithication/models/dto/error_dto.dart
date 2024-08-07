part of '../../autentithication_part.dart';

@freezed
class ErrorDTO with _$ErrorDTO {
  const factory ErrorDTO({
    @JsonKey(name: "hydra:title") required String title,
    @JsonKey(name: "hydra:description") required String description,
  }) = _ErrorDTO;

  factory ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDTOFromJson(json);
}
