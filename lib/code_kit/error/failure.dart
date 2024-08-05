part of '../code_kit.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final String errorMessage;

  ServerFailure({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
