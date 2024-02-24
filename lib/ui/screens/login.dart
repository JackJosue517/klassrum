import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/logic/blocs/auth/auth_bloc.dart';
import 'package:klassrum/ui/components/button.dart';
import 'package:klassrum/ui/components/textfield.dart';
import 'package:klassrum/ui/configs/styles.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }

          if (state is AuthSuccess) {
            Navigator.of(context).pushReplacementNamed('/home');
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
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
                    child: Column(
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
                            btnFunction: () {
                              final String username =
                                  _usernameTextController.text.trim();
                              final String password =
                                  _passwordTextController.text.trim();
                              context.read<AuthBloc>().add(AuthLoginRequested(
                                  username: username, password: password));
                            })
                      ],
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
