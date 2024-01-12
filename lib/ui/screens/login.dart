import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/components/default_button.dart';
import 'package:klassrum/ui/components/default_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final passwordFieldController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24)
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
                      "assets/svg/login-amigo.svg",
                      height: 150,
                    ),
                    const Gap(24),
                    const Text(
                      'Connexion à Klassrum',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1F41BB),
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const Gap(26),
                    const Text(
                      'Connectez-vous à votre compte Klassrum pour accéder à toutes les fonctionnalités.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(60),
              Column(
                children: [
                  //champs d'identifiant

                  DefaultTextField(
                      labelText: "Identifiant",
                      fieldController: passwordFieldController),

                  const Gap(24),
                  //champs de password
                  DefaultTextField(
                      isPasswordField: true,
                      labelText: "Password",
                      fieldController: passwordFieldController),

                  const Gap(40),

                  DefaultButton(
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
}
