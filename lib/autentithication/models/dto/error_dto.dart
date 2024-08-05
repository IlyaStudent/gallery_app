part of '../../autentithication_part.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'error_dto.g.dart';
// part 'error_dto.freezed.dart';

@freezed
class ErrorDTO with _$ErrorDTO {
  const factory ErrorDTO({
    required String title,
    required String description,
  }) = _ErrorDTO;

  factory ErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$ErrorDTOFromJson(json);
}
