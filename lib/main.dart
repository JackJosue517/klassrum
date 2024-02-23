import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klassrum/data/models/AppUser.dart';
import 'package:klassrum/logic/blocs/authentication/authentication_bloc.dart';
import 'package:klassrum/logic/observers/authentication_observer.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/router/app_router.dart';
import 'package:klassrum/ui/screens/home.dart';
import 'package:klassrum/ui/screens/splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  Bloc.observer = const AuthenticationObserver();
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData(
          brightness: Brightness.light,
          primaryColor: AppColors.primaryColor,
        ),
        dark: ThemeData(
          brightness: Brightness.dark,
          primaryColor: AppColors.trueWhiteColor,
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => AuthenticationBloc())
              ],
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Klassrum',
                onGenerateRoute: AppRouter.onGenerateRoute,
                theme: theme,
                darkTheme: darkTheme,
                home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    if (state.user == AppUser.empty) {
                      return const SplashScreen();
                    } else {
                      return const HomeScreen();
                    }
                  },
                ),
              ),
            ));
  }
}
