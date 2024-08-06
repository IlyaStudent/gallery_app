// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'user_dto_g.dart';
// part 'user_dto_freezed.dart';

part of '../../code_kit.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required String email,
    required String birthday,
    required String displayName,
    required List<String> roles,
    required int id,
    required String dateCreate,
    required String dateUpdate,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
