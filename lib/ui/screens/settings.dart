import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/components/go_back_button.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:avatars/avatars.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchOff = false;

  void _onChangeOperation(bool value) {
    setState(() {
      switchOff = value;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      color: Colors.white,
                    ),
                    //child: Avatar(useCache: true, name: 'AYAH Yawavi Etsiam')
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/img/default_profil.jpg'),
                    ),
                ),
                  const Gap(24),
                  const Column(
                    children: [
                      Text("AYAH Yawavi Etsiam",
                        style: TextStyle(fontSize: 17,
                        fontWeight: FontWeight.bold),
                      ),
                      Gap(8),
                      Text("Licence professionnelle en genie lociciel",
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.w200),)
                    ],
                  ),
                ],
              ),
            ),
            const Gap(8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(8),
                  SwitchListTile(
                    title: Text("Apparence", style: AppText.headline5),
                    subtitle: Text('Activer ou désactiver le thème sombre', style: AppText.headline6),
                    value: switchOff,
                    activeColor: AppColors.primaryColor,
                    onChanged: _onChangeOperation,
                  ),
                ],
              ),
            ),
            const Gap(16),
            Container(
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
            const Gap(16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.logout),
                  const Gap(8),
                  Text(
                    "Déconnexion",
                    style: AppText.headline6.copyWith(color: AppColors.redColor),
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
