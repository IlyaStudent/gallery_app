part of '../../code_kit.dart';

@freezed
class UserUpdateDTO extends UserUpdateModel with _$UserUpdateDTO {
  const factory UserUpdateDTO({
    String? email,
    String? birthday,
    String? displayName,
    List<String>? roles,
    int? id,
    String? userProfilePhoto,
    String? dateCreate,
    String? dateUpdate,
    String? phone,
    String? deleted,
  }) = _UserUpdateDTO;

  factory UserUpdateDTO.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateDTOFromJson(json);
}
