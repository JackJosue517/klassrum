import 'package:flutter/material.dart';
import 'package:klassrum/ui/configs/styles.dart';
import 'package:line_icons/line_icons.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({super.key});

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  final List<String> recentItems = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Récents', style: AppText.headline5),
          SingleChildScrollView(
              child: Row(children: [
            ListView.separated(
                itemBuilder: (context, index) => Container(
                    width: 110,
                    height: 110,
                    color: AppColors.primaryColor,
                    child: Center(child: Text('Item $index'))),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 8.0),
                itemCount: recentItems.length),
          ])),
          const SizedBox(
            height: 12.0,
          ),
          Text('Catégories', style: AppText.headline5),
          SingleChildScrollView(
              child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      width: 90,
                      height: 90,
                      color: AppColors.primaryColor.withOpacity(0.3),
                      child: Row(children: [
                        const Icon(LineIcons.imageFileAlt),
                        Column(
                          children: [
                            Text('Images', style: AppText.headline5),
                            Text('02 Fichiers', style: AppText.headline6),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      color: AppColors.primaryColor.withOpacity(0.3),
                      child: Row(children: [
                        const Icon(LineIcons.imageFileAlt),
                        Column(
                          children: [
                            Text('Vidéos', style: AppText.headline5),
                            Text('05 Fichiers', style: AppText.headline6),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),    
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      width: 90,
                      height: 90,
                      color: AppColors.primaryColor.withOpacity(0.3),
                      child: Row(children: [
                        const Icon(LineIcons.imageFileAlt),
                        Column(
                          children: [
                            Text('Audio', style: AppText.headline5),
                            Text('01 Fichier', style: AppText.headline6),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    flex: 1,
                    child: Container(
                      color: AppColors.primaryColor.withOpacity(0.3),
                      child: Row(children: [
                        const Icon(LineIcons.imageFileAlt),
                        Column(
                          children: [
                            Text('Documents & autres', style: AppText.headline5),
                            Text('Vide', style: AppText.headline6),
                          ],
                        )
                      ]),
                    ),
                  ),
                ),    
              ]),
            ],
          )),
          const SizedBox(
            height: 12.0,
          ),
          Text('Collections', style: AppText.headline5),
          SingleChildScrollView(
              child: Row(children: [
            Card(
                child: ListTile(
                  leading: Icon(LineIcons.heart),
                  title: Text('Favoris'),
                  trailing: Icon(LineIcons.angleRight)
                ),
            ),
            Card(
                child: ListTile(
                  leading: Icon(LineIcons.wix),
                  title: Text('Canaux des UEs'),
                  trailing: Icon(LineIcons.angleRight)
                ),
            ),
          ])),
        ])));
  }
}
