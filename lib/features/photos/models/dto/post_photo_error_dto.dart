part of '../../photos_part.dart';

@freezed
class PostPhotoErrorDTO extends PostPhotoErrorModel with _$PostPhotoErrorDTO {
  const factory PostPhotoErrorDTO({
    @Default(false) bool isValid,
    @Default(false) bool isPhotoLoaded,
    bool? nameCorrect,
  }) = _PostPhotoErrorDTO;

  factory PostPhotoErrorDTO.fromJson(Map<String, dynamic> json) =>
      _$PostPhotoErrorDTOFromJson(json);
}
