import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klassrum/data/dataproviders/auth_provider.dart';
import 'package:klassrum/data/repositories/auth_repository.dart';
import 'package:klassrum/logic/blocs/auth/auth_bloc.dart';
import 'package:klassrum/logic/observers/app_bloc_observer.dart';
import 'package:klassrum/logic/observers/authentication_observer.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/router/app_router.dart';
import 'package:klassrum/ui/screens/splash.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path_provider/path_provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  Bloc.observer = const AuthenticationObserver();
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print("FCM TOKEN: $fcmToken");
  //TODO Send token to backend resource
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
        builder: (theme, darkTheme) => MultiRepositoryProvider(
              providers: [
                RepositoryProvider(
                  create: (_) => AuthRepository(AuthDataProvider()),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => AuthBloc(
                      context.read<AuthRepository>(),
                    ),
                  ),
                ],
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Klassrum',
                  onGenerateRoute: AppRouter.onGenerateRoute,
                  theme: theme,
                  darkTheme: darkTheme,
                  home: const SplashScreen(),
                ),
              ),
            ));
  }
}
