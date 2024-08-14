part of '../../code_kit.dart';

@freezed
class PhotoListDTO extends PhotosListModel with _$PhotoListDTO {
  const factory PhotoListDTO({
    @JsonKey(
      name: StringConsts.totalItems,
    )
    required int totalItems,
    @JsonKey(
      name: StringConsts.member,
    )
    required List<PhotoDTO> member,
    @JsonKey(
      name: StringConsts.hydraView,
    )
    required HydraViewDTO hydraView,
  }) = _PhotoListDTO;

  factory PhotoListDTO.fromJson(Map<String, dynamic> json) =>
      _$PhotoListDTOFromJson(json);
}
