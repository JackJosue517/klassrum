import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:klassrum/data/models/user_model.dart';
import 'package:klassrum/data/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<AuthLoginRequested>(_onAuthLoginRequested);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
  }

  void _onAuthLoginRequested(
      AuthLoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final username = event.username;
      final password = event.password;

      if (password.length < 6) {
        return emit(
            const AuthFailure('Mot de passe doit dépasser 06 caractères !'));
      }

      final UserModel user =
          await authRepository.getAppUser(event.username, event.password);
      return emit(AuthSuccess(userModel: user));
    } catch (e) {
      return emit(AuthFailure(e.toString()));
    }
  }

  void _onAuthLogoutRequested(
      AuthLogoutRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await Future.delayed(const Duration(seconds: 1), () {
        return emit(AuthInitial());
      });
    } catch (e) {
      return emit(
        AuthFailure(
          e.toString(),
        ),
      );
    }
  }
}
