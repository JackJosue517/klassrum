import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/logic/blocs/authentication/authentication_bloc.dart';
import 'package:klassrum/ui/components/button.dart';
import 'package:klassrum/ui/components/textfield.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:klassrum/ui/screens/home.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final authBloc = context.read<AuthenticationBloc>();

    void logUser() {
      setState(() {
        _isLoading = true;
      });
      // Validate returns true if the form is valid, or false otherwise.
      if (_formKey.currentState!.validate()) {
        // If the form is valid,
        final String username = _usernameTextController.text;
        final String password = _passwordTextController.text;
        print('$username@$password');

        authBloc.add(LoginUser(username: username, password: password));
      }

      setState(() {
        _isLoading = false;
      });
    }

    return Scaffold(
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.user.uid.isNotEmpty) {
            return const HomeScreen();
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10)
                  .copyWith(top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        const Gap(48),
                        SvgPicture.asset(
                          "assets/svg/login-amico.svg",
                          height: 250,
                        ),
                        const Gap(24),
                        Text('Connexion à Klassrum',
                            textAlign: TextAlign.center,
                            style: AppText.headline2.copyWith(
                              color: AppColors.primaryColor,
                            )),
                        const Gap(8),
                        Text(
                          'Entrez vos données de connexion à la plateforme d\' inscription à l\' UL pour plus de fonctionnalité',
                          textAlign: TextAlign.center,
                          style: AppText.headline5,
                        ),
                      ],
                    ),
                  ),
                  const Gap(60),
                  Form(
                    key: _formKey,
                    child: !_isLoading
                        ? Column(
                            children: [
                              //champs d'identifiant

                              AppTextField(
                                  icon: LineIcons.userAlt,
                                  labelText: "Identifiant",
                                  fieldController: _usernameTextController),
                              const Gap(24),
                              AppTextField(
                                  icon: LineIcons.key,
                                  isPasswordField: true,
                                  labelText: "Mot de passe",
                                  fieldController: _passwordTextController),
                              const Gap(40),
                              AppButton(
                                btnText: "Se connecter",
                                btnFunction: logUser,
                              )
                            ],
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _usernameTextController.dispose();
    _passwordTextController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.dispose();
  }
}
