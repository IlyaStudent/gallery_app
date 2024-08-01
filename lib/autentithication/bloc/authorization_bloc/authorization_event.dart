part of '../../autentithication_part.dart';

sealed class AuthorizationEvent extends Equatable {
  const AuthorizationEvent();

  @override
  List<Object> get props => [];
}

final class AuthorizeEvent extends AuthorizationEvent {
  final LoginModel loginModel;

  const AuthorizeEvent({required this.loginModel});

  @override
  List<Object> get props => [loginModel];
}
