import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:klassrum/data/models/AppUser.dart';
import 'package:klassrum/data/repositories/authentication_repository.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<LoginUser>(_loginUser);
    on<LogoutUser>(_logoutUser);
  }

  AuthenticationRepository authenticationRepository =
      AuthenticationRepository();

  FutureOr<void> _loginUser(
      LoginUser event, Emitter<AuthenticationState> emit) async {
    final AppUser user = await authenticationRepository.getAppUser(
        event.username, event.password);
    state.user.copyModel(user: user);
    emit(AuthenticationLogged(user: user));
  }

  FutureOr<void> _logoutUser(
      LogoutUser event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLogout());
  }

  @override
  void onChange(Change<AuthenticationState> change) {
    super.onChange(change);
    print(change);
  }
}