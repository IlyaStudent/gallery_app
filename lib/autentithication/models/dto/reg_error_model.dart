part 'reg_error_model_g.dart';

class RegErrorModel {
  RegErrorModel({
    this.dataValid = false,
    this.displayName,
    this.birthday,
    this.email,
    this.plainPassword,
    this.confirmPassword,
    this.regError,
  });

  factory RegErrorModel.fromJson(Map<String, dynamic> json) =>
      _$RegErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegErrorModelToJson(this);

  final bool dataValid;
  final String? regError;
  final String? displayName;
  final String? birthday;
  final String? email;
  final String? plainPassword;
  final String? confirmPassword;
}
