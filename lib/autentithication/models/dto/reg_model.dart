part 'reg_model_g.dart';

class RegModel {
  const RegModel({
    this.plainPassword,
    this.email,
    this.birthday,
    this.displayName,
    this.confirmPassword,
  });

  factory RegModel.fromJson(Map<String, dynamic> json) =>
      _$RegModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegModelToJson(this);

  final String? email;
  final String? birthday;
  final String? displayName;
  final String? plainPassword;
  final String? confirmPassword;
}
