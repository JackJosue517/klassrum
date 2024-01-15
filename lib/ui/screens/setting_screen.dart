import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchOff = false;

  void onChangeOperation(bool value) {
    setState(() {
      switchOff = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //color: Colors.grey[100],
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
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg",
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
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
                  const Row(
                    children: [
                      Icon(Icons.light_mode),
                      Gap(8),
                      Text(
                        "Mode d'écran",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const Gap(8),
                  SwitchListTile(
                    title: const Text("Sombre"),
                    value: switchOff,
                    activeColor: AppColors.primaryColor,
                    onChanged: onChangeOperation,
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
              child: const Row(
                children: [
                  Icon(Icons.logout),
                  Gap(8),
                  Text(
                    "Déconnexion",
                    style: TextStyle(fontSize: 16),
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
