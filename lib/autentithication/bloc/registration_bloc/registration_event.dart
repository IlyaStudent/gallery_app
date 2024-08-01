part of '../../autentithication_part.dart';

sealed class RegistrationEvent extends Equatable {
  const RegistrationEvent();

  @override
  List<Object?> get props => [];
}

final class RegisterEvent extends RegistrationEvent {}

final class ChangeRegDataEvent extends RegistrationEvent {
  final String changedFieldName;
  final String changedFieldText;

  const ChangeRegDataEvent({
    required this.changedFieldName,
    required this.changedFieldText,
  });

  @override
  List<Object?> get props => [
        changedFieldName,
        changedFieldText,
      ];
}
