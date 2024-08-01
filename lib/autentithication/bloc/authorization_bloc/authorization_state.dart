part of '../../autentithication_part.dart';

sealed class AuthorizationState extends Equatable {
  const AuthorizationState();

  @override
  List<Object?> get props => [];
}

final class AuthorizationInitial extends AuthorizationState {
  final String? erorMessage;

  const AuthorizationInitial({this.erorMessage});

  @override
  List<Object?> get props => [erorMessage];
}

final class AuthLoadingState extends AuthorizationState {}

final class AuthorizedState extends AuthorizationState {}
