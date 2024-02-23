import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/logic/blocs/authentication/authentication_bloc.dart';
import 'package:klassrum/ui/components/go_back_button.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchOff = false;
  String text = "Claire";

  void _onChangeOperation(bool value) {
    setState(() {
      switchOff = value;
      AdaptiveTheme.of(context).setThemeMode(
        switchOff ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light,
      );
      text = (value == false) ? "claire" : "sombre";
    });
  }

  @override
  Widget build(BuildContext context) {
    final authBloc = context.watch<AuthenticationBloc>();
    final user = authBloc.state.user;

    return Scaffold(
      appBar: AppBar(
        leading: const GoBackButton(),
        title: const Text("Paramètres"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    //child: Avatar(useCache: true, name: 'AYAH Yawavi Etsiam')
                    child: const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/img/default_profil.jpg'),
                    ),
                  ),
                  const Gap(24),
                  Column(
                    children: [
                      Text(
                        user.username,
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const Gap(8),
                      Text(
                        user.uid,
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Gap(8),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.cardColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(8),
                  SwitchListTile(
                    title: Text("Thème", style: AppText.headline5),
                    subtitle: Text(text, style: AppText.headline6),
                    value: switchOff,
                    activeColor: AppColors.primaryColor,
                    onChanged: _onChangeOperation,
                  ),
                ],
              ),
            ),
            const Gap(16),
            /*Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.home),
                  const Gap(8),
                  Text(
                    "Signaler un problème",
                    style: AppText.headline6,
                  ),
                ],
              ),
            ),
            const Gap(16),*/
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.logout),
                  const Gap(8),
                  GestureDetector(
                    onTap: () => authBloc.add(LogoutUser()),
                    child: Text(
                      "Déconnexion",
                      style:
                          AppText.headline6.copyWith(color: AppColors.redColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
