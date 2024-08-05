part of '../../autentithication_part.dart';

@freezed
sealed class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.register() = RegisterEvent;
  const factory RegistrationEvent.changeData({
    required String changedFieldName,
    required String changedFieldText,
  }) = ChangeDataEvent;
}
