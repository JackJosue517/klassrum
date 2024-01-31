import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
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
  @override
  Widget build(BuildContext context) {
    final passwordFieldController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
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
              Column(
                children: [
                  //champs d'identifiant

                  AppTextField(
                      icon: LineIcons.userAlt,
                      labelText: "Identifiant",
                      fieldController: passwordFieldController),
                  const Gap(24),
                  AppTextField(
                      icon: LineIcons.key,
                      isPasswordField: true,
                      labelText: "Mot de passe",
                      fieldController: passwordFieldController),
                  const Gap(40),
                  AppButton(
                    btnText: "Se connecter",
                    btnFunction: () =>
                        Navigator.of(context).pushReplacementNamed('/home'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.dispose();
  }
}
