part of '../../autentithication_part.dart';

@freezed
class ErrorDTO with _$ErrorDTO {
  const factory ErrorDTO({
    @JsonKey(
      name: StringConsts.hydraTitle,
    )
    required String title,
    @JsonKey(
      name: StringConsts.hydraDescription,
    )
    required String description,
  }) = _ErrorDTO;

  factory ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDTOFromJson(json);
}
