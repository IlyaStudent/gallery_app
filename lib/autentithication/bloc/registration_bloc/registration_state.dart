part of '../../autentithication_part.dart';

sealed class RegistrationState extends Equatable {
  const RegistrationState();

  @override
  List<Object?> get props => [];
}

final class RegDataChecking extends RegistrationState {
  final RegErrorModel regErrorModel;

  final RegModel regModel;

  const RegDataChecking({
    required this.regErrorModel,
    required this.regModel,
  });

  @override
  List<Object?> get props => [
        regModel,
        regErrorModel,
      ];
}

final class RegLoadingState extends RegistrationState {}

final class RegisteredState extends RegistrationState {}
