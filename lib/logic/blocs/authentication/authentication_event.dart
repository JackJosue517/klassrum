part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class LoginUser extends AuthenticationEvent {
  final String username;
  final String password;

  const LoginUser({required this.username, required this.password});
}

class LogoutUser extends AuthenticationEvent {
  const LogoutUser();
}
