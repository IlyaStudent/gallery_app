part of '../../code_kit.dart';

@freezed
class HydraViewDTO extends HydraViewModel with _$HydraViewDTO {
  const factory HydraViewDTO({
    @JsonKey(
      name: StringConsts.atSignId,
    )
    required String id,
    @JsonKey(
      name: StringConsts.atSignType,
    )
    required String type,
    @JsonKey(
      name: StringConsts.hydraFirst,
    )
    String? first,
    @JsonKey(
      name: StringConsts.hydraLast,
    )
    String? last,
    @JsonKey(
      name: StringConsts.hydraPrevious,
    )
    String? previous,
    @JsonKey(
      name: StringConsts.hydraNext,
    )
    String? next,
  }) = _HydraViewDTO;

  factory HydraViewDTO.fromJson(Map<String, dynamic> json) =>
      _$HydraViewDTOFromJson(json);
}
