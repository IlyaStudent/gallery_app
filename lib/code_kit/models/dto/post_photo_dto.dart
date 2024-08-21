part of '../../code_kit.dart';

@freezed
class PostPhotoDTO extends PostPhotoModel with _$PostPhotoDTO {
  const factory PostPhotoDTO({
    String? file,
    String? user,
    String? description,
    String? name,
    @JsonKey(
      name: StringConsts.isNewString,
    )
    @Default(true)
    bool isNew,
    @JsonKey(
      name: StringConsts.popular,
    )
    @Default(false)
    bool isPopular,
  }) = _PostPhotoDTO;

  factory PostPhotoDTO.fromJson(Map<String, dynamic> json) =>
      _$PostPhotoDTOFromJson(json);
}
