part of '../../code_kit.dart';

@freezed
class PhotoDTO extends PhotoModel with _$PhotoDTO {
  const factory PhotoDTO({
    required FileDTO file,
    @JsonKey(
      name: StringConsts.isNewString,
    )
    required bool isNew,
    required bool popular,
    required int id,
    UserDTO? user,
    String? description,
    String? name,
  }) = _PhotoDTO;

  factory PhotoDTO.fromJson(Map<String, dynamic> json) =>
      _$PhotoDTOFromJson(json);
}
