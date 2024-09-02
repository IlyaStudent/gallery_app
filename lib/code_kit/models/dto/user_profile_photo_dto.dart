part of '../../code_kit.dart';

@freezed
class UserProfilePhotoDTO extends UserProfilePhotoModel
    with _$UserProfilePhotoDTO {
  const factory UserProfilePhotoDTO({
    @JsonKey(name: StringConsts.atSignId) required String userProfilePhoto,
    required int id,
    required String dateCreate,
    required String dateUpdate,
    String? deleted,
  }) = _UserProfilePhotoDTO;

  factory UserProfilePhotoDTO.fromJson(Map<String, dynamic> json) =>
      _$UserProfilePhotoDTOFromJson(json);
}
