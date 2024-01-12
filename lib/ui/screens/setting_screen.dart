import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:klassrum/ui/configs/styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool switchOff = false;

  void onChangeOperation(bool value){
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
        padding: const EdgeInsets.all(8),
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: const Border(bottom: BorderSide(
                color: AppColors.primaryColor,
                width: 1
              ))
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://i.ibb.co/1nfH7xw/imresizer-1704975409967.jpg",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                  radius: 32,
                ),
                const Gap(16),
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        "KELE Bernadin",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      Text("Licence Professionnelle en Genie Logiciel")
                    ],
                  ),
                ),
              ],
            ),

          ),
          const Gap(16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 const Text("Mode d'ecran",
                   style: TextStyle(
                     fontSize: 16
                   ),
                 ),
                SwitchListTile(
                  title: const Text("Sombre"),
                  value: switchOff,
                  activeColor: AppColors.primaryColor,
                  onChanged: onChangeOperation,
                ),
              ],
            ),
              decoration: BoxDecoration(
                  border: const Border(bottom: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1
                  ))
              ),
            ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
            child:Row(
              children: [
                Icon(Icons.logout),
                Gap(8),
                Text("Deconnexion",
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ],
            ),

          )
        ]),
      ),
    );
  }
}
