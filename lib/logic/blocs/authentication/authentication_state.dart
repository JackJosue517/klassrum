part of 'authentication_bloc.dart';

sealed class AuthenticationState {
  final AppUser user;

  const AuthenticationState({required this.user});
}

final class AuthenticationInitial extends AuthenticationState {
  AuthenticationInitial() : super(user: AppUser.empty);
}

final class AuthenticationLogged extends AuthenticationState {
  AuthenticationLogged({required AppUser user}) : super(user: user);
}

final class AuthenticationLogout extends AuthenticationState {
  AuthenticationLogout() : super(user: AppUser.empty);
}
