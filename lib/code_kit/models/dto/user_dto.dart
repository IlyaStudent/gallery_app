part of '../../code_kit.dart';

@freezed
class UserDTO extends UserModel with _$UserDTO {
  const factory UserDTO({
    String? email,
    String? birthday,
    String? displayName,
    List<String>? roles,
    int? id,
    String? dateCreate,
    String? dateUpdate,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
