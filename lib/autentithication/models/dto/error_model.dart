part 'error_model_g.dart';

class ErrorModel {
  ErrorModel({
    required this.title,
    required this.description,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);

  final String title;
  final String description;
}
