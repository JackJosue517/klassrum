part of 'auth_bloc.dart';

@immutable
sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final UserModel userModel;

  const AuthSuccess({required this.userModel});
}

final class AuthFailure extends AuthState {
  final String error;

  const AuthFailure(this.error);
}

final class AuthLoading extends AuthState {}
